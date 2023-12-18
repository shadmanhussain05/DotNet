using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace meeting_room
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void customValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (Username.Value == string.Empty)
            {
                customValidator.ErrorMessage = "Please enter your UserName.";
                args.IsValid = false;
            }
        }


        protected void customValidator_ServerValidate1(object source, ServerValidateEventArgs args)
        {
            if (password.Value == string.Empty)
            {
                customValidator1.ErrorMessage = "Please enter your password.";
                args.IsValid = false;
            }
        }
        //protected void btnSubmit_Click(object sender, EventArgs e)
        //{


        //    string connStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        //    SqlConnection conn = new SqlConnection(connStr);
        //    conn.Open();
        //    SqlCommand cmd = new SqlCommand("select * from Admin_Master where username_511 =@username and password=@password", conn);


        //    cmd.Parameters.AddWithValue("@username", Username.Value);
        //    cmd.Parameters.AddWithValue("@password", password.Value);
        //    SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    DataTable dt = new DataTable();
        //    da.Fill(dt);

        //    if (dt.Rows.Count > 0)
        //    {
        //        Response.Redirect("~/Meeting_Room_Access/AddMember.aspx");
        //    }
        //    else
        //    {
        //        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
        //    }

        //}
        protected void login_ServerClick(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string connStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                SqlConnection conn = new SqlConnection(connStr);
                conn.Open();
                SqlCommand cmd = new SqlCommand("select * from Admin_Masters where username =@username and password=@password", conn);
                string select = "select Name from Admin_Masters where username='" + Username.Value + "'";
                SqlCommand cmd1 = new SqlCommand(select, conn);
                cmd.Parameters.AddWithValue("@username", Username.Value);
                cmd.Parameters.AddWithValue("@password", password.Value);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);


                SqlDataReader reader = cmd1.ExecuteReader();
                if (reader.Read())
                {
                    Session["UserName"] = reader["Name"].ToString();
                }

                if (dt.Rows.Count > 0)
                {

                    Response.Redirect("~/NewFolder1/AddMember.aspx");
                }
                else
                {
                    ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
                }


            }

        }
    }
}