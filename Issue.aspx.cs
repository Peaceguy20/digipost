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

public partial class Issue : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from RequestNewCard where RequestId =@username", con);
        cmd.Parameters.AddWithValue("@username", DropDownList1.SelectedItem.ToString());

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["Email"] = dt.Rows[0]["Email"];
            Session["fname"] = dt.Rows[0]["Fullname"];

            Session["Address"] = dt.Rows[0]["FullAddress"];
            Session["City"] = dt.Rows[0]["City"];
                Session["Cotact"] = dt.Rows[0]["ContactNo"];

        }

fname.Text= Session["fname"].ToString();
        fulladdress.Text= Session["Address"].ToString();
        email.Text=Session["Email"].ToString();
        city.Text= Session["City"].ToString();
        cn.Text=   Session["Cotact"].ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd;

        string a = "INSERT INTO EMCardInfo (EMcardno,ValidFrom,ExpiryDate,CardType,Name,Email,Address,City,ContactNo,CardStatus,BalanceAmount) values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9,@p10,@p11)";
        cmd = new SqlCommand(a, con);
        cmd.Parameters.AddWithValue("@p1",   cardn.Text);
        cmd.Parameters.AddWithValue("@p2", TextBox1.Text );
        cmd.Parameters.AddWithValue("@p3",  TextBox2.Text);
        cmd.Parameters.AddWithValue("@p4", ctype.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@p5", fname.Text);
        cmd.Parameters.AddWithValue("@p6",  email.Text);
        cmd.Parameters.AddWithValue("@p7", fulladdress.Text);
        cmd.Parameters.AddWithValue("@p8", city.Text);
        cmd.Parameters.AddWithValue("@p9",  cn.Text);
        cmd.Parameters.AddWithValue("@p10", "Active");
         cmd.Parameters.AddWithValue("@p11", TextBox3.Text);
        cmd.ExecuteNonQuery();
        con.Close();
       
        fname.Text="";
            email.Text= "";
                fulladdress.Text= "";
                     city.Text= "";
                         cn.Text= "";
                             cardn.Text= "";
                            
                             TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        lbl.Text = "Ewallet Card  Has Been Issued";
    }
}