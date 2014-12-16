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
        static string connectionString = @"Data Source=LOCALHOST\SQLEXPRESS;" + @"Initial Catalog=kurs;" + @"Integrated Security=True;" + @"Pooling=False";
        static SqlConnection connection = new SqlConnection(connectionString);


            public void tovupd(Object sender, EventArgs e)
            {
                connection.Close();
                connection.Open();
                string updateSql = "UPDATE tov SET name = 'Булка' where id_tov= '1'";
                SqlCommand UpdateCmd = new SqlCommand(updateSql, connection);
                connection.Close();
            }

            public void delall(Object sender, EventArgs e)
            {
                connection.Open();
                SqlCommand command2 = new SqlCommand("TRUNCATE TABLE tov ", connection);
                command2.ExecuteNonQuery();
                connection.Close();

            }

        }
    public partial class Testt : _Default
    {
    }


    }



