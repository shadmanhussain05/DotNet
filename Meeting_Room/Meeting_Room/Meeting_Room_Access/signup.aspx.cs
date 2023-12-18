using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace meeting_room.Meeting_Room_Access
{
    public partial class signup : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
         
        }


        protected void customValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (Text1.Value == string.Empty)
            {
                customValidator1.ErrorMessage = "Please enter your Name.";
                args.IsValid = false;
            }
        }
        protected void customValidator_ServerValidate1(object source, ServerValidateEventArgs args)
        {
            if (Text2.Value == string.Empty)
            {
                customValidator2.ErrorMessage = "Please enter your UserName.";
                args.IsValid = false;
            }
        }

        protected void customValidator_ServerValidate2(object source, ServerValidateEventArgs args)
        {
            if (Password1.Value == string.Empty)
            {
                customValidator3.ErrorMessage = "Please enter Password.";
                args.IsValid = false;
            }
        }

        protected void customValidator_ServerValidate3(object source, ServerValidateEventArgs args)
        { 
            if (Password2.Value == string.Empty)
            {
                customValidator4.ErrorMessage = "Please Re-enter Password.";
                args.IsValid = false;
            }
            if (Password2.Value != Password1.Value)
            {
                customValidator4.ErrorMessage = "Password Mismatch.";
                args.IsValid = false;
            }
        }
        protected void btn_save(object sender, EventArgs e)

        {
            if (Page.IsValid)
            {

                string connStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                SqlConnection conn = new SqlConnection(connStr);
                conn.Open();
                string select = "select count(*) from Admin_Master where username_511='" + Text1.Value + "'";
                SqlCommand cmd2 = new SqlCommand(select, conn);
                Int32 count = Convert.ToInt32(cmd2.ExecuteScalar());
                //int n = cmd2.ExecuteNonQuery();
                if (count == 0)
                {
                    SqlCommand cmd = new SqlCommand("signup_data", conn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@name", SqlDbType.VarChar).Value = Text1.Value;
                    cmd.Parameters.Add("@username", SqlDbType.VarChar).Value = Text2.Value;
                    cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = Password1.Value;


                    cmd.ExecuteNonQuery();


                    Response.Write("<script>alert('Data Successfully Saved')</script>");

                }
                else
                {
                    Response.Write("<script>alert('Employee Data Already Present')</script>");
                }
                conn.Close();
            }

        }


        protected void Button2_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("~/Meeting_Room_Access/login.aspx");
        }
    }
}

    