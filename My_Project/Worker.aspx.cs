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
    public partial class Worker : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=user-pc\dilshi;Initial Catalog=TaskDBSystem;Integrated Security=True;");
        SqlDataAdapter adptr;

        SqlCommand cmd;
        DataSet ds;
        SqlCommandBuilder scb;
        protected void Page_Load(object sender, EventArgs e)
        {
            Textid.Text = Session["value2"].ToString();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO workerDB VALUES('" + Textid.Text + "','" + Textposition.Text + "','" + Textdivision.Text + "','" + Textdate1.Text + "')";
            int no = cmd.ExecuteNonQuery();
            if (no > 0)
            {
                Response.Write("<script>alert('System Information Saved Successsfully !');</script>");
                Response.Redirect("Worker.aspx");

            }
            else
            {
                Response.Write("<script>alert('Sorry please try it');</script>");

            }
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.Url.AbsoluteUri);
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Employee.aspx");
        }
    }
}