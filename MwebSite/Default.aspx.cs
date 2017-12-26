using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MwebSite
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                setImage();
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            setImage();

        }

        private void setImage()
        {
            if (ViewState["imgSlider"] == null)
            {
                Image1.ImageUrl = "~/Images/w1.jpg";
                ViewState["imgSlider"] = 1;
            }
            else
            {
                int i = (int)ViewState["imgSlider"];
                if (i == 4)
                {
                    Image1.ImageUrl = "~/Images/w1.jpg";
                    ViewState["imgSlider"] = 1;
                }
                else
                {
                    i++;
                   
                    Image1.ImageUrl = "~/Images/w" + i.ToString() + ".jpg";
                    ViewState["imgSlider"] = i;
                }
            }
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}