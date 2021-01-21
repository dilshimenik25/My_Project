using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;
using System.Configuration;

namespace My_Project
{
    public partial class Catogary : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=user-pc\dilshi;Initial Catalog=TaskDBSystem;Integrated Security=True;");
        SqlDataAdapter adptr;
        DataTable dt;
        SqlCommand cmd;
        DataSet ds;
        SqlCommandBuilder scb;
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = Session["value"].ToString();
            dis_data();
            dis_data2();
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            

            

                con.Open();
                SqlCommand cmd = new SqlCommand();
                string sqlquery = "select * from[dbo].[PRDB] where proid like '%'+@proid+ '%' ";
                cmd.CommandText = sqlquery;
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("proid", TextBox2.Text);
                DataTable dt = new DataTable();
                adptr = new SqlDataAdapter(cmd);
                adptr.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();

                con.Close();
            



        }
        protected void dis_data()
        {

            
            DataTable dt = new DataTable();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM PRDB";
           
            SqlDataAdapter adptr = new SqlDataAdapter(cmd);
            adptr.Fill(dt);
            GridView1.DataSource = dt;
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text != "")
            {
                cmd = new SqlCommand("Delete PRDB WHERE proid='" + TextBox2.Text + "'", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Catogary.aspx");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();


            cmd = new SqlCommand("Update PRDB SET count = @count", con);
            cmd.Parameters.AddWithValue("@count", TextBox2.Text);
            SqlDataReader re = cmd.ExecuteReader();
           
            dis_data();
            con.Close();

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            string sqlquery = "select * from[dbo].[taskDB] where proid like '%'+@proid+ '%' ";
            cmd.CommandText = sqlquery;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("proid", TextBox3.Text);
            DataTable dt = new DataTable();
            adptr = new SqlDataAdapter(cmd);
            adptr.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();

            con.Close();
        }

            protected void dis_data2()
        {

            con.Open();
            DataTable dt = new DataTable();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM taskDB";
            
            SqlDataAdapter adptr = new SqlDataAdapter(cmd);
            adptr.Fill(dt);
            GridView2.DataSource = dt;
            con.Close();

        }


    


    protected void Button5_Click(object sender, EventArgs e)
        {
            if (TextBox3.Text != "")
            {
                cmd = new SqlCommand("Delete taskDB WHERE proid='" + TextBox3.Text + "'", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Catogary.aspx");
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            con.Open();


            cmd = new SqlCommand("Update taskDB SET tn4 = @tn4", con);
            cmd.Parameters.AddWithValue("@tn4", TextBox3.Text);
            cmd.ExecuteReader();

            dis_data();
            con.Close();
        }
    }
}
