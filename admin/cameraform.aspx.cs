using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.IO;
using System.Web.Services;

public partial class admin_cameraform : System.Web.UI.Page
{
    SqlDataReader dr;
    database db = new database();
    string sql,sqlpic,strreg,strpic;
    int regid,picid;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnok_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/png")
            {
                db.con.Open();
                string sql = "select * from regid";
                dr = db.reader(sql);
                if (dr.Read())
                {
                    regid = Convert.ToInt16(dr["regid"].ToString());
                    Convert.ToDecimal(regid);
                    picid = Convert.ToInt16(dr["picid"].ToString());
                    Convert.ToDecimal(picid);
                    regid = regid + 1;
                    strreg = Convert.ToString(regid);
                    db.con.Close();

                }
               sql = "update regid set regid='" + strreg + "'";
                db.exsql(sql);
                string fileName1 = (ddlbrand.SelectedItem.ToString() + "_" + txtmodel.Text + "_1.png");
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/pictures/" + fileName1));
                SqlConnection conn;
                SqlCommand cmd;

                string cmdString = @"Insert camera(regno, brand, model, title, type, pic, color, autofocus, focusmode, otherlensfeatures, focallength, manualfocus, focuspoints, focusrange, lensservo, focus, opticalzoom, digitalzoom, weight, dimension, pixel, maxreso, minreso, maxshutterspeed, minshutterspeed, shutterreleasemodes, inbuiltflash, externalflash, flashmodes, otherflashfeatures, sensorsize, sensortype, sensorformat, monitorsize, monitortype, monitorreso, microphone, usbcable, pictbridge, accessoryshoe, audiovideointerface, tripodsocket, imagesizing, imageformat, facedetection, videoformat, powersupply, batterytype, aperturerange, redeyereduction, dustreduction, temperature, syncterminal, deletefunction, continuousshot, whitebal, selftimer, hdmi, meteringmodes, supportedlanguages, additionalfeatures, price, youtube, source, verified) values('" + strreg + "','" + ddlbrand.SelectedItem + "','" + txtmodel.Text + "','" + ddlbrand.SelectedItem + " " + txtmodel.Text + "','" + ddltype.SelectedItem + "','../pictures/" + fileName1 + "','" + txtcolor.Text + "','" + ddlautofocus.SelectedItem + "','" + txtfocusmode.Text + "','" + txtlensfeatures.Text + "','" + txtfocallength.Text + "','" + ddlmanualfocus.SelectedItem + "','" + txtfocuspoints.Text + "','" + txtfocusrange.Text + "','" + txtlensservo.Text + "','" + ddlfocus.SelectedItem + "','" + txtoptzoom.Text + "','" + txtdigizoom.Text + "','" + txtweight.Text + "','" + txtdimension.Text + "','" + txtpixel.Text + "','" + txtmaxreso.Text + "','" + txtminreso.Text + "','" + txtmaxshu.Text + "','" + txtminshu.Text + "','" + txtshuttermodes.Text + "','" + ddlinbuiltflash.SelectedItem + "','" + ddlexternalflash.SelectedItem + "','" + txtflashmodes.Text + "','" + txtotrflashfeatures.Text + "','" + txtsensorsize.Text + "','" + ddlsensortype.SelectedItem + "','" + txtsensorformat.Text + "','" + txtmonitorsize.Text + "','" + txtmonitortype.Text + "','" + txtmonitorresolution.Text + "','" + txtmicrophone.Text + "','" + txtusbcable.Text + "','" + ddlpictbridge.SelectedItem + "','" + txtaccessoryshoe.Text + "','" + txtaudiovideo.Text + "','" + txttripodsocket.Text + "','" + txtimagingsize.Text + "','" + txtimageformat.Text + "','" + ddlface.SelectedItem + "','" + txtvideoformat.Text + "','" + txtpowersupply.Text + "','" + txtbatterytype.Text + "','" + txtaprange.Text + "','" + ddlredeye.SelectedItem + "','" + dddust.SelectedItem + "','" + txttemp.Text + "','" + ddlsyncter.SelectedItem + "','" + ddldel.SelectedItem + "','" + txtcontshot.Text + "','" + txtwhitebal.Text + "','" + ddlself.SelectedItem + "','" + txthdmi.Text + "','" + txtmetering.Text + "','" + txtsupplang.Text + "','" + txtaddfeatures.Text + "','" + txtprice.Text + "','" + txtyoutube.Text + "','" + txtsource.Text + "','yes')";
                
                conn = new SqlConnection(@"Data Source=208.91.198.59;User ID=devicedata;Password='!#focuS*1'");
                cmd = new SqlCommand(cmdString, conn);
                
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                
               

            }
            else
            {
                lblmsg.Text = "Invalid file.";
            }
        }
        else
        {
            lblmsg.Text = "Select an Image";
        }



        if (FileUpload2.HasFile)
        {
            if (FileUpload2.PostedFile.ContentType == "image/jpeg" || FileUpload2.PostedFile.ContentType == "image/png")
            {
                picid = picid + 1;
                strpic = Convert.ToString(picid);

                string fileName2 = (ddlbrand.SelectedItem.ToString() + "_" + txtmodel.Text + "_2.png");
                FileUpload2.PostedFile.SaveAs(Server.MapPath("~/pictures/" + fileName2));

                SqlConnection conn;
                SqlCommand cmdpic;
                string cmdStringpic = @"Insert picture(id,regno,pic) values('" + strpic + "','" + strreg + "','../pictures/" + fileName2 + "')";
                conn = new SqlConnection(@"Data Source=208.91.198.59;User ID=devicedata;Password='!#focuS*1'");
                cmdpic = new SqlCommand(cmdStringpic, conn);
                conn.Open();
                cmdpic.ExecuteNonQuery();
                conn.Close();
            }
            else
            {
                lblmsg0.Text = "Invalid file.";
            }
        }
        if (FileUpload3.HasFile)
        {
            if (FileUpload3.PostedFile.ContentType == "image/jpeg" || FileUpload3.PostedFile.ContentType == "image/png")
            {
                picid = picid + 1;
                strpic = Convert.ToString(picid);

                string fileName3 = (ddlbrand.SelectedItem.ToString() + "_" + txtmodel.Text + "_3.png");
                FileUpload3.PostedFile.SaveAs(Server.MapPath("~/pictures/" + fileName3));

                SqlConnection conn;
                SqlCommand cmdpic;
                string cmdStringpic = @"Insert picture(id,regno,pic) values('" + strpic + "','" + strreg + "','../pictures/" + fileName3 + "')";
                conn = new SqlConnection(@"Data Source=208.91.198.59;User ID=devicedata;Password='!#focuS*1'");
                cmdpic = new SqlCommand(cmdStringpic, conn);
                conn.Open();
                cmdpic.ExecuteNonQuery();
                conn.Close();

            }
            else
            {
                lblmsg1.Text = "Invalid file.";
            }
        }
        if (FileUpload4.HasFile)
        {
            if (FileUpload4.PostedFile.ContentType == "image/jpeg" || FileUpload4.PostedFile.ContentType == "image/png")
            {
                picid = picid + 1;
                strpic = Convert.ToString(picid);

                string fileName4 = (ddlbrand.SelectedItem.ToString() + "_" + txtmodel.Text + "_4.png");
                FileUpload4.PostedFile.SaveAs(Server.MapPath("~/pictures/" + fileName4));

                SqlConnection conn;
                SqlCommand cmdpic;
                string cmdStringpic = @"Insert picture(id,regno,pic) values('" + strpic + "','" + strreg + "','../pictures/" + fileName4 + "')";
                conn = new SqlConnection(@"Data Source=208.91.198.59;User ID=devicedata;Password='!#focuS*1'");
                cmdpic = new SqlCommand(cmdStringpic, conn);
                conn.Open();
                cmdpic.ExecuteNonQuery();
                conn.Close();

            }
            else
            {
                lblmsg2.Text = "Invalid file.";
            }
        }

        if (FileUpload5.HasFile)
        {
            if (FileUpload5.PostedFile.ContentType == "image/jpeg" || FileUpload5.PostedFile.ContentType == "image/png")
            {
                picid = picid + 1;
                strpic = Convert.ToString(picid);

                string fileName5 = (ddlbrand.SelectedItem.ToString() + "_" + txtmodel.Text + "_5.png");
                FileUpload5.PostedFile.SaveAs(Server.MapPath("~/pictures/" + fileName5));

                SqlConnection conn;
                SqlCommand cmdpic;
                string cmdStringpic = @"Insert picture(id,regno,pic) values('" + strpic + "','" + strreg + "','../pictures/" + fileName5 + "')";
                conn = new SqlConnection(@"Data Source=208.91.198.59;User ID=devicedata;Password='!#focuS*1'");
                cmdpic = new SqlCommand(cmdStringpic, conn);
                conn.Open();
                cmdpic.ExecuteNonQuery();
                conn.Close();

            }
            else
            {
                lblmsg3.Text = "Invalid file.";
            }
        }


        if (FileUpload6.HasFile)
        {
            if (FileUpload6.PostedFile.ContentType == "image/jpeg" || FileUpload6.PostedFile.ContentType == "image/png")
            {
                picid = picid + 1;
                strpic = Convert.ToString(picid);

                string fileName6 = (ddlbrand.SelectedItem.ToString() + "_" + txtmodel.Text + "_6.png");
                FileUpload6.PostedFile.SaveAs(Server.MapPath("~/pictures/" + fileName6));

                SqlConnection conn;
                SqlCommand cmdpic;
                string cmdStringpic = @"Insert picture(id,regno,pic) values('" + strpic + "','" + strreg + "','../pictures/" + fileName6 + "')";
                conn = new SqlConnection(@"Data Source=208.91.198.59;User ID=devicedata;Password='!#focuS*1'");
                cmdpic = new SqlCommand(cmdStringpic, conn);
                conn.Open();
                cmdpic.ExecuteNonQuery();
                conn.Close();

            }
            else
            {
                lblmsg4.Text = "Invalid file.";
            }
        }


        sqlpic = "update regid set picid='" + strpic + "'";
        db.exsql(sqlpic);

    }
}