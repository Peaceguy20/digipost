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

public partial class Lost : System.Web.UI.Page
{
    DateTime sdate, edate;
    Random rn = new Random();
    protected void Page_Load(object sender, EventArgs e)
    {
        cnumber.Text= Session["AcNo"].ToString();
        txtaccountType.Text= Session["AcType"].ToString();
        txtAmount.Text = Session["Amount"].ToString();
       
        sdate = DateTime.Today;
        edate = DateTime.Today.AddYears(5);
        Startdate.Text=DateTime.Now.ToShortDateString();
        endDate.Text=edate.ToShortDateString();
        txtAmount.Text = Session["Amount"].ToString();
        txtMobileNo.Text= Session["Mno"].ToString();
        txtName.Text= Session["fname"].ToString();
        txtRate.Text = "7.8";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd;

        string a = "INSERT INTO AccountInfo values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9)";
        cmd = new SqlCommand(a, con);
        cmd.Parameters.AddWithValue("@p1", cnumber.Text);
        cmd.Parameters.AddWithValue("@p2", Startdate.Text);
        cmd.Parameters.AddWithValue("@p3", endDate.Text);
        cmd.Parameters.AddWithValue("@p4", txtaccountType.Text);
        cmd.Parameters.AddWithValue("@p5", txtName.Text);
        cmd.Parameters.AddWithValue("@p6", txtMobileNo.Text);
        cmd.Parameters.AddWithValue("@p7", txtRate.Text);
        cmd.Parameters.AddWithValue("@p8", txtAmount.Text);
        cmd.Parameters.AddWithValue("@p9", "Active");

        cmd.ExecuteNonQuery();
        con.Close();
        callbalance();
        CallIntestInfo();
        Response.Redirect("paymentconfirm.aspx");

    }

    private void CallIntestInfo()
    {
        Double iamount = Convert.ToDouble(txtAmount.Text);
        
        Double intrestcharge = Convert.ToDouble(txtRate.Text);
        Double intrest = ((iamount * intrestcharge * 1) / 100) / 12;


        while (sdate <= edate)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
            con.Open();
            SqlCommand cmd;
            string a = "INSERT INTO IntrestInfo values(@p1,@p2,@p3,@p4,@p5,@p6,@p7)";
            cmd = new SqlCommand(a, con);
            cmd.Parameters.AddWithValue("@p1", cnumber.Text);
            cmd.Parameters.AddWithValue("@p2", txtName.Text);
            cmd.Parameters.AddWithValue("@p3", txtMobileNo.Text);
            cmd.Parameters.AddWithValue("@p4", sdate.ToString("MMMM"));
            cmd.Parameters.AddWithValue("@p5", sdate.ToString("yyyy"));
            cmd.Parameters.AddWithValue("@p6", intrest.ToString());
           
            cmd.Parameters.AddWithValue("@p7", "notpaid");
          
            cmd.ExecuteNonQuery();
           
            sdate = sdate.AddMonths(1);

        }
    }

    private void callbalance()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd;

        string a = "INSERT INTO AccountBalanceInfo values(@p1,@p2,@p3)";
        cmd = new SqlCommand(a, con);
        cmd.Parameters.AddWithValue("@p1", cnumber.Text);
        
        cmd.Parameters.AddWithValue("@p2", txtMobileNo.Text);
       
        cmd.Parameters.AddWithValue("@p3", "0");

        cmd.ExecuteNonQuery();
        con.Close();
    }


  
}