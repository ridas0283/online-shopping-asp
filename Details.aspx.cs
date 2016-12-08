using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //depending on what was clicked, the image url or the item name was stored in the query string variable q
            //the item is retrieved from Product_Tb and stored in DataSet ds
            string q = (String)Request.QueryString["q"];
            DataSet ds = DbAccess.FetchData("SELECT * FROM Product_Tb WHERE P_Name = '" + q + "' or Image = '" + q + "'");

            if (ds.Tables[0].Rows.Count != 0)
            {
                //the product name, image, and details are retrieved from ds
                Image.ImageUrl = ds.Tables[0].Rows[0]["Image"].ToString();
                lName.Text = ds.Tables[0].Rows[0]["P_Name"].ToString();
                lDetails.Text = ds.Tables[0].Rows[0]["P_Details"].ToString();
            }
            else
                Response.Redirect("Default.aspx");
                
        }
    }
    protected void bAddToCart_Click(object sender, EventArgs e)
    {
        //if a user isn't logged in and clicks Add To Cart
        //he will be redirected to the login page, with the name of the current product as the query string
        if (Session["loggedIn"] != "user")
        {
            Response.Redirect("LogIn.aspx?cart=" + lName.Text);
        }

        //gets the logged in user's email id from session and stores it in email.
        //inserts a new tuple in cart table with the user's email and the product name.
        try
        {
            string email = Session["id"].ToString();
            DbAccess.SaveData("Insert into Cart Values('"+email+"','"+lName.Text+"')");

            lMessage.Text = "Item Added to Your Cart";
        }
        catch (SqlException ex)
        {
            if (ex.Number == 2627) //this number is a special case when primary key violation occurs
            {
                lMessage.ForeColor = System.Drawing.Color.DarkRed;
                lMessage.Text = "This Item is Already in Your Cart";
            }
            else
                throw ex;
        }
        catch(Exception ex)
        {
            ex.Message.ToString();
        }
    }
}