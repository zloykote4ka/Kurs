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
        static string connectionString2 = @"Data Source=LOCALHOST\SQLEXPRESS;" + @"Initial Catalog=kurs;" + @"Integrated Security=True;" + @"Pooling=False";
        static SqlConnection connection2 = new SqlConnection(connectionString2);

        public void addPost(Object sender, EventArgs e)
        {
            connection2.Close();
            connection2.Open();
            SqlCommand command2 = new SqlCommand("insert into post values ('" + id_post.Text + "' , '" + name.Text + "' , '" + country.Text + "' , '" + city.Text + "')", connection2);
            command2.ExecuteNonQuery();
            Server.Transfer("/admin/main.aspx", true);
            connection2.Close();
        }

    }
}