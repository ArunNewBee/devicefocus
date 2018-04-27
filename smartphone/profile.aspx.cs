using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class smartphone_profile : System.Web.UI.Page
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
                cmd.CommandText = "select altname from smartphone where " +
                "altname like '%'+ @SearchText + '%'";
                cmd.Parameters.AddWithValue("@SearchText", prefixText);
                cmd.Connection = conn;
                conn.Open();
                List<string> customers = new List<string>();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        customers.Add(sdr["altname"].ToString());
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
        sql = "select * from smartphone where regno='" + strReg + "'";
        dr = db.reader(sql);
        if (dr.Read())
        {
            string altname = dr["altname"].ToString();
            string display = dr["screensize"].ToString();
            string processor = dr["processor"].ToString();
            string frontcam = dr["frontcam"].ToString();
            string rearcam = dr["rearcam"].ToString();
            string resolution = dr["resolution"].ToString();
            string RAM = dr["RAM"].ToString();
            string os = dr["os"].ToString();
            string simtype = dr["noofsim"].ToString();
            string batcap = dr["batcap"].ToString();
            string yt = dr["youtubelink"].ToString();
            string source = dr["source"].ToString();
            
            Label1.Text = altname;
            lblalt.Text = altname;
            lbldis.Text = display;
            lblpro.Text = processor;
            lblfcam.Text = frontcam;
            lblrcam.Text = rearcam;
            lblres.Text = resolution;
            lblram.Text = RAM+" GB";
            lblos.Text = os;
            lblsto.Text = simtype;
            lblbat.Text = batcap;
            ifrm.Attributes["src"] = yt;
            if (yt == "NA")
            {
                ifrm.Visible = false;
            }
            if (yt == "")
            {
                ifrm.Visible = false;
            }
            if (source == "NA")
            {
                LinkButton3.PostBackUrl = "#";
            }
            else if (source == "")
            {
                LinkButton3.PostBackUrl = "#";
            }
            else
            {
                LinkButton3.PostBackUrl = source;
            }
            if (os == "Android")
            {
                Image16.ImageUrl = "../images/android_device_focus.png";
            }
            else if (os == "iOS")
            {
                Image16.ImageUrl = "~/images/iOS_device_focus.png";
            }
            else if (os == "Windows")
            {
                Image16.ImageUrl = "~/images/windows_device_focus.png";
            }
            
        }
    }
    protected void txtContactsSearch_TextChanged(object sender, EventArgs e)
    {
        database db = new database();
        db.con.Open();
        sql = "select regno from smartphone where altname='" + txtContactsSearch.Text + "'";
        dr = db.reader(sql);
        if (dr.Read())
        {
            sstr = dr["regno"].ToString();
            Response.Redirect("compare.aspx?strReg="+strReg+"&sstr="+sstr);
        }
    }
}