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
    public partial class courseenrollment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bindData();
        }
        protected void bindData()
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Comp229Assign03ConnectionString"].ToString());


            SqlCommand comm = new SqlCommand("SELECT * FROM Students", connection);
            try
            {
                connection.Open();
                SqlDataReader reader = comm.ExecuteReader();
                GridViewCourse.DataSource = reader;
                GridViewCourse.DataBind();
                reader.Close();
            }
            finally
            {
                connection.Close();
            }
        }
    }
}