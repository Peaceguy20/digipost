﻿using System;
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

public partial class confirmenquiry : System.Web.UI.Page
{
    string id;
    SqlConnection con;
    SqlCommand cmd;
  Int64 currentamount, topupamount, newamount;
    protected void Page_Load(object sender, EventArgs e)
    {


        name.Text = Session["fname"].ToString();
        Cname.Text = Session["fname"].ToString();

        mno.Text = Session["Mno"].ToString();
        Random r = new Random();

          string hname = "POST";



          string year = "2022";

          Tid.Text = hname + year + r.Next().ToString();
      
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from AccountBalanceInfo where  MobileNo=@username  ", con);
        cmd.Parameters.AddWithValue("@username", Session["Mno"]);
      
       
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();



        da.Fill(dt);

        if (dt.Rows.Count>0)
        {

            amount.Text= dt.Rows[0]["BalanceAmount"].ToString();

            currentamount = Convert.ToInt64(dt.Rows[0]["BalanceAmount"]);
        }



    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
     



             

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd;
        string a = "insert into TransectionInfo values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9)";

        cmd = new SqlCommand(a, con);
        cmd.Parameters.AddWithValue("@p1",Tid.Text );
        cmd.Parameters.AddWithValue("@p2",DateTime.Now.ToString() );
        cmd.Parameters.AddWithValue("@p3", Cname.Text);
       

        cmd.Parameters.AddWithValue("@p4",name.Text );
     
        cmd.Parameters.AddWithValue("@p5", mno.Text);
        cmd.Parameters.AddWithValue("@p6",bankname.SelectedValue.ToString() );
        cmd.Parameters.AddWithValue("@p7", cardno.Text);
        
             cmd.Parameters.AddWithValue("@p8", "-"+amount.Text);
        cmd.Parameters.AddWithValue("@p9", "Amount Debited");
        cmd.ExecuteNonQuery();
        con.Close();
        updatebalance();
        Session["Mes"]="Transaction Successful with Id="+Tid.Text+" Paid Amount Is="+ amount.Text + " ";
        Response.Redirect("Success.aspx");
    
    
    }

    private void updatebalance()
    {
       topupamount = Convert.ToInt64(amount.Text);
        newamount = currentamount - topupamount;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd;
        string a = "update AccountBalanceInfo set BalanceAmount=@p1  where  MobileNo=@p2  ";

        cmd = new SqlCommand(a, con);
        cmd.Parameters.AddWithValue("@p1", newamount);
        cmd.Parameters.AddWithValue("@p2", Session["Mno"]);
        cmd.ExecuteNonQuery();
        con.Close();

    }
}