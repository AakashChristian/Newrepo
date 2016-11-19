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
    public partial class studentInfo : System.Web.UI.Page
    {
        private object studentID;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindData();
            }
        }

        // Part of Join Query Functionality 
        protected void bindData() 
        {
            studentID = Convert.ToInt32(Request.QueryString["ID"]);

            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Comp229Assign03ConnectionString"].ToString());
            SqlCommand comm = new SqlCommand("SELECT s.StudentID, s.LastName, s.FirstMidName, c.CourseID, c.Title FROM Students s JOIN Enrollments e on(s.StudentID = e.StudentID) JOIN Courses c ON(e.CourseID = c.CourseID)where s.StudentID = @StudentID", connection);
            comm.Parameters.Add("@StudentID", System.Data.SqlDbType.Int);
            comm.Parameters["@StudentID"].Value = studentID;
            try
            {
                connection.Open();
                SqlDataReader reader = comm.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();
                reader.Close();
            }
            finally
            {
                connection.Close();
            }
        }

        // Part of Update Functionality
        protected void updateData(string lastName, string firstMidName)
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Comp229Assign03ConnectionString"].ToString());
            SqlCommand comm = new SqlCommand("UPDATE Students SET FirstMidName=@FirstMidName, LastName=@LastName WHERE StudentID=@StudentID", connection);

            comm.Parameters.Add("@FirstMidName", System.Data.SqlDbType.VarChar);
            comm.Parameters["@FirstMidName"].Value = firstMidName;

            comm.Parameters.Add("@LastName", System.Data.SqlDbType.VarChar);
            comm.Parameters["@LastName"].Value = lastName;

            comm.Parameters.Add("@StudentID", System.Data.SqlDbType.Int);
            comm.Parameters["@StudentID"].Value = Convert.ToInt32(Request.QueryString["ID"]);


            try
            {
                connection.Open();
                comm.ExecuteNonQuery();
                Response.Redirect("~/myPages/home.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('error: " + ex.Message + "'); </script>");
            }
            finally
            {
                connection.Close();
            }
        }

        protected void TaskGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            bindData();// data is bound with gridView
        }

        protected void CancelEditRow(Object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            bindData();

        }
        protected void RowEditing(Object sender, GridViewEditEventArgs e)
        {
            
            GridView1.EditIndex = e.NewEditIndex;
            bindData();

        }
        protected void RowUpdating(object sender, GridViewUpdateEventArgs e)// For Row Updating
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];

            string lastName = ((TextBox)(row.Cells[2].Controls[0])).Text;
            string firstMidName = ((TextBox)(row.Cells[3].Controls[0])).Text;
            
           
            updateData(lastName, firstMidName);

            GridView1.EditIndex = -1;

        }

        protected void RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Comp229Assign03ConnectionString"].ToString());
            SqlCommand comm = new SqlCommand("DELETE From Enrollments WHERE StudentID=@StudentID", connection);
            SqlCommand comm2 = new SqlCommand("DELETE From Students WHERE StudentID=@StudentID", connection);



            comm.Parameters.Add("@StudentID", System.Data.SqlDbType.Int);
            comm.Parameters["@StudentID"].Value = Convert.ToInt32(Request.QueryString["ID"]);

            comm2.Parameters.Add("@StudentID", System.Data.SqlDbType.Int);
            comm2.Parameters["@StudentID"].Value = Convert.ToInt32(Request.QueryString["ID"]);


            try
            {
                connection.Open();
                comm.ExecuteNonQuery();

                comm2.ExecuteNonQuery();
                Response.Redirect("~/myPages/home.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('error: " + ex.Message + "'); </script>");
            }
            finally
            {
                connection.Close();
            }
        }

        protected void RowUpdated(Object sender, GridViewUpdatedEventArgs e)
        {


            bindData();

            // Indicate whether the update operation succeeded.
            if (e.Exception == null)
            {
                Response.Write("<script>alert('Updated');</script>");
            }
            else
            {
                e.ExceptionHandled = true;
                Response.Write("<script>alert('failed');</script>");
            }

        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
 
        }
    }
}