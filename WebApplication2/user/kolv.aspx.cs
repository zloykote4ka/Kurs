using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Data;

namespace WebApplication2.admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        static string connectionString8 = @"Data Source=LOCALHOST\SQLEXPRESS;" + @"Initial Catalog=kurs;" + @"Integrated Security=True;" + @"Pooling=False";
        static SqlConnection connection8 = new SqlConnection(connectionString8);

        public void codesearch(Object sender, EventArgs e)
        {
            connection8.Close();
            connection8.Open();
            SqlCommand command2 = new SqlCommand("SELECT  *  FROM kolvo WHERE cod = '" + codes.Text + "'", connection8);
            SqlDataReader reader = command2.ExecuteReader();
            while (reader.Read())
            {
                Label1.Text = ("   " + reader["IDTOV"]);
                Label2.Text = ("   " + reader["cost"]);
                Label3.Text = ("   " + reader["kol"]);


            }
            reader.Close();
            connection8.Close();

        }
    }
}