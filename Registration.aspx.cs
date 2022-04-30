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

public partial class Registration : System.Web.UI.Page
{
    String pancard, AadharCard;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string str = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/UserImage/" + str));
            pancard = "~/UserImage/" + str.ToString();

        }

        if (FileUpload2.HasFile)
        {
            string str2 = FileUpload2.FileName;
            FileUpload2.PostedFile.SaveAs(Server.MapPath("~/UserImage/" + str2));
            AadharCard = "~/UserImage/" + str2.ToString();

        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd;

        string a = "INSERT INTO UserInfo values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9,@p10,@p11,@p12,@p13)";
        cmd = new SqlCommand(a, con);
        cmd.Parameters.AddWithValue("@p1", txtName.Text);
        cmd.Parameters.AddWithValue("@p2",txtDob.Text );
        cmd.Parameters.AddWithValue("@p3", txtEmail.Text);
        cmd.Parameters.AddWithValue("@p4", txtPassword.Text);
        cmd.Parameters.AddWithValue("@p5", rbtnListGender.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@p6", txtMobile.Text);
        cmd.Parameters.AddWithValue("@p7", txtCountry.Text);
        cmd.Parameters.AddWithValue("@p8", txtCity.Text);
        cmd.Parameters.AddWithValue("@p9", txtAddress.Text);
        cmd.Parameters.AddWithValue("@p10", txtPin.Text);
        cmd.Parameters.AddWithValue("@p11", pancard);
        cmd.Parameters.AddWithValue("@p12", AadharCard);
        cmd.Parameters.AddWithValue("@p13", "0");
        cmd.ExecuteNonQuery();
        con.Close();
        txtName.Text = "";
        txtEmail.Text = "";
        txtPassword.Text = "";
        txtMobile.Text = "";
        txtCountry.Text = "";
        txtCity.Text = "";
        txtAddress.Text = "";
        txtPin.Text = "";
        lblMessage.Visible = true;

        lblMessage.Text = "Registration Request Sent Sucessfull  ";
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtEmail.Text = "";
        txtPassword.Text = "";
        txtMobile.Text = "";
        txtCountry.Text = "";
        txtCity.Text = "";
        txtAddress.Text = "";


    }
}