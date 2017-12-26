using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MwebSite
{
    public partial class DeleteProduct : System.Web.UI.Page
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
          
                bool t = true;
                ShoppingDbEntities2 db = new ShoppingDbEntities2();
                Product prod = new Product();
                if (DropDownList1.SelectedValue.ToString() == "T-Shirts")
                {
                    prod.catID = 1;
                }
                else if (DropDownList1.SelectedValue.ToString() == "Shirts")
                {
                    prod.catID = 2;
                }
                else if (DropDownList1.SelectedValue.ToString() == "Trousers")
                {
                    prod.catID = 3;
                }
                else if (DropDownList1.SelectedValue.ToString() == "Shorts")
                {
                    prod.catID = 4;

                }
                prod.price = Convert.ToDecimal(pricc.Value.ToString());
                prod.imageName = Tex1.Value.ToString();
                 
             var Prod = from pro in db.Products select pro;
              List<Product> prodc = Prod.ToList();
              foreach (var r in prodc)
              {
                  if (r.price == prod.price && r.imageName == prod.imageName && r.catID == prod.catID)
                  {
                      t = false;
                      db.Products.Attach(r);
                      db.Products.Remove(r);
                      db.SaveChanges();
                      Labe.ForeColor = System.Drawing.Color.Green;
                      Labe.Text = "Product Successfully Removed";
                      break;
                  }
              }

              if (t == true)
              {
                  Labe.ForeColor = System.Drawing.Color.Red;
                  Labe.Text = "Product not Removed";
              }

        }
    }
}