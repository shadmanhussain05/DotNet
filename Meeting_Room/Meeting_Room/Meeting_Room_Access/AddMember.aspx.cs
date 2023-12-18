using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace meeting_room.page
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lb1.Text = "<font color=Brown>" + "WELCOME:: " + "</font>" + "<font color=red>" + Session["UserName"] + "</font>";
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (EMPLOYEE_LOTUS_ID.Value != "")
            {
                string email = EMPLOYEE_LOTUS_ID.Value;
                Regex regex = new Regex(@"^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$",
                RegexOptions.CultureInvariant | RegexOptions.Singleline);
                bool isValidEmail = regex.IsMatch(email);
                if (!isValidEmail)
                {
                    customValidator2.ErrorMessage = "Please enter a valid Email ID.";
                    args.IsValid = false;
                }
               
            }
        }

            protected void customValidator_ServerValidate(object source, ServerValidateEventArgs args)
            {
               if (Employee_Code.Value.Length != 8)
               {
                customValidator1.ErrorMessage = "Please enter 8 digit.";
                args.IsValid = false;
               }

               if (Employee_Code.Value !="")
               {
                string Upi = EMPLOYEE_LOTUS_ID.Value;
                Regex regex = new Regex(@"(^ ([0 - 9] *|\d *\d{ 1}?\d *)$)",
                RegexOptions.CultureInvariant | RegexOptions.Singleline);
                bool isValidUpi = regex.IsMatch(Upi);
                if (!isValidUpi)
                {
                    customValidator1.ErrorMessage = "Please enter only Numbers.";
                    args.IsValid = false;
                }
               }
            }

        protected void save_ServerClick(object sender, EventArgs e)
        {
            if(Page.IsValid)
                {


                string connStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                SqlConnection conn = new SqlConnection(connStr);
                conn.Open();
                string select = "select count(*) from EmployeeMaster1 where EMPLOYEE_CODE='" + (Employee_Code.Value) + "'";



                SqlCommand cmd2 = new SqlCommand(select, conn);
                Int32 count = Convert.ToInt32(cmd2.ExecuteScalar());
                //int n = cmd2.ExecuteNonQuery();
                if (count == 0)
                {
                    SqlCommand cmd = new SqlCommand("Add_Member", conn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@Employee_Code", SqlDbType.VarChar).Value = Employee_Code.Value;
                    cmd.Parameters.Add("@First_Name", SqlDbType.VarChar).Value = First_Name.Value;
                    cmd.Parameters.Add("@Last_Name", SqlDbType.VarChar).Value = Last_Name.Value;
                    cmd.Parameters.Add("@EMPLOYEE_LOTUS_ID", SqlDbType.VarChar).Value = EMPLOYEE_LOTUS_ID.Value;
                    cmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = gender.Value.Trim();
                    cmd.Parameters.Add("@User_Type", SqlDbType.VarChar).Value = Select1.Value.Trim();

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
        protected void reset_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("AddMember.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("~/Meeting_Room_Access/login.aspx");
            Session.Abandon();
        }
    }
}

