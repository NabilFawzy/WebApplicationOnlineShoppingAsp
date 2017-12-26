using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MwebSite
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Funuser"] == null || Session["Funuser"].ToString() == "0")
            {
                Response.Redirect("~/default.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            ShoppingDbEntities2 db = new ShoppingDbEntities2();
            bool t = false;
            var users = from user in db.Users select user;
            List<User> us = users.ToList();
            foreach(var r in us){
                if (r.email == em.Value.ToString()) { 
                    r.groupid=1;
                    t=true;
                     Lab.ForeColor = System.Drawing.Color.Green;
                     db.SaveChanges();
                    Lab.Text="User Successfully Become Admin";
                    break;
                }
                    
            }
            if (t == false)
            {
                Lab.ForeColor = System.Drawing.Color.Red;
                Lab.Text = "Sorry It is not an Existing Email";
            }
        }

        protected void Remv_Click(object sender, EventArgs e)
        {
            bool t=true;
            ShoppingDbEntities2 db = new ShoppingDbEntities2();
            User user = new User();
            var us = from u in db.Users select u;
            List<User> users = us.ToList();
            foreach (var r in users)
            {
                if (r.email == em.Value.ToString())
                {
                    t = false;
                    db.Users.Attach(r);
                    db.Users.Remove(r);
                    db.SaveChanges();
                    Lab.ForeColor = System.Drawing.Color.Green;
                    Lab.Text = "User Successfully Removed";
                    break;
                }

            }
            if (t == true)
            {
                Lab.ForeColor = System.Drawing.Color.Red;
                Lab.Text = "User not Found";
            }
            
        }
    }
}