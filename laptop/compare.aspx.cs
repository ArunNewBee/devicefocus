using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class laptop_compare : System.Web.UI.Page
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
        sql = "select * from laptop where regno='" + strReg + "'";
        dr = db.reader(sql);
        if (dr.Read())
        {
            string brand = dr["brand"].ToString();
            string model = dr["model"].ToString();
            string title = dr["title"].ToString();
            string pic = dr["pic"].ToString();
            string processor = dr["processor"].ToString();
            string speed = dr["speed"].ToString();
            string cache = dr["cache"].ToString();
            string ram = dr["ram"].ToString();
            string type = dr["type"].ToString();
            string ramspeed = dr["ramspeed"].ToString();
            string inbuildhdd = dr["inbuildhdd"].ToString();
            string hdspeed = dr["hdspeed"].ToString();
            string screensize = dr["screensize"].ToString();
            string resolution = dr["resolution"].ToString();
            string paneltype = dr["paneltype"].ToString();
            string gpumodel = dr["gpumodel"].ToString();
            string gpumemory = dr["gpumemory"].ToString();
            string hdmiport = dr["hdmiport"].ToString();
            string ethernetport = dr["ethernetport"].ToString();
            string ethernettype = dr["ethernettype"].ToString();
            string wifitype = dr["wifitype"].ToString();
            string usb2 = dr["usb2"].ToString();
            string usb3 = dr["usb3"].ToString();
            string bluetooth = dr["bluetooth"].ToString();
            string buildincam = dr["buildincam"].ToString();
            string microphone = dr["microphone"].ToString();
            string digi = dr["digi"].ToString();
            string batterytype = dr["batterytype"].ToString();
            string batterycell = dr["batterycell"].ToString();
            string os = dr["os"].ToString();
            string warranty = dr["warranty"].ToString();
            string otherfeatures = dr["otherfeatures"].ToString();
                        
            lblalt1.Text = title;
            lblname1.Text = title;
            Image4.ImageUrl = pic;
            lblbrand1.Text = brand;
            lblmodel1.Text = model;
            lblproc1.Text = processor;
            lblprospeed1.Text = speed;
            lblcache1.Text = cache;
            lblram1.Text = ram + "GB";
            lblramtype1.Text = type;
            lblramspeed1.Text = ramspeed;
            lblhddcap1.Text = inbuildhdd + "GB";
            lblhdspeed1.Text = hdspeed;
            lblscrsize1.Text = screensize;
            lblreso1.Text = resolution;
            lblpanel1.Text = paneltype;
            lblgpumod1.Text = gpumodel;
            lblgpumem1.Text = gpumemory;
            lblhdmi1.Text = hdmiport;
            lblethport1.Text = ethernetport;
            lblethtype1.Text = ethernettype;
            lblwifi1.Text = wifitype;
            lblusbtwo1.Text = usb2;
            lblusbthree1.Text = usb3;
            lblblue1.Text = bluetooth;
            lblcam1.Text = buildincam;
            lblmicro1.Text = microphone;
            lbldigi1.Text = digi;
            lblbattype1.Text = batterytype;
            lblbatcell1.Text = batterycell;
            lblos1.Text = os;
            lblwarranty1.Text = warranty;
            lblfeature1.Text = otherfeatures;


        }
    }

    public void display2()
    {
        database db = new database();
        db.con.Open();
        sql1 = "select * from laptop where regno='" + sstr + "'";
        dr = db.reader(sql1);
        if (dr.Read())
        {
            string brand = dr["brand"].ToString();
            string model = dr["model"].ToString();
            string title = dr["title"].ToString();
            string pic = dr["pic"].ToString();
            string processor = dr["processor"].ToString();
            string speed = dr["speed"].ToString();
            string cache = dr["cache"].ToString();
            string ram = dr["ram"].ToString();
            string type = dr["type"].ToString();
            string ramspeed = dr["ramspeed"].ToString();
            string inbuildhdd = dr["inbuildhdd"].ToString();
            string hdspeed = dr["hdspeed"].ToString();
            string screensize = dr["screensize"].ToString();
            string resolution = dr["resolution"].ToString();
            string paneltype = dr["paneltype"].ToString();
            string gpumodel = dr["gpumodel"].ToString();
            string gpumemory = dr["gpumemory"].ToString();
            string hdmiport = dr["hdmiport"].ToString();
            string ethernetport = dr["ethernetport"].ToString();
            string ethernettype = dr["ethernettype"].ToString();
            string wifitype = dr["wifitype"].ToString();
            string usb2 = dr["usb2"].ToString();
            string usb3 = dr["usb3"].ToString();
            string bluetooth = dr["bluetooth"].ToString();
            string buildincam = dr["buildincam"].ToString();
            string microphone = dr["microphone"].ToString();
            string digi = dr["digi"].ToString();
            string batterytype = dr["batterytype"].ToString();
            string batterycell = dr["batterycell"].ToString();
            string os = dr["os"].ToString();
            string warranty = dr["warranty"].ToString();
            string otherfeatures = dr["otherfeatures"].ToString();

            lblalt2.Text = title;
            lblname2.Text = title;
            Image5.ImageUrl = pic;
            lblbrand2.Text = brand;
            lblmodel2.Text = model;
            lblproc2.Text = processor;
            lblprospeed2.Text = speed;
            lblcache2.Text = cache;
            lblram2.Text = ram + "GB";
            lblramtype2.Text = type;
            lblramspeed2.Text = ramspeed;
            lblhddcap2.Text = inbuildhdd + "GB";
            lblhdspeed2.Text = hdspeed;
            lblscrsize2.Text = screensize;
            lblreso2.Text = resolution;
            lblpanel2.Text = paneltype;
            lblgpumod2.Text = gpumodel;
            lblgpumem2.Text = gpumemory;
            lblhdmi2.Text = hdmiport;
            lblethport2.Text = ethernetport;
            lblethtype2.Text = ethernettype;
            lblwifi2.Text = wifitype;
            lblusbtwo2.Text = usb2;
            lblusbthree2.Text = usb3;
            lblblue2.Text = bluetooth;
            lblcam2.Text = buildincam;
            lblmicro2.Text = microphone;
            lbldigi2.Text = digi;
            lblbattype2.Text = batterytype;
            lblbatcell2.Text = batterycell;
            lblos2.Text = os;
            lblwarranty2.Text = warranty;
            lblfeature2.Text = otherfeatures;
        }
    }
    
}