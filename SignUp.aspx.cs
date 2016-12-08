using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void bSignUp_Click(object sender, EventArgs e)
    {
        //checks if any field is empty or contains only white space
        if (String.IsNullOrWhiteSpace(tbEmailId.Text) || String.IsNullOrWhiteSpace(tbName.Text) || String.IsNullOrWhiteSpace(tbPassword.Text) || String.IsNullOrWhiteSpace(tbPhoneNo.Text) || String.IsNullOrWhiteSpace(tbAddress.Text))
        {
            lMessage.ForeColor = System.Drawing.Color.DarkRed;
            lMessage.Text = "Please Enter all the Details";
            return;
        }

        //checks if passwords don't match
        if (tbPassword.Text != tbReEnterPassword.Text)
        {
            lMessage.ForeColor = System.Drawing.Color.DarkRed;
            lMessage.Text = "The Passwords You Entered Are Different. Please Re Enter Them";
            return;
        }

        try
        {
            DbAccess.SaveData("Insert into User_Tb Values('" + tbEmailId.Text + "','" + tbPassword.Text + "','" + tbName.Text + "','" + tbAddress.Text + "'," + tbPhoneNo.Text + ",'" + ddlGender.Text + "', '" + tbDob.Text + "')");
            Response.Redirect("Home.aspx");
        }
        catch (SqlException ex)
        {
            if (ex.Number == 2627) //this number is a special case when primary key violation occurs
            {
                lMessage.ForeColor = System.Drawing.Color.DarkRed;
                lMessage.Text = "This Email ID Already Exists. Try Logging In";
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