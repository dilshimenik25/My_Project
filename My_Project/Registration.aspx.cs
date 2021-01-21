using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;


namespace My_Project
{
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=user-pc\dilshi;Initial Catalog=TaskDBSystem;Integrated Security=True;");
        SqlDataAdapter adptr;
        DataTable dt;
        SqlCommand cmd;
        DataSet ds;
        SqlCommandBuilder scb;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO regisDB VALUES('" + Textname.Text + "','" + Textemail.Text + "','" + Textpassword.Text + "','" + Textcops.Text + "')";
            int no = cmd.ExecuteNonQuery();
            if (no > 0)
            {
                Response.Write("<script>alert('System Information Saved Successsfully !');</script>");
                Response.Redirect("Login.aspx");

            }
            else
            {
                Response.Write("<script>alert('Sorry please try it');</script>");

            }
            con.Close();
            
        }
    }
}