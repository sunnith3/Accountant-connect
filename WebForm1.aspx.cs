using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication21
{
    public partial class WebForm1 : System.Web.UI.Page
    {
      

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

      

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DataBase1ConnectionString1"].ConnectionString);
            conn.Open();
            try
            {
                conn.Open();
                string login = "select * from Table1 where Email='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'";
                SqlCommand cmd = new SqlCommand(login, conn);
                SqlDataReader verify = cmd.ExecuteReader();
                if (verify.Read()) { 
                
                    Response.Redirect("Profile.aspx");
                }
                else
                { 
                    this.Label1.Text = "Please enter valid Username or Password";
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm2.aspx");
        }
    }
}
       

    