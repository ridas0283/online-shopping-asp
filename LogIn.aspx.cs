using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class LogIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void bLogIn_Click(object sender, EventArgs e)
    {
        //checks if either email or password field is empty or contains only white space
        if (String.IsNullOrWhiteSpace(tbEmail.Text) || String.IsNullOrWhiteSpace(tbPassword.Text))
        {
            lMessage.ForeColor = System.Drawing.Color.DarkRed;
            lMessage.Text = "Email or Password Cannot Be Empty";
            return;
        }

        try
        {
            //first checks the admin table
            DataSet ds = DbAccess.FetchData("Select * from Admin_Tb where Admin_ID = '" + tbEmail.Text + "' and Password = '" + tbPassword.Text + "';");
            //if the above call returned no rows to ds, the email password combination doesn't exist in the admin table
            //if it returned a row, the email password combination exists in the admin table and the page redirects to Add_Item
            if (ds.Tables[0].Rows.Count == 0)
            {
                //if the admin table returned no rows, checks the user table
                ds = DbAccess.FetchData("Select * from User_Tb where Email_ID = '" + tbEmail.Text + "' and Password = '" + tbPassword.Text + "';");
                
                if (ds.Tables[0].Rows.Count == 0)
                {
                    lMessage.ForeColor = System.Drawing.Color.DarkRed;
                    lMessage.Text = "You Entered an Incorrect Email or Password";
                }
                else // this else block is reached when an ID Password matched in the User table
                {
                    //creates 2 session variables because the master page hides log in and sign up buttons if a user is logged in
                    Session["loggedIn"] = "user";
                    Session["id"] = tbEmail.Text;
                    
                    //checks if this page was redirected to from Details.aspx because the user clicked add to cart without being logged in
                    if (Request.QueryString["cart"] != String.Empty)
                    {
                        string cart = Request.QueryString["cart"];
                        //redirects back to Details.aspx with the product name as the query string
                        //the query string is checked on Page Load in Details.aspx
                        Response.Redirect("Details.aspx?q=" + cart); 
                    }
                    //if the page wasn't redirected to from Details.aspx, Default.aspx is loaded
                    Response.Redirect("Default.aspx");
                }
                    
            }  
            else
            {
                Session["loggedIn"] = "admin";
                Response.Redirect("Add_Item.aspx");
            }
                
        }
        catch(Exception ex)
        {
            lMessage.ForeColor = System.Drawing.Color.DarkRed;
            lMessage.Text = ex.Message.ToString();
        }   
    }
}