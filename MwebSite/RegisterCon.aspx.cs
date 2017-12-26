using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MwebSite
{
    public partial class RegisterCon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
             if (Page.IsValid)//shoud pass all validation controls
            {   
                ShoppingDbEntities2 db = new ShoppingDbEntities2();
                User user = new User();

                user.username = Text1.Value.ToString();
                user.fullname = Text2.Value.ToString();
                user.email = Text3.Value.ToString();
                user.password = Password1.Value.ToString();
                user.groupid = 0;
                db.Users.Add(user);
                db.SaveChanges();
                Label1.ForeColor = System.Drawing.Color.Green;
                Label1.Text = "Successfully Data Saved";
                Text1.Value = "";
                Text2.Value="";
                Text3.Value="";
            }
            else //not run because javascript run in browser should disabled
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Sorry Data not Saved";
            }
            
            
        
        }

      
    }
}