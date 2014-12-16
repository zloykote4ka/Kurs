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
        public void timenow(Object sender, EventArgs e)
        {
            DateTime now = new DateTime();
            now = DateTime.Now;
            int hour = now.Hour;
            int min = now.Minute;
            int sec = now.Second;

            int dat = now.Day;
            int mon = now.Month;


            String NowTimeIs = ("Время: " + dat + "." + mon + "   " + hour + ":" + min + "." + sec);



        }

    }
}