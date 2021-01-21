using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Office.Interop.Word;
using Microsoft.Office.Core;
using System.Reflection;
using word = Microsoft.Office.Interop.Word;
using System.Diagnostics;
using System.Drawing.Drawing2D;
using System.Data.SqlClient;
using System.Data;
using System.IO;






namespace My_Project
{
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=user-pc\dilshi;Initial Catalog=TaskDBSystem;Integrated Security=True;");
        SqlDataAdapter adptr;
        
        SqlCommand cmd;
        DataSet ds;
        SqlCommandBuilder scb;
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = Session["value"].ToString();
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewProject.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
           
            Response.Redirect("CollectData.aspx");
        }
         protected void Button1_Click1(object sender, EventArgs e)
        {
            
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO PRDB VALUES('" + TextBox2.Text + "','" + TextBox14.Text + "','" + TextBox4.Text + "','" + TextBox9.Text + "','" + TextBox7.Text + "','" + TextBox5.Text + "','" + TextBox10.Text + "','" + TextBox6.Text + "','" + TextBox11.Text + "','" + TextBox13.Text + "','"+TextBox1.Text+"')";
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
        protected void Button5_Click1(object sender, EventArgs e)
        {
            

            Session["value1"] = TextBox2.Text;
            Response.Redirect("TaskPage.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.Url.AbsoluteUri);
        }
    }
}