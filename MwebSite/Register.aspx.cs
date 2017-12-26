using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace MwebSite
{
    public partial class Register : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)//should pass all validation controls
            {
                ShoppingDbEntities2 db = new ShoppingDbEntities2();
                var users = from user in db.Users select user;
                List<User> us = users.ToList();
                foreach (var r in us)
                {
                    if (r.email == Text1.Value.ToString() && r.password == Password1.Value.ToString())
                    {  
                        if (r.groupid == 1)
                        {
                            Label1.ForeColor = System.Drawing.Color.Green;
                            Label1.Text = "Successfully Data Saved Admin";
                           
                        }
                        else
                        {
                            Label1.ForeColor = System.Drawing.Color.Green;
                            Label1.Text = "Successfully Data Saved user";
                        }
                        
                        Session["username"] = r.username;
                        Session["Funuser"] = r.groupid;
                        Response.Redirect("~/default.aspx");
                        //FormsAuthentication.RedirectFromLoginPage(r.username, true);
                        break;
                    }

                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

   
    }
}