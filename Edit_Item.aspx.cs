using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Edit_Item : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void bSearch_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "Select * From Product_Tb Where P_Name Like '%"+search.Text+"%' Or P_Details Like '%"+search.Text+"%' ";
    }
}