using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace INTERN
{
    public partial class stu_loginform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Intern_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home_Intern.aspx");
        }
    }
}