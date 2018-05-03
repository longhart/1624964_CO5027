using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment.admin
{
    public partial class UploadImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string productId = Request.QueryString["Id"];

            string filename = productId + ".jpg";
            string saveLocation = Server.MapPath("~/images/ProductImages/" + filename);

            imageFileUploadControl.SaveAs(saveLocation);
            LitUpload.Text = "Image Uploaded";
        }

        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/login.aspx");
        }

        protected void Back_List(object sender, EventArgs e)
        {
            Response.Redirect("~/admin/List.aspx");
        }
    }
}