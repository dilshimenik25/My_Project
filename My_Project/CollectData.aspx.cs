using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel;
using System.Configuration;
using System.Diagnostics;
using Microsoft.Win32;
using System.Web.UI.DataVisualization.Charting;
using System.Data.SqlClient;
using System.Data;
using System.IO;




namespace My_Project
{
    public partial class CollectData : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=user-pc\dilshi;Initial Catalog=TaskDBSystem;Integrated Security=True;");
        SqlDataAdapter adptr;

        SqlCommand cmd;
        DataSet ds;
        SqlCommandBuilder scb;
        protected System.Web.UI.HtmlControls.HtmlInputFile File1;
        protected System.Web.UI.HtmlControls.HtmlInputButton Submit1;
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = Session["value"].ToString();

            if (!IsPostBack)
            {
                GetChartData();
                GetChartTypes();
                GetChartData1();
                GetChartTypes1();
                GetChartData2();
                GetChartTypes2();
            }
        }
        private void GetChartData()
        {
            
            String query = "SELECT count, proid from PRDB" ;

            SqlCommand cmd = new SqlCommand(query, con);
            Series series = Chart1.Series["Series1"];
            con.Open();
            SqlDataReader re = cmd.ExecuteReader();

            while (re.Read())
            {
                series.Points.AddXY(re["proid"].ToString(),re["count"].ToString());
            }

            con.Close();
        }
        private void GetChartData1()
        {

            String query = "SELECT division, empid from workerDB";

            SqlCommand cmd = new SqlCommand(query, con);
            Series series = Chart2.Series["Series2"];
            con.Open();
            SqlDataReader re = cmd.ExecuteReader();

            while (re.Read())
            {
                series.Points.AddXY(re["division"].ToString(), re["empid"].ToString());
            }

            con.Close();
        }
        private void GetChartData2()
        {

            String query = "SELECT proid,days  from PRDB";

            SqlCommand cmd = new SqlCommand(query, con);
            Series series = Chart3.Series["Series3"];
            con.Open();
            SqlDataReader re = cmd.ExecuteReader();

            while (re.Read())
            {
                series.Points.AddXY(re["proid"].ToString(), re["days"].ToString());
            }

            con.Close();
        }

        private void GetChartTypes()
        {

        }
        private void GetChartTypes1()
        {

        }
        private void GetChartTypes2()
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           /* if ((FileUpload1.PostedFile != null) && (FileUpload1.PostedFile.ContentLength > 0))
            {
                string fn = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
                string SaveLocation = Server.MapPath("upload") + "\\" + fn;
                try
                {
                    FileUpload1.PostedFile.SaveAs(SaveLocation);
                    FileUploadStatus.Text = "The file has been uploaded.";
                }
                catch (Exception ex)
                {
                    FileUploadStatus.Text = "Error: " + ex.Message;
                }
            }
            else
            {
                FileUploadStatus.Text = "Please select a file to upload.";
            }*/
        }
    }
}