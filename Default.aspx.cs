using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }


    protected void ibMobiles_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Search.aspx?q=Mobile");
    }
    protected void ibLaptops_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Search.aspx?q=Laptop");
    }
    protected void ibCameras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Search.aspx?q=Camera");
    }
    protected void iTelevisions_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Search.aspx?q=Television");
    }
}