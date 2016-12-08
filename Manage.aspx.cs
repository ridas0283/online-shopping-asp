using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Manage : System.Web.UI.Page
{
    static int purchaseNo = -1;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void bDispatch_Click(object sender, EventArgs e)
    {
        //returns if purchaseNo has not been initialized, means a row hasn't been clicked
        if (purchaseNo == -1)
            return;
        try
        {
            DbAccess.SaveData("Update Purchase Set Delivery_Status = 'In Transit' Where Purchase_No = " + purchaseNo + "");
            Response.Redirect(Request.Url.AbsoluteUri);
        }
        catch(Exception ex)
        {
            lMessage.Text = ex.Message.ToString();
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //gets the string value of the selected row's purchase number and parses to int
        GridViewRow row = GridView1.SelectedRow;
        purchaseNo = Int32.Parse(row.Cells[1].Text);
    }
}