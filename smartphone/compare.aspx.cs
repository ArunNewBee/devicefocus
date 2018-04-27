using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class smartphone_compare : System.Web.UI.Page
{
    string strReg, sstr, sql, sql1;
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
        sql = "select * from smartphone where regno='" + strReg + "'";
        dr = db.reader(sql);
        if (dr.Read())
        {
            string brand = dr["brand"].ToString();
            string pic = dr["pic"].ToString();
            string releasedate = dr["releasedate"].ToString();
            string formfactor = dr["formfactor"].ToString();
            string dimension = dr["dimension"].ToString();
            string wieght = dr["weight"].ToString();
            string batcap = dr["batcap"].ToString();
            string removablebat = dr["removablebat"].ToString();
            string colors = dr["colors"].ToString();
            string sar = dr["SAR"].ToString();
            string screensize = dr["screensize"].ToString();
            string touchscreen = dr["touchscreen"].ToString();
            string touchscreentype = dr["touchscreentype"].ToString();
            string resolution = dr["resolution"].ToString();
            string pixelperinch = dr["pixelperinch"].ToString();
            string dispcolor = dr["dispcolor"].ToString();
            string processor = dr["processor"].ToString();
            string RAM = dr["RAM"].ToString();
            string intstorage = dr["intstorage"].ToString();
            string expstorage = dr["expstorage"].ToString();
            string frontcam = dr["frontcam"].ToString();
            string rearcam = dr["rearcam"].ToString();
            string flash = dr["flash"].ToString();
            string os = dr["os"].ToString();
            string osver = dr["osver"].ToString();
            string java = dr["javasupport"].ToString();
            string browser = dr["browser"].ToString();
            string wifi = dr["wifi"].ToString();
            string wifistnd = dr["wifistnd"].ToString();
            string gps = dr["GPS"].ToString();
            string bluetooth = dr["bluetooth"].ToString();
            string nfc = dr["NFC"].ToString();
            string bluetoothprofiles = dr["bluetoothprofiles"].ToString();
            string dlna = dr["DLNA"].ToString();
            string wifidir = dr["wifidir"].ToString();
            string MHL = dr["MHL"].ToString();
            string hdmi = dr["HDMI"].ToString();
            string headphone = dr["headphone"].ToString();
            string fm = dr["FM"].ToString();
            string usb = dr["USB"].ToString();
            string noofsim = dr["noofsim"].ToString();
            string simtype = dr["simtype"].ToString();
            string infra = dr["infra"].ToString();
            string twog = dr["twog"].ToString();
            string threeg = dr["threeg"].ToString();
            string fourg = dr["fourg"].ToString();
            string compass = dr["compass"].ToString();
            string proxi = dr["proxi"].ToString();
            string accmtr = dr["accmtr"].ToString();
            string amplightsensor = dr["noofsim"].ToString();
            string gyroscope = dr["gyroscope"].ToString();
            string baromtr = dr["baromtr"].ToString();
            string temp = dr["temp"].ToString();
            string altname = dr["altname"].ToString();
            
            lblalt1.Text = altname;
            lblname1.Text = altname;
            Image4.ImageUrl = pic;
            lblformfactor1.Text = formfactor;
            lbldim1.Text = dimension;
            lblwei1.Text = wieght;
            lblbatcap1.Text = batcap;
            lblrem1.Text = removablebat;
            lblcolr1.Text = colors;
            lblsar1.Text = sar;
            lblscrsz1.Text = screensize;
            lbltouchscr1.Text = touchscreen;
            lbltouchscrtype1.Text = touchscreentype;
            lblreso1.Text = resolution;
            lblppi1.Text = pixelperinch;
            lblproc1.Text = processor;
            lblram1.Text = RAM;
            lblin1.Text = intstorage;
            lblexp1.Text = expstorage;
            lblrcam1.Text = rearcam;
            lblfcam1.Text = frontcam;
            lblflash1.Text = flash;
            lblos1.Text = os;
            lblosver1.Text = osver;
            lbljava1.Text = java;
            lblbrow1.Text = browser;
            lblwifi1.Text = wifi;
            lblwifistd1.Text = wifistnd;
            lblgps1.Text = gps;
            lblbt1.Text = bluetooth;
            lblnfc1.Text = nfc;
            lblbtpro1.Text = bluetoothprofiles;
            lblmhl1.Text = MHL;
            lbldlna1.Text = dlna;
            lblwifidir1.Text = wifidir;
            lblhdmi1.Text = hdmi;
            lblhdph1.Text = headphone;
            lblfm1.Text = fm;
            lblusb1.Text = usb;
            lblnoofsim1.Text = noofsim;
            lblsimtype1.Text = simtype;
            lblinfra1.Text = infra;
            lbl2g1.Text = twog;
            lbl3g1.Text = threeg;
            lbl4g1.Text = fourg;
            lblcomp1.Text = compass;
            lblprox1.Text = proxi;
            lblacc1.Text = accmtr;
            lblamp1.Text = amplightsensor;
            lblgyr1.Text = gyroscope;
            lblbaro1.Text = baromtr;
            lbltemp1.Text = temp;
        }
    }

    public void display2()
    {
        database db = new database();
        db.con.Open();
        sql1 = "select * from smartphone where regno='" + sstr + "'";
        dr = db.reader(sql1);
        if (dr.Read())
        {
            string brand = dr["brand"].ToString();
            string pic = dr["pic"].ToString();
            string releasedate = dr["releasedate"].ToString();
            string formfactor = dr["formfactor"].ToString();
            string dimension = dr["dimension"].ToString();
            string wieght = dr["weight"].ToString();
            string batcap = dr["batcap"].ToString();
            string removablebat = dr["removablebat"].ToString();
            string colors = dr["colors"].ToString();
            string sar = dr["SAR"].ToString();
            string screensize = dr["screensize"].ToString();
            string touchscreen = dr["touchscreen"].ToString();
            string touchscreentype = dr["touchscreentype"].ToString();
            string resolution = dr["resolution"].ToString();
            string pixelperinch = dr["pixelperinch"].ToString();
            string dispcolor = dr["dispcolor"].ToString();
            string processor = dr["processor"].ToString();
            string RAM = dr["RAM"].ToString();
            string intstorage = dr["intstorage"].ToString();
            string expstorage = dr["expstorage"].ToString();
            string frontcam = dr["frontcam"].ToString();
            string rearcam = dr["rearcam"].ToString();
            string flash = dr["flash"].ToString();
            string os = dr["os"].ToString();
            string osver = dr["osver"].ToString();
            string java = dr["javasupport"].ToString();
            string browser = dr["browser"].ToString();
            string wifi = dr["wifi"].ToString();
            string wifistnd = dr["wifistnd"].ToString();
            string gps = dr["GPS"].ToString();
            string bluetooth = dr["bluetooth"].ToString();
            string nfc = dr["NFC"].ToString();
            string bluetoothprofiles = dr["bluetoothprofiles"].ToString();
            string dlna = dr["DLNA"].ToString();
            string wifidir = dr["wifidir"].ToString();
            string MHL = dr["MHL"].ToString();
            string hdmi = dr["HDMI"].ToString();
            string headphone = dr["headphone"].ToString();
            string fm = dr["FM"].ToString();
            string usb = dr["USB"].ToString();
            string noofsim = dr["noofsim"].ToString();
            string simtype = dr["simtype"].ToString();
            string infra = dr["infra"].ToString();
            string twog = dr["twog"].ToString();
            string threeg = dr["threeg"].ToString();
            string fourg = dr["fourg"].ToString();
            string compass = dr["compass"].ToString();
            string proxi = dr["proxi"].ToString();
            string accmtr = dr["accmtr"].ToString();
            string amplightsensor = dr["noofsim"].ToString();
            string gyroscope = dr["gyroscope"].ToString();
            string baromtr = dr["baromtr"].ToString();
            string temp = dr["temp"].ToString();
            string altname = dr["altname"].ToString();

            lblalt2.Text = altname;
            lblname2.Text = altname;
            Image5.ImageUrl = pic;
            lblformfactor2.Text = formfactor;
            lbldim2.Text = dimension;
            lblwei2.Text = wieght;
            lblbatcap2.Text = batcap;
            lblrem2.Text = removablebat;
            lblcolr2.Text = colors;
            lblsar2.Text = sar;
            lblscrsz2.Text = screensize;
            lbltouchscr2.Text = touchscreen;
            lbltouchscrtype2.Text = touchscreentype;
            lblreso2.Text = resolution;
            lblppi2.Text = pixelperinch;
            lblproc2.Text = processor;
            lblram2.Text = RAM;
            lblin2.Text = intstorage;
            lblexp2.Text = expstorage;
            lblrcam2.Text = rearcam;
            lblfcam2.Text = frontcam;
            lblflash2.Text = flash;
            lblos2.Text = os;
            lblosver2.Text = osver;
            lbljava2.Text = java;
            lblbrow2.Text = browser;
            lblwifi2.Text = wifi;
            lblwifistd2.Text = wifistnd;
            lblgps2.Text = gps;
            lblbt2.Text = bluetooth;
            lblnfc2.Text = nfc;
            lblbtpro2.Text = bluetoothprofiles;
            lblmhl2.Text = MHL;
            lbldlna2.Text = dlna;
            lblwifidir2.Text = wifidir;
            lblhdmi2.Text = hdmi;
            lblhdph2.Text = headphone;
            lblfm2.Text = fm;
            lblusb2.Text = usb;
            lblnoofsim2.Text = noofsim;
            lblsimtype2.Text = simtype;
            lblinfra2.Text = infra;
            lbl2g2.Text = twog;
            lbl3g2.Text = threeg;
            lbl4g2.Text = fourg;
            lblcomp2.Text = compass;
            lblprox2.Text = proxi;
            lblacc2.Text = accmtr;
            lblamp2.Text = amplightsensor;
            lblgyr2.Text = gyroscope;
            lblbaro2.Text = baromtr;
            lbltemp2.Text = temp;
        }
    }
    
}