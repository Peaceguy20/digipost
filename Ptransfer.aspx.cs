using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Ptransfer : System.Web.UI.Page

{
    Random rn = new Random();
    Int32 samount, damount, newamount ,bamount, famount=0 ,tamount;
    protected void Page_Load(object sender, EventArgs e)
    {
        Rid.Text = rn.Next().ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        tamount = Convert.ToInt32(transferamount.Text);
        getbalances();

        getbalances2();

        newamount = samount + tamount;

        famount = bamount - tamount;

        lbl.Text = bamount.ToString() + " " + famount.ToString() + " " + samount.ToString() + " " + Session["scardno"].ToString();

        if (famount < 0)
        {

            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>confirm('Sorry Transcation fail Not sufficient Balance  ')</script>");
        }

        else
        {

            update1();
            update2();


        }


    }


    void getbalances()
{
      SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select  EMcardno ,BalanceAmount from EMCardInfo where  EMcardno=@cardno ", con);
        cmd.Parameters.AddWithValue("@cardno", cardno.Text);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();



        da.Fill(dt);



        if (dt.Rows.Count > 0)
        {

            Session["scardno"] = dt.Rows[0]["Emcardno"];
            Session["sBalanceAmount"] = dt.Rows[0]["BalanceAmount"];

            bamount = Convert.ToInt32(Session["sBalanceAmount"].ToString());

        }

        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>confirm('Invalid Card Number Please Verify Emcardnumber')</script>");

        }

}


    void getbalances2()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select  EMcardno ,BalanceAmount from EMCardInfo where  EMcardno=@cardno1 ", con);
        cmd.Parameters.AddWithValue("@cardno1", tvcard.Text);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();



        da.Fill(dt);



        if (dt.Rows.Count > 0)
        {

            Session["rcardno"] = dt.Rows[0]["Emcardno"];
            Session["rBalanceAmount"] = dt.Rows[0]["BalanceAmount"];

            samount = Convert.ToInt32(Session["rBalanceAmount"].ToString());

        }

        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>confirm('Invalid Card Number Please Verify Emcardnumber')</script>");

        }


    }


    void update1()
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("update EmCardInfo set BalanceAmount=@newBalnce1   where  EMcardno=" + Session["scardno"].ToString(), con);
        cmd.Parameters.AddWithValue("@newBalnce1",famount);
        
        cmd.ExecuteNonQuery();
       



    }


    void update2()
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("update EmCardInfo set BalanceAmount=@newBalnce2   where  EMcardno=" + Session["rcardno"].ToString(), con);
        cmd.Parameters.AddWithValue("@newBalnce2", newamount);

        cmd.ExecuteNonQuery();

        cardno.Text = "";
        transferamount.Text = "";
        tvcard.Text = "";
       

        lbl.Text = "Card Number " + Session["rcardno"].ToString() + " is sucessfully Recharge With Transfer Amount " + tamount.ToString();



    }




}