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
        static string connectionString6 = @"Data Source=LOCALHOST\SQLEXPRESS;" + @"Initial Catalog=kurs;" + @"Integrated Security=True;" + @"Pooling=False";
        static SqlConnection connection6 = new SqlConnection(connectionString6);

        public void vzal(Object sender, EventArgs e)
        {
            connection6.Close();
            connection6.Open();

            DateTime now = new DateTime();
            now = DateTime.Now;
            int hour = now.Hour;
            int min = now.Minute;
            int sec = now.Second;

            int dat = now.Day;
            int mon = now.Month;


            String NowTimeIs = ("Сейчас " + dat + "." + mon + "   " + hour + ":" + min + "." + sec);

            SqlCommand command5 = new SqlCommand("insert into otgr values('" + NowTimeIs + "','" + DropDownList1234235.Text + "','" + Koll.Text + "')", connection6);
            command5.ExecuteNonQuery();


            SqlCommand command3 = new SqlCommand("UPDATE kolvo SET kol = kol-" + Koll.Text + " WHERE IDTOV = '" + DropDownList1234235.Text + "'", connection6);
            command3.ExecuteNonQuery();

            SqlCommand command4 = new SqlCommand("UPDATE Postupl SET num_2 = num_2-" + Koll.Text + " WHERE id_postupl = '" + DropDownList1234234.Text + "'", connection6);
            command4.ExecuteNonQuery();
            connection6.Close();
            Server.Transfer("/admin/main.aspx", true);

        }


    }
}