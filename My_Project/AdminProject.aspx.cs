using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;



namespace My_Project
{
    public partial class AdminProject : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=user-pc\dilshi;Initial Catalog=TaskDBSystem;Integrated Security=True;");
        SqlDataAdapter adptr;

        SqlCommand cmd;
        DataSet ds;
        SqlCommandBuilder scb;
        SqlDataReader re;
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = Session["value"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            String query = "SELECT proname,tech,opt,count,stdate,days,exdate,actdate,result,name PRDB Where proid='" + TextBox2.Text+"'";

            SqlCommand cmd = new SqlCommand(query, con);


            re = cmd.ExecuteReader();

            if (re.Read())
            {
                TextBox2.Text = re["proid"].ToString();
                TextBox14.Text = re["proname"].ToString();
                TextBox4.Text = re["tech"].ToString();
                TextBox9.Text = re["opt"].ToString();
                TextBox7.Text = re["count"].ToString();
                TextBox5.Text = re["stdate"].ToString();
                TextBox10.Text = re["days"].ToString();
                TextBox6.Text = re["exdate"].ToString();
                TextBox11.Text = re["actdate"].ToString();
                TextBox13.Text = re["result"].ToString();
                TextBox1.Text = re["name"].ToString();





            }

            con.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}