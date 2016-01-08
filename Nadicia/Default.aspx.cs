using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nadicia
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*DataTable dt = Database.GetEvents();
            d1.DataSource = dt;
            d1.DataBind();
            */
            if (!IsPostBack)
            {
                SetImageUrl();
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            SetImageUrl();
        }

        private void SetImageUrl()
        {
            if (ViewState["ImageDisplayed"] == null)
            {
                Image1.ImageUrl = "~/images/1.jpg";
                ViewState["ImageDisplayed"] = 1;
            }
            else
            {
                int i = (int) ViewState["ImageDisplayed"];
                if (i == 6)
                {
                    Image1.ImageUrl = "~/images/1.jpg"; 
                    ViewState["ImageDisplayed"] = 1;
                }
                else
                {
                    i++;
                    Image1.ImageUrl = "~/images/" + i.ToString() + ".jpg";
                    ViewState["ImageDisplayed"] = i;
                }
                
            }
        }

    }
}