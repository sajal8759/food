using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace food_and_suppliers
{
    public partial class index : System.Web.UI.Page
    {
        String strConnString = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string fName = f_name.Text.Trim();
            string mName = m_name.Text.Trim();
            string lName = l_name.Text.Trim();
            string phoneNumber = phone_number.Text.Trim();

            SqlConnection connection = new SqlConnection(strConnString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = connection;
            connection.Open();

            cmd = new SqlCommand("INSERT INTO [food].[dbo].[DATA] VALUES ('"+fName+ "','" + mName + "','" + lName + "','" + phoneNumber + "',GETDATE())", connection);
            Int32 result = (Int32)cmd.ExecuteNonQuery();

            connection.Close();

            if (result > 0)
            {
                success.Visible = true;

            }


        }
    }
}