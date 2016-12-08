using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if the page is accessed without logging in as an admin, it will redirect to the default page
        if (Session["loggedIn"] != "admin")
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void bAddItem_Click(object sender, EventArgs e)
    {
        Response.Redirect("Add_Item.aspx");
    }
    protected void bEditItem_Click(object sender, EventArgs e)
    {
        Response.Redirect("Edit_Item.aspx");
    }
    protected void bOut_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Default.aspx");
    }
    protected void bManage_Click(object sender, EventArgs e)
    {
        Response.Redirect("Manage.aspx");
    }
}
