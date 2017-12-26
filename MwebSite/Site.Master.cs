using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MwebSite
{
    public partial class SiteMaster : MasterPage
    {
        private const string AntiXsrfTokenKey = "__AntiXsrfToken";
        private const string AntiXsrfUserNameKey = "__AntiXsrfUserName";
        private string _antiXsrfTokenValue;

        protected void Page_Init(object sender, EventArgs e)
        {
            // The code below helps to protect against XSRF attacks
            var requestCookie = Request.Cookies[AntiXsrfTokenKey];
            Guid requestCookieGuidValue;
            if (requestCookie != null && Guid.TryParse(requestCookie.Value, out requestCookieGuidValue))
            {
                // Use the Anti-XSRF token from the cookie
                _antiXsrfTokenValue = requestCookie.Value;
                Page.ViewStateUserKey = _antiXsrfTokenValue;
            }
            else
            {
                // Generate a new Anti-XSRF token and save to the cookie
                _antiXsrfTokenValue = Guid.NewGuid().ToString("N");
                Page.ViewStateUserKey = _antiXsrfTokenValue;

                var responseCookie = new HttpCookie(AntiXsrfTokenKey)
                {
                    HttpOnly = true,
                    Value = _antiXsrfTokenValue
                };
                if (FormsAuthentication.RequireSSL && Request.IsSecureConnection)
                {
                    responseCookie.Secure = true;
                }
                Response.Cookies.Set(responseCookie);
            }

            Page.PreLoad += master_Page_PreLoad;
        }

        protected void master_Page_PreLoad(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Set Anti-XSRF token
                ViewState[AntiXsrfTokenKey] = Page.ViewStateUserKey;
                ViewState[AntiXsrfUserNameKey] = Context.User.Identity.Name ?? String.Empty;
            }
            else
            {
                // Validate the Anti-XSRF token
                if ((string)ViewState[AntiXsrfTokenKey] != _antiXsrfTokenValue
                    || (string)ViewState[AntiXsrfUserNameKey] != (Context.User.Identity.Name ?? String.Empty))
                {
                    throw new InvalidOperationException("Validation of Anti-XSRF token failed.");
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Button3.Text = Session["username"].ToString();
                login.Visible = (bool)false;
                logout.Visible = (bool)true;

            }
            else
            {
                Button3.Text = "Home";
                login.Visible = (bool)true;
                logout.Visible = (bool)false;
            }

            if (Session["Funuser"] != null)
            {
                if (Session["Funuser"].ToString()=="1")
                {
                    AdminFun.Visible = (bool)true;
                }
                
            }
            else
            {
                AdminFun.Visible = (bool)false;
            }

        }

        protected void login_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void logout_Click(object sender, ImageClickEventArgs e)
        {
            Session["username"] = null;
            Session["Funuser"] = null;
            Response.Redirect("~/default.aspx");

        }

       /* protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex == 1)
            {
                Response.Redirect("~/CategA.aspx");
            }
            else if (DropDownList1.SelectedIndex == 2)
            {
                Response.Redirect("~/CategB.aspx");
            }
            else if (DropDownList1.SelectedIndex == 3)
            {
                Response.Redirect("~/CategC.aspx");
            }
            else if (DropDownList1.SelectedIndex == 4)
            {
                Response.Redirect("~/CategD.aspx");
            }
            else if(DropDownList1.SelectedIndex == 5)
            {
                Response.Redirect("~/Default.aspx");
            }
        }*/
    }
}