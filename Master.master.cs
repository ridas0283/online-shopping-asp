using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //if the loggedIn session variable is set to user, 
        //the Log In and Sign Up buttons on the Master Page are set to hidden
        //and the Log Out and Settings buttons are set to visible
        //and also the cart and my orders buttons are set to visible
        if (Session["loggedIn"] == "user")
        {
            bLogIn.Visible = false;
            bSignUp.Visible = false;
            bLogOut.Visible = true;
            bSettings.Visible = true;
            ibCart.Visible = true;
            bOrders.Visible = true;
        }

    }
    
    protected void bLogIn_Click(object sender, EventArgs e)
    {
        Response.Redirect("LogIn.aspx");
    }
    protected void bSignUp_Click(object sender, EventArgs e)
    {
        Response.Redirect("SignUp.aspx");
    }

    protected void bSearch_Click(object sender, EventArgs e)
    {
        //if the search box isn't empty, the search page loads with the text as the query string
        if (!String.IsNullOrWhiteSpace(tbSearch.Text))
        {
            Response.Redirect("Search.aspx?q=" + tbSearch.Text);
        }
    }

    protected void ibLogo_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void bLogOut_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect(Request.Url.AbsoluteUri);
    }
    protected void ibCart_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["loggedIn"] == "user")
        {
            Response.Redirect("Cart.aspx");
        }
    }

    protected void bOrders_Click(object sender, EventArgs e)
    {
        Response.Redirect("Orders.aspx");
    }
    protected void bMobiles_Click(object sender, EventArgs e)
    {
        Response.Redirect("Search.aspx?q=Mobile");
    }
    protected void bLaptops_Click(object sender, EventArgs e)
    {
        Response.Redirect("Search.aspx?q=Laptop");
    }
    protected void bCameras_Click(object sender, EventArgs e)
    {
        Response.Redirect("Search.aspx?q=Camera");
    }
    protected void bTelevisions_Click(object sender, EventArgs e)
    {
        Response.Redirect("Search.aspx?q=Television");
    }
}
