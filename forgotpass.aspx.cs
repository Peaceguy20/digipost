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

public partial class Login1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from UserInfo where  Email=@username and Password=@password and SecurePin=@pin and Status=@p4", con);
        cmd.Parameters.AddWithValue("@username", Email1.Text);
        cmd.Parameters.AddWithValue("@password", password.Text);
        cmd.Parameters.AddWithValue("@pin", pin.Text);
        cmd.Parameters.AddWithValue("@p4", "Active");
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();



        da.Fill(dt);

        if (Email1.Text == "admin" && password.Text == "admin")
        {
            Session["fname"] = "Admin";
            Response.Redirect("Admin.aspx");
        }



        else if (dt.Rows.Count > 0)
        {
            Session["email"] = dt.Rows[0]["Email"];
            getinfo();
            Session["fname"] = dt.Rows[0]["Fullname"];

            
           
            Response.Redirect("User.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password Or Account in Not activated ')</script>");
        }
    }

    public void getinfo()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from EMcardInfo where  Email=@username ", con);
        cmd.Parameters.AddWithValue("@username", Email1.Text);
       
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();



        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {

            Session["Cardno"] = dt.Rows[0]["EMcardno"];

            Session["Bamount"] = dt.Rows[0]["BalanceAmount"];
          
        }


    }

    protected void Button1_Click1(object sender, EventArgs e)
    {

    }
}