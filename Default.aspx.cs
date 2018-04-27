using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    string strReg, sql, sstr;
    SqlDataReader dr;
    database db = new database();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.ToString() == "Select budget")
        {
            Response.Redirect("smartphone/");
        }
        else
        {
            Response.Redirect("smartphone/Default.aspx?rt=" + DropDownList1.SelectedValue);
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("smartphone/Default.aspx?br=" + DropDownList3.SelectedValue);
    }
}