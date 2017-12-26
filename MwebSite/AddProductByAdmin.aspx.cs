using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MwebSite
{
    public partial class AddProductByAdmin : System.Web.UI.Page
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
            if (FileUpload1.HasFile)
            {
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/") + FileUpload1.FileName);

                ShoppingDbEntities2 db = new ShoppingDbEntities2();
                Product prod = new Product();
                
                prod.description = Tex1.Value.ToString();

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
                prod.imageName = FileUpload1.FileName.ToString();
                 
                db.Products.Add(prod);
                db.SaveChanges();
                Labe.ForeColor = System.Drawing.Color.Green;
                Labe.Text = "Product Successfully Added";
            }
            else
            {
                Labe.ForeColor = System.Drawing.Color.Red;
                Labe.Text = "Sorry no file uploaded";
            }
        }
    }
}