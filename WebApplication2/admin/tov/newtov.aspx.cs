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
        static string connectionString3 = @"Data Source=LOCALHOST\SQLEXPRESS;" + @"Initial Catalog=kurs;" + @"Integrated Security=True;" + @"Pooling=False";
        static SqlConnection connection3 = new SqlConnection(connectionString3);

        public void addTov(Object sender, EventArgs e)
        {
            connection3.Close();
            connection3.Open();
            SqlCommand command2 = new SqlCommand("insert into tov values ('" + id_tov.Text + "' , '" + nametov.Text + "' , '" + countrytov.Text + "' , '" + costtov.Text + "' , '" + code.Text + "')", connection3);
            command2.ExecuteNonQuery();
            SqlCommand command3 = new SqlCommand("insert into kolvo values ('" + nametov.Text + "' , '" + 0 + "' , '" + code.Text + "' , '" + costtov.Text + "')", connection3);
            command3.ExecuteNonQuery();
            LabelOK.Text = ("Товар " + nametov.Text + " добавлен.");


            connection3.Close();

        }

    }
}