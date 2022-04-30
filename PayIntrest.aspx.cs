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

public partial class UserHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DateTime dt;
        dt = DateTime.Today;
        Session["Month"] = dt.ToString("MMMM");
        Session["Year"] = dt.ToString("yyyy");


    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Random r = new Random();

        string hname = "POST";



        string year = "2022";

      
        GridViewRow row = GridView1.SelectedRow;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd;
        string a = "insert into IntrestPaidInfo values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9)";

        cmd = new SqlCommand(a, con);
        cmd.Parameters.AddWithValue("@p1", row.Cells[2].Text.ToString());
        cmd.Parameters.AddWithValue("@p2", row.Cells[3].Text.ToString());
        cmd.Parameters.AddWithValue("@p3", row.Cells[4].Text.ToString());


        cmd.Parameters.AddWithValue("@p4", DateTime.Now.ToString());

        cmd.Parameters.AddWithValue("@p5", row.Cells[5].Text.ToString());
        cmd.Parameters.AddWithValue("@p6", row.Cells[6].Text.ToString());
        cmd.Parameters.AddWithValue("@p7", row.Cells[7].Text.ToString());
        cmd.Parameters.AddWithValue("@p8", "Payment Success");

        cmd.Parameters.AddWithValue("@p9", "POSTEMP123");
       
        cmd.ExecuteNonQuery();

        string b = "insert into ClientPostTransactionInfo values(@p1,@p2,@p3,@p4,@p5,@p6)";

        cmd = new SqlCommand(b, con);
        cmd.Parameters.AddWithValue("@p1", row.Cells[2].Text.ToString());
        cmd.Parameters.AddWithValue("@p2", row.Cells[3].Text.ToString());
        cmd.Parameters.AddWithValue("@p3", row.Cells[4].Text.ToString());


        cmd.Parameters.AddWithValue("@p4", DateTime.Now.ToString());

        cmd.Parameters.AddWithValue("@p5","+"+ row.Cells[7].Text.ToString());
        cmd.Parameters.AddWithValue("@p6", "CR");
        

        cmd.ExecuteNonQuery();
        string c = "update IntrestInfo set Status=@p2 where RId=@p1";

        cmd = new SqlCommand(c, con);
        cmd.Parameters.AddWithValue("@p1", row.Cells[1].Text.ToString());
        cmd.Parameters.AddWithValue("@p2", "Paid");
        cmd.ExecuteNonQuery();

        Double Bamount = 0,NewBal=0;
        string d = "Select BalanceAmount from AccountBalanceInfo where AccountNo=@p1";

        cmd = new SqlCommand(d, con);
        cmd.Parameters.AddWithValue("@p1", row.Cells[2].Text.ToString());

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Bamount = Convert.ToDouble(dt.Rows[0]["BalanceAmount"]);
        }
            string f = "update AccountBalanceInfo set BalanceAmount=@p2 where AccountNo=@p1";
        NewBal = Bamount + Convert.ToDouble(row.Cells[7].Text);
        cmd = new SqlCommand(f, con);
        cmd.Parameters.AddWithValue("@p1", row.Cells[2].Text.ToString());
        cmd.Parameters.AddWithValue("@p2", NewBal);
        cmd.ExecuteNonQuery();
        Response.Redirect("PayIntrest.aspx");
    }

    
}