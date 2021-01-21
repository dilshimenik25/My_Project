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
    public partial class Login : System.Web.UI.Page
    {
        SqlDataAdapter adptr;
        DataTable dt;
        SqlCommand cmd;
        DataSet ds;
        SqlCommandBuilder scb;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblErrorMessage.Visible = false;
        }


        protected void Button2_click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Employee.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Session["value"] = Textname.Text;
            
            using (SqlConnection con = new SqlConnection(@"Data Source=user-pc\dilshi;Initial Catalog=TaskDBSystem;Integrated Security=True;"))
            {
                con.Open();
                String query = "SELECT * from regisDB Where username=@username and password =@password";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@username", Textname.Text);
                cmd.Parameters.AddWithValue("@password", Textpassword.Text);
                SqlDataReader re = cmd.ExecuteReader();

                if (re.Read())
                {
                    Session["username"] = Textname.Text;
                    Response.Redirect("Home.aspx");
                }
                else if (Textname.Text == "Admin" && Textpassword.Text == "123oo123")
                {

                    {
                        Session["username"] = Textname.Text;
                        Response.Redirect("AdminProject.aspx");

                    }
                }
                else
                {
                    lblErrorMessage.Visible = true;
                }
                con.Close();
            }

        }

        protected void Textpassword_TextChanged(object sender, EventArgs e)
        {

        }

        
    }
    }
