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
            static string connectionString1 = @"Data Source=LOCALHOST\SQLEXPRESS;" + @"Initial Catalog=kurs;" + @"Integrated Security=True;" + @"Pooling=False";
            static SqlConnection connection1 = new SqlConnection(connectionString1);

        public void addPostupl(Object sender, EventArgs e)
        {
            connection1.Close();
            connection1.Open();
            SqlCommand command2 = new SqlCommand("insert into Postupl values ('" + DropDownList11.Text + "' , '" + DropDownList12.Text + "' , '" + DatePostupl.Text + "' , '" + Kolvo.Text + "' , '" + Kolvo.Text + "' , '" + idpostupl.Text + "')", connection1);
            command2.ExecuteNonQuery();



            SqlCommand command3 = new SqlCommand("UPDATE kolvo SET kol = kol+" + Kolvo.Text + " WHERE IDTOV = '" + DropDownList11.Text + "'", connection1);
            command3.ExecuteNonQuery();
            connection1.Close();
            Server.Transfer("/admin/main.aspx", true);

        }

        protected void Button121213_Click(object sender, EventArgs e)
        {
            connection1.Close();
            connection1.Open();
            SqlCommand command2 = new SqlCommand("TRUNCATE TABLE Postupl ", connection1);
            SqlCommand command3 = new SqlCommand("TRUNCATE TABLE kolvo ", connection1);
            SqlCommand command4 = new SqlCommand("TRUNCATE TABLE post ", connection1);
            SqlCommand command5 = new SqlCommand("TRUNCATE TABLE tov ", connection1);
            command2.ExecuteNonQuery();
            command3.ExecuteNonQuery();
            command4.ExecuteNonQuery();
            command5.ExecuteNonQuery();
        }


    }
}