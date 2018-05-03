using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment
{
    public partial class _21 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string searchvalue = TextSearch.Text;
            litSearch.Text = "Here are your search result for " + searchvalue;
            Response.Redirect("~/Search.aspx?find=" + searchvalue);
        }
        
    }
}