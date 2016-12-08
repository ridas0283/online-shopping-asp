using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Add_Item : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void bAdd_Click(object sender, EventArgs e)
    {
        //checks if any of the inputs are empty or contains only white space
        if ( String.IsNullOrWhiteSpace(tbName.Text) || String.IsNullOrWhiteSpace(ddlCategory.Text) ||  !fuImage.HasFile || String.IsNullOrWhiteSpace(tbPrice.Text) || String.IsNullOrWhiteSpace(tbDetails.Text) )
        {
            lMessage.ForeColor = System.Drawing.Color.DarkRed;
            lMessage.Text = "Please Enter all the Product Details";
            return;
        }

        string imageExtension = System.IO.Path.GetExtension(fuImage.FileName.ToString()); //gets the file's extension



        //Checks if the chosen image is actually an image by checking its extension
        //Displays that the file format isn't supported and returns from the function
        if (imageExtension != ".jpg" && imageExtension != ".jpeg" && imageExtension != ".png" && imageExtension == ".bmp" )
        {
            lMessage.ForeColor = System.Drawing.Color.DarkRed;
            lMessage.Text = "The Image File Format is Not Supported";
            return;  
        }



        //sets the name equal to the Product Id. Since Product Id is a primary key, all image names will be unique
        string imageName = tbName.Text + imageExtension;
 
        //saves the file in the product_images folder
        fuImage.PostedFile.SaveAs(Server.MapPath("~/Product_Images/") + imageName);

        string imagePath = "~/Product_Images/" + imageName;

        //inserts the user entered data in the product_tb table
        try
        {
            DbAccess.SaveData("Insert into Product_Tb Values('" + tbName.Text + "','" + ddlCategory.Text + "','" + imagePath + "'," + tbPrice.Text + ",'" + tbDetails.Text + "')");
            lMessage.ForeColor = System.Drawing.Color.Green;
            lMessage.Text = "Item Successfully Added";
        }
        catch(SqlException ex)
        {
            if (ex.Number == 2627) //this number is a special case when primary key violation occurs
            {
                lMessage.ForeColor = System.Drawing.Color.DarkRed;
                lMessage.Text = "A Product With the Same Name Already Exists";
            }
            else
                throw ex;
        }
        catch(Exception ex)
        {
            lMessage.ForeColor = System.Drawing.Color.DarkRed;
            lMessage.Text = ex.Message.ToString();
        }

    }
}