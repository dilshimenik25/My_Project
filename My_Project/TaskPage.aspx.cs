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
    public partial class TaskPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=user-pc\dilshi;Initial Catalog=TaskDBSystem;Integrated Security=True;");
        SqlDataAdapter adptr;

        SqlCommand cmd;
        DataSet ds;
        SqlCommandBuilder scb;
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = Session["value"].ToString();
            TextBox2.Text = Session["value1"].ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.Url.AbsoluteUri);
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("TaskPage.aspx");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["value3"] = TextBox2.Text;

            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO taskDB VALUES('" + TextBox2.Text + "','" + TextBox14.Text + "','" + TextBox3.Text + "','" + TextBox8.Text + "','" + TextBox4.Text + "','" + TextBox9.Text + "','" + TextBox5.Text + "','" + TextBox10.Text + "','" + TextBox6.Text + "','" + TextBox11.Text + "','" + TextBox7.Text + "','"+TextBox12.Text+"','"+TextBox13.Text+"')";
            int no = cmd.ExecuteNonQuery();
            if (no > 0)
            {
                Response.Write("<script>alert('System Information Saved Successsfully !');</script>");
                Response.Redirect("Home.aspx");

            }
            else
            {
                Response.Write("<script>alert('Sorry please try it');</script>");

            }
            con.Close();
        }
    }
}