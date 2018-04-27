using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class laptop_profile : System.Web.UI.Page
{
    string strReg, sql, email, photo, sstr;
    SqlDataReader dr;
    database db = new database();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request["strReg"] != null)
        {
            strReg = Request.QueryString["strReg"];
        }
        else
        {
            strReg = Convert.ToString(Session["strReg"]);
        }
        display();
        
    }

    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> SearchCustomers(string prefixText, int count)
    {
        using (SqlConnection conn = new SqlConnection())
        {
            conn.ConnectionString = ConfigurationManager
                    .ConnectionStrings["constr"].ConnectionString;
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select title from laptop where " +
                "title like '%'+ @SearchText + '%'";
                cmd.Parameters.AddWithValue("@SearchText", prefixText);
                cmd.Connection = conn;
                conn.Open();
                List<string> customers = new List<string>();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        customers.Add(sdr["title"].ToString());
                    }
                }
                conn.Close();
                return customers;
            }
        }
    }




    public void display()
    {
        database db = new database();
        db.con.Open();
        sql = "select * from laptop where regno='" + strReg + "'";
        dr = db.reader(sql);
        if (dr.Read())
        {
            string altname = dr["title"].ToString();
           
            Label1.Text = altname;
            lblalt.Text = altname;
            
        }
    }
    protected void txtContactsSearch_TextChanged(object sender, EventArgs e)
    {
        database db = new database();
        db.con.Open();
        sql = "select regno from laptop where title='" + txtContactsSearch.Text + "'";
        dr = db.reader(sql);
        if (dr.Read())
        {
            sstr = dr["regno"].ToString();
            Response.Redirect("compare.aspx?strReg="+strReg+"&sstr="+sstr);
        }
    }
}