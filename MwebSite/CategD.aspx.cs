using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MwebSite
{
    public partial class CategD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ShoppingDbEntities2 db = new ShoppingDbEntities2();

            var users = from user in db.Users select user;
            List<User> us = users.ToList();
            t.InnerHtml = "";
            var Prod = from pro in db.Products select pro;
            List<Product> prodc = Prod.ToList();
            foreach (var r in prodc)
            {
                if (r.catID == 4)
                {
                   
                        t.InnerHtml += "<div class='join-button' style='float:left; width:200px;height:250px;margin-bottom:100px' runat='server'>";
                        t.InnerHtml += ("<asp:Button runat='server'  Class='btn btn-default' id='Trousers" + r.productID + "' href='#'><img  src=Images/" + r.imageName + " style='width:200px; height:200px' runat='server'> <br/>");
                    t.InnerHtml += r.description + "<br/>Price : " + r.price + "$</Button></div>";
                }
            }
           

       
        }
    }
}