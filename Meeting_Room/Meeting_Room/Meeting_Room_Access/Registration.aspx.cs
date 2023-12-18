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
    public partial class Registration : System.Web.UI.Page
    {
       

        

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }



        protected void btn_save(object sender, EventArgs e)
        {
            if (Text1.Value == "")
            {
                string message = "Please Enter Name";
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script type = 'text/javascript'>");
                sb.Append("window.onload=function(){");
                sb.Append("alert('");
                sb.Append(message);
                sb.Append("')};");
                sb.Append("</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                Text1.Value = "";
                return;
            }

            else if (Text2.Value == "")
            {
                string message = "Please Enter UserName";
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script type = 'text/javascript'>");
                sb.Append("window.onload=function(){");
                sb.Append("alert('");
                sb.Append(message);
                sb.Append("')};");
                sb.Append("</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                Text2.Value = "";
                return;
            }
            else if (Password1.Value == "")
            {
                string message = "Please Enter Password";
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script type = 'text/javascript'>");
                sb.Append("window.onload=function(){");
                sb.Append("alert('");
                sb.Append(message);
                sb.Append("')};");
                sb.Append("</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                Password1.Value = "";
                return;
            }
            else if (Password2.Value == "")
            {
                string message = "Please Re-Type Password";
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script type = 'text/javascript'>");
                sb.Append("window.onload=function(){");
                sb.Append("alert('");
                sb.Append(message);
                sb.Append("')};");
                sb.Append("</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                Password2.Value = "";
                return;
            }
            else if (Password2.Value != Password1.Value)
            {
                string message = "Password Mismatch";
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script type = 'text/javascript'>");
                sb.Append("window.onload=function(){");
                sb.Append("alert('");
                sb.Append(message);
                sb.Append("')};");
                sb.Append("</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                Password2.Value = "";
                return;
            }
            else {

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
                    Response.Write("<script>alert('Data Present')</script>");
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
