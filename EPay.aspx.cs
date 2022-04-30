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

public partial class MobilePay : System.Web.UI.Page
{
    Random Billno = new Random();
    String cardnumber;
    Int32 samount, damount, newamount, bamount, famount = 0, tamount;

    protected void Page_Load(object sender, EventArgs e)
    {
        cnumber.Text = Billno.Next().ToString();
        date.Text = DateTime.Now.ToShortDateString();
       
        TextBox3.Text = Session["Cardno"].ToString();
        TextBox2.Text = Session["fname"].ToString();

        TextBox6.Text = Session["email"].ToString();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bamount = Convert.ToInt32(Session["Bamount"].ToString());
       cardnumber = cnumber.Text;
        newamount = Convert.ToInt32(TextBox1.Text);
        if (bamount < newamount)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Insufficient Balance IN EM Card ')</script>");
       
        }
        else
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
            con.Open();
            SqlCommand cmd;

            string a = "INSERT INTO Epay(TransectionNo,Date,Name,Email,EmCardNo,BillType,CIDNO,Amount,Status) values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9)";
            cmd = new SqlCommand(a, con);
            cmd.Parameters.AddWithValue("@p1", cardnumber);
            cmd.Parameters.AddWithValue("@p2", date.Text);
            cmd.Parameters.AddWithValue("@p3", TextBox2.Text);
            cmd.Parameters.AddWithValue("@p4", TextBox6.Text);
            cmd.Parameters.AddWithValue("@p5", TextBox3.Text);
            cmd.Parameters.AddWithValue("@p6", DropDownList1.SelectedItem.ToString());

            cmd.Parameters.AddWithValue("@p7", TextBox8.Text);
            cmd.Parameters.AddWithValue("@p8", TextBox1.Text);
            cmd.Parameters.AddWithValue("@p9", "Recharge Sucess");


            cmd.ExecuteNonQuery();
            famount = bamount - newamount;
            traninfo();
            update1();
            Label1.Text = " Your Bill  is  Paid  With Amount " + TextBox1.Text;
            cnumber.Text = "";

            date.Text = "";

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";

            TextBox6.Text = "";

            
        }
    }
    public void traninfo()
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd;

        string a = "INSERT INTO TransectionInfo(TransectionId,Date,EmCardNo,Name,Email,TransectionType,Amount) values(@p1,@p2,@p3,@p4,@p5,@p6,@p7)";
        cmd = new SqlCommand(a, con);
        cmd.Parameters.AddWithValue("@p1", cardnumber);
        cmd.Parameters.AddWithValue("@p2", date.Text);
        cmd.Parameters.AddWithValue("@p3", TextBox3.Text);
        cmd.Parameters.AddWithValue("@p4", TextBox2.Text);
        cmd.Parameters.AddWithValue("@p5", TextBox6.Text);
        cmd.Parameters.AddWithValue("@p6","Electricity Payment");

  
        cmd.Parameters.AddWithValue("@p7", TextBox1.Text);
      


        cmd.ExecuteNonQuery();

    }

    void update1()
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("update EmCardInfo set BalanceAmount=@newBalnce1   where  EMcardno=" + TextBox3.Text, con);
        cmd.Parameters.AddWithValue("@newBalnce1", famount.ToString());

        cmd.ExecuteNonQuery();




    }
    
    }
