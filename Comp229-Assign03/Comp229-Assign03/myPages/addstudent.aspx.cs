using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign03.myPages
{
    public partial class addstudent : System.Web.UI.Page
    {
       // private object textEnrolmentText;

        public object GridView1 { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void submit_click(object sender, EventArgs e)
        {
       
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Comp229Assign03ConnectionString"].ToString());
            SqlCommand comm = new SqlCommand("INSERT INTO Students ( FirstMidName, LastName, EnrollmentDate) VALUES(@FirstMidName, @LastName, @EnrollmentDate)", connection);

            comm.Parameters.Add("@FirstMidName", System.Data.SqlDbType.VarChar);
            comm.Parameters["@FirstMidName"].Value = TextBox1.Text;

            comm.Parameters.Add("@LastName", System.Data.SqlDbType.VarChar);
            comm.Parameters["@LastName"].Value = TextBox2.Text;

            comm.Parameters.Add("@EnrollmentDate", System.Data.SqlDbType.Date);
            comm.Parameters["@EnrollmentDate"].Value = Convert.ToDateTime(TextBox4.Text);

            try
            {
                connection.Open();
                comm.ExecuteNonQuery();

                Response.Redirect("~/myPages/home.aspx");



            }
            catch (Exception ex)
            {
                Response.Write("<label> alert('errorMessage: " + ex.Message + "'); </label>");
            }
            finally
            {
                connection.Close();
            }
        }
    }

    }


