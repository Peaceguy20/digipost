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

public partial class ViewT : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd;
        Double Bamount = 0, NewBal = 0;
        string d = "Select BalanceAmount from AccountBalanceInfo where AccountNo=@p1";

        cmd = new SqlCommand(d, con);
        cmd.Parameters.AddWithValue("@p1", Session["ACNO"].ToString());

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Label1.Text = dt.Rows[0]["BalanceAmount"].ToString();
        }
        else
            {
            Label1.Text = "0";

        }

    }
}