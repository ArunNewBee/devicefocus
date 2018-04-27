using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class smartwatch_compare : System.Web.UI.Page
{
    string strReg, sstr, sql, sql1,title1,title2;
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
        if (Request["sstr"] != null)
        {
            sstr = Request.QueryString["sstr"];
        }
        else
        {
            sstr = Convert.ToString(Session["sstr"]);
        }
        display1();
        display2();
    }
    public void display1()
    {
        database db = new database();
        db.con.Open();
        sql = "select * from smartwatch where regno='" + strReg + "'";
        dr = db.reader(sql);
        if (dr.Read())
        {
            string brand = dr["brand"].ToString();
            string pic = dr["pic"].ToString();
            string modelname = dr["modelname"].ToString();
            title1 = dr["title"].ToString();
            string dialshape = dr["dialshape"].ToString();
            string strapcolor = dr["strapcolor"].ToString();
            string waterresistant = dr["waterresistant"].ToString();
            string displaysize = dr["displaysize"].ToString();
            string resolution = dr["resolution"].ToString();
            string os = dr["os"].ToString();
            string osver = dr["osversion"].ToString();
            string expmem = dr["expmem"].ToString();
            string intmem = dr["intmem"].ToString();
            string bluetooth = dr["bluetooth"].ToString();
            string bluetoothversion = dr["bluetoothversion"].ToString();
            string callfunction = dr["callfunction"].ToString();
            string gps = dr["gps"].ToString();
            string wifi = dr["wifi"].ToString();
            string messaging = dr["messaging"].ToString();
            string primarycam = dr["primarycam"].ToString();
            string othercam = dr["othercam"].ToString();
            string microphone = dr["microphone"].ToString();
            string audioformat = dr["audioformat"].ToString();
            string videoformat = dr["videoformat"].ToString();
            string speaker = dr["speaker"].ToString();
            string datetimedisplay = dr["datetimedisplay"].ToString();
            string alarm = dr["alarm"].ToString();
            string compass = dr["compass"].ToString();
            string calender = dr["calender"].ToString();
            string altimeter = dr["altimeter"].ToString();
            string chronograph = dr["chronograph"].ToString();
            string sensors = dr["sensors"].ToString();
            string otherfeatures = dr["otherfeatures"].ToString();
            string itemsinside = dr["itemsinside"].ToString();
            string compos = dr["compos"].ToString();
            string compdevice = dr["compdevice"].ToString();
           
            
            lblbrand1.Text = brand;
            lblmodel1.Text = modelname;
            Image4.ImageUrl = pic;
            lblshape1.Text = dialshape;
            lblstrap1.Text = strapcolor;
            lblwater1.Text = waterresistant;
            lbldisp1.Text = displaysize;
            lblreso1.Text = resolution;
            lblos1.Text = os;
            lblosver1.Text = osver;
            lblexpmem1.Text = expmem;
            lblintmem1.Text = intmem;
            lblbluetooth1.Text = bluetooth;
            lblblutver1.Text = bluetoothversion;
            lblcall1.Text = callfunction;
            lblgps1.Text = gps;
            lblwifi1.Text = wifi;
            lblmsg1.Text = messaging;
            lblpcam1.Text = primarycam;
            lblotrcam1.Text = othercam;
            lblmicro1.Text = microphone;
            lblaudio1.Text = audioformat;
            lblvideo1.Text = videoformat;
            lblspkr1.Text = speaker;
            lblwatch1.Text = datetimedisplay;
            lblalarm1.Text = alarm;
            lblcomp1.Text = compass;
            lblcal1.Text = calender;
            lblaltmtr1.Text = altimeter;
            lblchro1.Text = chronograph;
            lblsens1.Text = sensors;
            lblotrfeatr1.Text = otherfeatures;
            lblitems1.Text = itemsinside;
            lblcompos1.Text = compos;
            lblcompdevice1.Text = compdevice;
            lblalt1.Text = title1;
            
        }
    }

    public void display2()
    {
        database db = new database();
        db.con.Open();
        sql1 = "select * from smartwatch where regno='" + sstr + "'";
        dr = db.reader(sql1);
        if (dr.Read())
        {
            string brand = dr["brand"].ToString();
            string pic = dr["pic"].ToString();
            string modelname = dr["modelname"].ToString();
            title2 = dr["title"].ToString();
            string dialshape = dr["dialshape"].ToString();
            string strapcolor = dr["strapcolor"].ToString();
            string waterresistant = dr["waterresistant"].ToString();
            string displaysize = dr["displaysize"].ToString();
            string resolution = dr["resolution"].ToString();
            string os = dr["os"].ToString();
            string osver = dr["osversion"].ToString();
            string expmem = dr["expmem"].ToString();
            string intmem = dr["intmem"].ToString();
            string bluetooth = dr["bluetooth"].ToString();
            string bluetoothversion = dr["bluetoothversion"].ToString();
            string callfunction = dr["callfunction"].ToString();
            string gps = dr["gps"].ToString();
            string wifi = dr["wifi"].ToString();
            string messaging = dr["messaging"].ToString();
            string primarycam = dr["primarycam"].ToString();
            string othercam = dr["othercam"].ToString();
            string microphone = dr["microphone"].ToString();
            string audioformat = dr["audioformat"].ToString();
            string videoformat = dr["videoformat"].ToString();
            string speaker = dr["speaker"].ToString();
            string datetimedisplay = dr["datetimedisplay"].ToString();
            string alarm = dr["alarm"].ToString();
            string compass = dr["compass"].ToString();
            string calender = dr["calender"].ToString();
            string altimeter = dr["altimeter"].ToString();
            string chronograph = dr["chronograph"].ToString();
            string sensors = dr["sensors"].ToString();
            string otherfeatures = dr["otherfeatures"].ToString();
            string itemsinside = dr["itemsinside"].ToString();
            string compos = dr["compos"].ToString();
            string compdevice = dr["compdevice"].ToString();


            lblbrand2.Text = brand;
            lblmodel2.Text = modelname;
            Image5.ImageUrl = pic;
            lblshape2.Text = dialshape;
            lblstrap2.Text = strapcolor;
            lblwater2.Text = waterresistant;
            lbldisp2.Text = displaysize;
            lblreso2.Text = resolution;
            lblos2.Text = os;
            lblosver2.Text = osver;
            lblexpmem2.Text = expmem;
            lblintmem2.Text = intmem;
            lblbluetooth2.Text = bluetooth;
            lblblutver2.Text = bluetoothversion;
            lblcall2.Text = callfunction;
            lblgps2.Text = gps;
            lblwifi2.Text = wifi;
            lblmsg2.Text = messaging;
            lblpcam2.Text = primarycam;
            lblotrcam2.Text = othercam;
            lblmicro2.Text = microphone;
            lblaudio2.Text = audioformat;
            lblvideo2.Text = videoformat;
            lblspkr2.Text = speaker;
            lblwatch2.Text = datetimedisplay;
            lblalarm2.Text = alarm;
            lblcomp2.Text = compass;
            lblcal2.Text = calender;
            lblaltmtr2.Text = altimeter;
            lblchro2.Text = chronograph;
            lblsens2.Text = sensors;
            lblotrfeatr2.Text = otherfeatures;
            lblitems2.Text = itemsinside;
            lblcompos2.Text = compos;
            lblcompdevice2.Text = compdevice;
            lblalt2.Text = title2;
        }
    }
    
}