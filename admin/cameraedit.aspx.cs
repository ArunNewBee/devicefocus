using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class admin_cameraedit : System.Web.UI.Page
{
    string strReg, sql, photo, brand, model,strpic, picz1;
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
        Image2.ImageUrl = "../pictures/" + brand + "_" + model + "_2.png";
        Image3.ImageUrl = "../pictures/" + brand + "_" + model + "_3.png";
        Image4.ImageUrl = "../pictures/" + brand + "_" + model + "_4.png";
        Image5.ImageUrl = "../pictures/" + brand + "_" + model + "_5.png";
        Image6.ImageUrl = "../pictures/" + brand + "_" + model + "_6.png";
    }
    public void display()
    {
        database db = new database();
        db.con.Open();
        sql = "select * from camera where regno='" + strReg + "'";
        dr = db.reader(sql);
        if (dr.Read())
        {
            string pic = dr["pic"].ToString();
            brand = dr["brand"].ToString(); 
            model = dr["model"].ToString();
            Image1.ImageUrl = pic;
        }
        db.con.Close();
    }
    
    protected void btnok1_Click(object sender, EventArgs e)
    {
         if (FileUpload1.HasFile)
        {

            string fileName = ( brand + "_" + model + "_1.png");

           
           FileUpload1.PostedFile.SaveAs(Server.MapPath("~/pictures/"+fileName));
                
        }
    }
    protected void btnok2_Click(object sender, EventArgs e)
    {
        if (FileUpload2.HasFile)
        {

        string fileName = (brand + "_" + model + "_2.png");
        FileUpload2.PostedFile.SaveAs(Server.MapPath("~/pictures/" + fileName));
        database db = new database();
        db.con.Open();
        string sql2a = "select pic from picture where pic='../pictures/"+ brand + "_" + model + "_2.png'";
        dr = db.reader(sql2a);
        if (dr.Read())
        {
            picz1 = dr["pic"].ToString();
        }
        db.con.Close();
        if (picz1 == null)
       
        {
            database db1 = new database();
            int picid;
            db1.con.Open();
            string sql2c = "select * from regid";
            dr = db1.reader(sql2c);
            if (dr.Read())
            {

                picid = Convert.ToInt16(dr["picid"].ToString());
                Convert.ToDecimal(picid);
                picid = picid + 1;
                strpic = Convert.ToString(picid);
                db1.con.Close();

            }
            SqlConnection sqlcon;
            SqlCommand cmdreg;
            string sql2d = "update regid set picid='" + strpic + "'";
            sqlcon = new SqlConnection(@"Data Source=208.91.198.59;User ID=devicedata;Password='!#focuS*1'");
            cmdreg = new SqlCommand(sql2d, sqlcon);
            sqlcon.Open();
            cmdreg.ExecuteNonQuery();
            sqlcon.Close();

            SqlConnection conn;
            SqlCommand cmdpic;
            string cmdStringpic = @"Insert picture(id,regno,pic) values('" + strpic + "','" + strReg + "','../pictures/" + brand + "_" + model + "_2.png')";
            conn = new SqlConnection(@"Data Source=208.91.198.59;User ID=devicedata;Password='!#focuS*1'");
            cmdpic = new SqlCommand(cmdStringpic, conn);
            conn.Open();
            cmdpic.ExecuteNonQuery();
            conn.Close();
        }
    }
    }
    protected void btnok3_Click(object sender, EventArgs e)
    {
        if (FileUpload3.HasFile)
        {
        string fileName1 = (brand + "_" + model + "_3.png");
        FileUpload3.PostedFile.SaveAs(Server.MapPath("~/pictures/" + fileName1));
        database db = new database();
        db.con.Open();
        string sql3a = "select pic from picture where pic='../pictures/" + brand + "_" + model + "_3.png'";
        dr = db.reader(sql3a);
        if (dr.Read())
        {
            picz1 = dr["pic"].ToString();
        }
        db.con.Close();
        if (picz1 == null)
        {
            database db1 = new database();
            int picid;
            db1.con.Open();
            string sql3c = "select * from regid";
            dr = db1.reader(sql3c);
            if (dr.Read())
            {

                picid = Convert.ToInt16(dr["picid"].ToString());
                Convert.ToDecimal(picid);
                picid = picid + 1;
                strpic = Convert.ToString(picid);
                db1.con.Close();

            }
            SqlConnection sqlcon;
            SqlCommand cmdreg;
            string sql3d = "update regid set picid='" + strpic + "'";
            sqlcon = new SqlConnection(@"Data Source=208.91.198.59;User ID=devicedata;Password='!#focuS*1'");
            cmdreg = new SqlCommand(sql3d, sqlcon);
            sqlcon.Open();
            cmdreg.ExecuteNonQuery();
            sqlcon.Close();

            SqlConnection conn;
            SqlCommand cmdpic;
            string cmdStringpic = @"Insert picture(id,regno,pic) values('" + strpic + "','" + strReg + "','../pictures/" + brand + "_" + model + "_3.png')";
            conn = new SqlConnection(@"Data Source=208.91.198.59;User ID=devicedata;Password='!#focuS*1'");
            cmdpic = new SqlCommand(cmdStringpic, conn);
            conn.Open();
            cmdpic.ExecuteNonQuery();
            conn.Close();
        }
    }
    }
    protected void btnok4_Click(object sender, EventArgs e)
    {
        if (FileUpload4.HasFile)
        {
            string fileName2 = (brand + "_" + model + "_4.png");
            FileUpload4.PostedFile.SaveAs(Server.MapPath("~/pictures/" + fileName2));
            database db = new database();
            db.con.Open();
            string sql4a = "select pic from picture where pic='../pictures/" + brand + "_" + model + "_4.png'";
            dr = db.reader(sql4a);
            if (dr.Read())
            {
                picz1 = dr["pic"].ToString();
            }
            db.con.Close();
            if (picz1 == null)
            {
                database db1 = new database();
                int picid;
                db1.con.Open();
                string sql4c = "select * from regid";
                dr = db1.reader(sql4c);
                if (dr.Read())
                {

                    picid = Convert.ToInt16(dr["picid"].ToString());
                    Convert.ToDecimal(picid);
                    picid = picid + 1;
                    strpic = Convert.ToString(picid);
                    db1.con.Close();

                }
                SqlConnection sqlcon;
                SqlCommand cmdreg;
                string sql4d = "update regid set picid='" + strpic + "'";
                sqlcon = new SqlConnection(@"Data Source=208.91.198.59;User ID=devicedata;Password='!#focuS*1'");
                cmdreg = new SqlCommand(sql4d, sqlcon);
                sqlcon.Open();
                cmdreg.ExecuteNonQuery();
                sqlcon.Close();

                SqlConnection conn;
                SqlCommand cmdpic;
                string cmdStringpic = @"Insert picture(id,regno,pic) values('" + strpic + "','" + strReg + "','../pictures/" + brand + "_" + model + "_4.png')";
                conn = new SqlConnection(@"Data Source=208.91.198.59;User ID=devicedata;Password='!#focuS*1'");
                cmdpic = new SqlCommand(cmdStringpic, conn);
                conn.Open();
                cmdpic.ExecuteNonQuery();
                conn.Close();
            }
        }
    }
    protected void btnok5_Click(object sender, EventArgs e)
    {
        if (FileUpload5.HasFile)
        {
            string fileName3 = (brand + "_" + model + "_5.png");
            FileUpload5.PostedFile.SaveAs(Server.MapPath("~/pictures/" + fileName3));
            database db = new database();
            db.con.Open();
            string sql5a = "select pic from picture where pic='../pictures/" + brand + "_" + model + "_5.png'";
            dr = db.reader(sql5a);
            if (dr.Read())
            {
                picz1 = dr["pic"].ToString();
            }
            db.con.Close();
            if (picz1 == null)
            {
                database db1 = new database();
                int picid;
                db1.con.Open();
                string sql5c = "select * from regid";
                dr = db1.reader(sql5c);
                if (dr.Read())
                {

                    picid = Convert.ToInt16(dr["picid"].ToString());
                    Convert.ToDecimal(picid);
                    picid = picid + 1;
                    strpic = Convert.ToString(picid);
                    db1.con.Close();

                }
                SqlConnection sqlcon;
                SqlCommand cmdreg;
                string sql5d = "update regid set picid='" + strpic + "'";
                sqlcon = new SqlConnection(@"Data Source=208.91.198.59;User ID=devicedata;Password='!#focuS*1'");
                cmdreg = new SqlCommand(sql5d, sqlcon);
                sqlcon.Open();
                cmdreg.ExecuteNonQuery();
                sqlcon.Close();

                SqlConnection conn;
                SqlCommand cmdpic;
                string cmdStringpic = @"Insert picture(id,regno,pic) values('" + strpic + "','" + strReg + "','../pictures/" + brand + "_" + model + "_5.png')";
                conn = new SqlConnection(@"Data Source=208.91.198.59;User ID=devicedata;Password='!#focuS*1'");
                cmdpic = new SqlCommand(cmdStringpic, conn);
                conn.Open();
                cmdpic.ExecuteNonQuery();
                conn.Close();
            }
        }
    }
    protected void btnok6_Click(object sender, EventArgs e)
    {
        if (FileUpload6.HasFile)
        {
            string fileName4 = (brand + "_" + model + "_6.png");
            FileUpload6.PostedFile.SaveAs(Server.MapPath("~/pictures/" + fileName4));
            database db = new database();
            db.con.Open();
            string sql6a = "select pic from picture where pic='../pictures/" + brand + "_" + model + "_6.png'";
            dr = db.reader(sql6a);
            if (dr.Read())
            {
                picz1 = dr["pic"].ToString();
            }
            db.con.Close();
            if (picz1 == null)
            {
                database db1 = new database();
                int picid;
                db1.con.Open();
                string sql6c = "select * from regid";
                dr = db1.reader(sql6c);
                if (dr.Read())
                {

                    picid = Convert.ToInt16(dr["picid"].ToString());
                    Convert.ToDecimal(picid);
                    picid = picid + 1;
                    strpic = Convert.ToString(picid);
                    db1.con.Close();

                }
                SqlConnection sqlcon;
                SqlCommand cmdreg;
                string sql6d = "update regid set picid='" + strpic + "'";
                sqlcon = new SqlConnection(@"Data Source=208.91.198.59;User ID=devicedata;Password='!#focuS*1'");
                cmdreg = new SqlCommand(sql6d, sqlcon);
                sqlcon.Open();
                cmdreg.ExecuteNonQuery();
                sqlcon.Close();

                SqlConnection conn;
                SqlCommand cmdpic;
                string cmdStringpic = @"Insert picture(id,regno,pic) values('" + strpic + "','" + strReg + "','../pictures/" + brand + "_" + model + "_6.png')";
                conn = new SqlConnection(@"Data Source=208.91.198.59;User ID=devicedata;Password='!#focuS*1'");
                cmdpic = new SqlCommand(cmdStringpic, conn);
                conn.Open();
                cmdpic.ExecuteNonQuery();
                conn.Close();
            }
        }
    }
}