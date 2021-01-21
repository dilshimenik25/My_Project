using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

namespace My_Project
{
    public partial class Fileupload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = Session["value"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("~/upload/" + FileUpload1.FileName));
                Label1.Text = "File Upload";
                Label1.ForeColor = System.Drawing.Color.Purple;
            }
            else
            {
                Label1.Text = "Please Select a File";
                Label1.ForeColor = System.Drawing.Color.Green;
            }
            DataTable dt = new DataTable();
            dt.Columns.Add("File", typeof(string));
            dt.Columns.Add("Size", typeof(string));
            dt.Columns.Add("Type", typeof(string));
            foreach (string strfile in Directory.GetFiles(Server.MapPath("~/upload/")))
            {
                FileInfo fl = new FileInfo(strfile);
                dt.Rows.Add(fl.Name, fl.Length, GetFileTypeByExtension(fl.Extension));
                
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        private string GetFileTypeByExtension(string extension)
        {
            switch (extension.ToLower())
            {
                case ".doc":
                case ".docx":
                    return " Microsoft Word Document";
                case ".xlsx":
                case ".xls":
                    return " Microsoft Excel Document";
                case ".txt":
                    return "Text Document";
                case ".jpg":
                case "png":
                    return "Image";
                default:
                    return "Unknown";
            }
            
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Download")
                {
                Response.Clear();
                Response.ContentType = "application/octect-stream";
                Response.AppendHeader("content-disposition", "filename=" + e.CommandArgument);
                Response.TransmitFile(Server.MapPath("~/upload/") + e.CommandArgument);
                Response.End();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Download")
            {
                Response.Clear();
                Response.ContentType = "application/octect-stream";
                Response.AppendHeader("content-disposition", "filename=" + e.CommandArgument);
                Response.TransmitFile(Server.MapPath("~/upload/") + e.CommandArgument);
                Response.End();
            }

        }
    }
}