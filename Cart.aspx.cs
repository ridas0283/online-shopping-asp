using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //only a logged in user can view his cart, redirects to default if a user isn't logged in
        if (Session["loggedIn"] != "user")
        {
            Response.Redirect("Default.aspx");
        }


        //Sums the Price column of the Cart GridView and displays it in lAmount
        double sum = 0;
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            sum = sum + Convert.ToDouble( GridView1.Rows[i].Cells[2].Text.ToString() );
        }
        //if the gridview is empty, it didn't enter the above loop, so vallue of sum remains 0,
        //so the value of sum is checked to determine if cart is empty or not
        if (sum != 0)
            lAmount.Text = "Your Total Amount is Rs. " + sum.ToString();
        else
        {
            lAmount.Text = "Your Cart is Empty";
            bBuy.Visible = false;
        }
            
    }

    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        Response.Redirect(Request.Url.AbsoluteUri); //reloads the page
    }

    protected void bBuy_Click(object sender, EventArgs e)
    {
        string email = Session["id"].ToString();
        DateTime dateTime = System.DateTime.Now;
        DateTime deliveryDate = System.DateTime.Now;
        deliveryDate.AddDays(7);    //sets the delivery date 7 days from today's date
        string paymentMode = "Cash On Delivery";
        string deliveryStatus = "In Transit";
        double amount = 0;

        //gets the number of rows in product_purchase table so that the purchase number can be incremented by 1 to obtain a unique one
        DataSet ds = DbAccess.FetchData("SELECT * FROM Product_Purchase");
        int purchaseNo = (ds.Tables[0].Rows.Count + 1) % 9000;

        int itemCount = GridView1.Rows.Count;   //number of items currently in the cart

        //calculates the total value of all products in the cart
        for (int i = 0; i < itemCount; i++)
        {
            amount = amount + Convert.ToDouble(GridView1.Rows[i].Cells[2].Text.ToString());
        }


        //inserts the details of the order with a purchase number
        try
        {
            DbAccess.SaveData("Insert Into Purchase Values(" + purchaseNo + ", '" + email + "','" + dateTime + "','" + deliveryDate + "','" + paymentMode + "','" + deliveryStatus + "'," + amount + ")");
        }
        catch(Exception ex)
        {
            Label2.Text = ex.Message.ToString() + " fuck";
            return;
        }

        
        try
        {
            //gets all the product names currently in the cart so that they can be inserted in the product_purchase table along with the purchase number
            DataSet dataSet = DbAccess.FetchData("Select P_Name from Cart Where Email_ID = '" + email + "'");
            for (int i = 0; i < itemCount; i++ )
            {
                DbAccess.SaveData("Insert into Product_Purchase Values(" + purchaseNo + ", '" + dataSet.Tables[0].Rows[i][0] + "')");
            }

            //after a record is inserted in the purchase table, and in product_purchase table, the cart items are deleted, and the page redirects to Confirm.aspx
            DbAccess.SaveData("Delete from Cart Where Email_ID = '" + email + "'");
            Response.Redirect("Confirm.aspx");
        }
        catch(Exception ex)
        {
            Label2.Text = ex.Message.ToString();
        }
        
    }
}