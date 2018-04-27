using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Class1
/// </summary>
public class database
{

    public SqlConnection con = new SqlConnection(@"Data Source=208.91.198.59;User ID=devicedata;Password='!#focuS*1'");
    public SqlCommand cmd, cm, c;
    public SqlDataReader dr;
    int i;
    public database()
	{
		//
       
		// TODO: Add constructor logic here
		//
	}
    public void exsql(string s)
    {

        try
        {
            con.Open();
            cmd = new SqlCommand(s, con);
            int i = cmd.ExecuteNonQuery();
        }
        catch { }
        con.Close();
        return;

    }
    public SqlDataReader reader(String s)
    {
        try
        {
            //  con.Open();
            cm = new SqlCommand(s, con);
            dr = cm.ExecuteReader();
        }
        catch { }
        //con.Close();
        return dr;
    }
    public int scalar(String s)
    {
        try
        {
            i = 0;
            con.Open();
            c = new SqlCommand(s, con);
            if (Convert.IsDBNull(c.ExecuteScalar()) == false)
            {
                i = Convert.ToInt32(c.ExecuteScalar());
            }
        }
        catch { }
        finally
        {
            con.Close();
        }
        return i;

    }
}