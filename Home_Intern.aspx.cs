using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace INTERN
{
    public partial class Home_Intern : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
            pnl_intern_homeView.Visible = true;
            if (!IsPostBack)
            {

                DateTime currentDate = DateTime.Now;

                // Format date and time
                string formattedDateTime = $" {currentDate.ToString("dddd, MMMM dd, yyyy")}";

                // Display formatted date and time
                lbl_Curr_dayoftheWeek.Text = formattedDateTime;


            }


        }

       

        protected void btn_Dashboard_Click(object sender, EventArgs e)
        {
            pnl_intern_homeView.Visible = true;
            pnl_personal_profil.Visible = false;
            pnl_request.Visible = false;

            


        }

        protected void btn_home_Click(object sender, EventArgs e)
        {
            pnl_intern_homeView.Visible = false;
            pnl_personal_profil.Visible = true;
            pnl_request.Visible = false;

        }

        protected void btn_requests_Click(object sender, EventArgs e)
        {
            pnl_request.Visible = true;
            pnl_intern_homeView.Visible = false;
            pnl_personal_profil.Visible = true;
        }
        public void myAccount_Click(object sender, EventArgs e)
        {
            pnl_intern_homeView.Visible = false;

            pnl_personal_profil.Visible = true;
            pnl_request.Visible = false;

        }

    }

}