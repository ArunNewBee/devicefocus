using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class camera_compare : System.Web.UI.Page
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
        sql = "select * from camera where regno='" + strReg + "'";
        dr = db.reader(sql);
        if (dr.Read())
        {
            string brand = dr["brand"].ToString();
            string model = dr["model"].ToString();
            string title = dr["title"].ToString();
            string pic = dr["pic"].ToString();
            string type = dr["type"].ToString();
            string color = dr["color"].ToString();
            string autofocus = dr["autofocus"].ToString();
            string focusmode = dr["focusmode"].ToString();
            string otherlensfeatures = dr["otherlensfeatures"].ToString();
            string focallength = dr["focallength"].ToString();
            string manualfocus = dr["manualfocus"].ToString();
            string focuspoints = dr["focuspoints"].ToString();
            string focusrange = dr["focusrange"].ToString();
            string lensservo = dr["lensservo"].ToString();
            string focus = dr["focus"].ToString();
            string opticalzoom = dr["opticalzoom"].ToString();
            string digitalzoom = dr["digitalzoom"].ToString();
            string weight = dr["weight"].ToString();
            string dimension = dr["dimension"].ToString();
            string pixel = dr["pixel"].ToString();
            string maxreso = dr["maxreso"].ToString();
            string minreso = dr["minreso"].ToString();
            string maxshutterspeed = dr["maxshutterspeed"].ToString();
            string minshutterspeed = dr["minshutterspeed"].ToString();
            string shutterreleasemodes = dr["shutterreleasemodes"].ToString();
            string inbuiltflash = dr["inbuiltflash"].ToString();
            string externalflash = dr["externalflash"].ToString();
            string flashmodes = dr["flashmodes"].ToString();
            string otherflashfeatures = dr["otherflashfeatures"].ToString();
            string sensorsize = dr["sensorsize"].ToString();
            string sensortype = dr["sensortype"].ToString();
            string sensorformat = dr["sensorformat"].ToString();
            string monitorsize = dr["monitorsize"].ToString();
            string monitortype = dr["monitortype"].ToString();
            string monitorreso = dr["monitorreso"].ToString();
            string microphone = dr["microphone"].ToString();
            string usbcable = dr["usbcable"].ToString();
            string pictbridge = dr["pictbridge"].ToString();
            string accessoryshoe = dr["accessoryshoe"].ToString();
            string audiovideointerface = dr["audiovideointerface"].ToString();
            string tripodsocket = dr["tripodsocket"].ToString();
            string imagesizing = dr["imagesizing"].ToString();
            string imageformat = dr["imageformat"].ToString();
            string facedetection = dr["facedetection"].ToString();
            string videoformat = dr["videoformat"].ToString();
            string powersupply = dr["powersupply"].ToString();
            string batterytype = dr["batterytype"].ToString();
            string aperturerange = dr["aperturerange"].ToString();
            string redeyereduction = dr["redeyereduction"].ToString();
            string dustreduction = dr["dustreduction"].ToString();
            string temperature = dr["temperature"].ToString();
            string syncterminal = dr["syncterminal"].ToString();
            string deletefunction = dr["deletefunction"].ToString();
            string continuousshot = dr["continuousshot"].ToString();
            string whitebal = dr["whitebal"].ToString();
            string selftimer = dr["selftimer"].ToString();
            string hdmi = dr["hdmi"].ToString();
            string meteringmodes = dr["meteringmodes"].ToString();
            string supportedlanguages = dr["supportedlanguages"].ToString();
            string additionalfeatures = dr["additionalfeatures"].ToString();
            lblalt1.Text = title;
            lblname1.Text = title;
            Image4.ImageUrl = pic;
            lblbrand1.Text = brand;
            lblmodel1.Text = model;
            lbltype1.Text=type;
            lblcolor1.Text=color;
            lblautofocus1.Text=autofocus;
            lblfocusmode1.Text=focusmode;
            lblotrlenftr1.Text=otherlensfeatures;
            lblfocallength1.Text=focallength;
            lblmanualfocus1.Text=manualfocus;
            lblfocuspoints1.Text=focuspoints;
            lblfocusrange1.Text=focusrange;
            lbllensservo1.Text=lensservo;
            lblfocus1.Text=focus;
            lblopticalzoom1.Text=opticalzoom;
            lbldigitalzoom1.Text=digitalzoom;
            lblweight1.Text=weight;
            lbldimen1.Text=dimension;
            lblpixel1.Text=pixel;
            lblmaxreso1.Text=maxreso;
            lblminreso1.Text = minreso;
            lblmaxshu1.Text = maxshutterspeed;
            lblminshu1.Text = minshutterspeed;
            lblshtrrelmod1.Text = shutterreleasemodes;
            lblbuiltinflash1.Text = inbuiltflash;
            lblexflash1.Text = externalflash;
            lblflashmodes1.Text = flashmodes;
            lblotrflashftr1.Text = otherflashfeatures;
            lblsensize1.Text = sensorsize;
            lblsentype1.Text = sensortype;
            lblsenformat1.Text = sensorformat;
            lblmonsize1.Text = monitorsize;
            lblmontype1.Text = monitortype;
            lblmonreso1.Text = monitorreso;
            lblmicro1.Text = microphone;
            lblusb1.Text = usbcable;
            lblpictbri1.Text = pictbridge;
            lblacc1.Text=accessoryshoe;
            lblaudiovideo1.Text=audiovideointerface;
            lbltripod1.Text=tripodsocket;
            lblimgsize1.Text=imagesizing;
            lblimgformat1.Text=imageformat;
            lblfacedet1.Text=facedetection;
            lblvideoformat1.Text=videoformat;
            lblpowersupp1.Text=powersupply;
            lblbattype1.Text=batterytype;
            lblaptrange1.Text=aperturerange;
            lblredeye1.Text=redeyereduction;
            lbldustred1.Text=dustreduction;
            lbltemp1.Text=temperature;
            lblsynter1.Text=syncterminal;
            lbldelfunc1.Text=deletefunction;
            lblcontshot1.Text=continuousshot;
            lblwhitebal1.Text=whitebal;
            lblselftime1.Text=selftimer;
            lblhdmi1.Text=hdmi;
            lblmtrmode1.Text=meteringmodes;
           lblsupplang1.Text =supportedlanguages;
            lbladdiftr1.Text=additionalfeatures;


        }
    }

    public void display2()
    {
        database db = new database();
        db.con.Open();
        sql1 = "select * from camera where regno='" + sstr + "'";
        dr = db.reader(sql1);
        if (dr.Read())
        {
            string brand = dr["brand"].ToString();
            string model = dr["model"].ToString();
            string title = dr["title"].ToString();
            string pic = dr["pic"].ToString();
            string type = dr["type"].ToString();
            string color = dr["color"].ToString();
            string autofocus = dr["autofocus"].ToString();
            string focusmode = dr["focusmode"].ToString();
            string otherlensfeatures = dr["otherlensfeatures"].ToString();
            string focallength = dr["focallength"].ToString();
            string manualfocus = dr["manualfocus"].ToString();
            string focuspoints = dr["focuspoints"].ToString();
            string focusrange = dr["focusrange"].ToString();
            string lensservo = dr["lensservo"].ToString();
            string focus = dr["focus"].ToString();
            string opticalzoom = dr["opticalzoom"].ToString();
            string digitalzoom = dr["digitalzoom"].ToString();
            string weight = dr["weight"].ToString();
            string dimension = dr["dimension"].ToString();
            string pixel = dr["pixel"].ToString();
            string maxreso = dr["maxreso"].ToString();
            string minreso = dr["minreso"].ToString();
            string maxshutterspeed = dr["maxshutterspeed"].ToString();
            string minshutterspeed = dr["minshutterspeed"].ToString();
            string shutterreleasemodes = dr["shutterreleasemodes"].ToString();
            string inbuiltflash = dr["inbuiltflash"].ToString();
            string externalflash = dr["externalflash"].ToString();
            string flashmodes = dr["flashmodes"].ToString();
            string otherflashfeatures = dr["otherflashfeatures"].ToString();
            string sensorsize = dr["sensorsize"].ToString();
            string sensortype = dr["sensortype"].ToString();
            string sensorformat = dr["sensorformat"].ToString();
            string monitorsize = dr["monitorsize"].ToString();
            string monitortype = dr["monitortype"].ToString();
            string monitorreso = dr["monitorreso"].ToString();
            string microphone = dr["microphone"].ToString();
            string usbcable = dr["usbcable"].ToString();
            string pictbridge = dr["pictbridge"].ToString();
            string accessoryshoe = dr["accessoryshoe"].ToString();
            string audiovideointerface = dr["audiovideointerface"].ToString();
            string tripodsocket = dr["tripodsocket"].ToString();
            string imagesizing = dr["imagesizing"].ToString();
            string imageformat = dr["imageformat"].ToString();
            string facedetection = dr["facedetection"].ToString();
            string videoformat = dr["videoformat"].ToString();
            string powersupply = dr["powersupply"].ToString();
            string batterytype = dr["batterytype"].ToString();
            string aperturerange = dr["aperturerange"].ToString();
            string redeyereduction = dr["redeyereduction"].ToString();
            string dustreduction = dr["dustreduction"].ToString();
            string temperature = dr["temperature"].ToString();
            string syncterminal = dr["syncterminal"].ToString();
            string deletefunction = dr["deletefunction"].ToString();
            string continuousshot = dr["continuousshot"].ToString();
            string whitebal = dr["whitebal"].ToString();
            string selftimer = dr["selftimer"].ToString();
            string hdmi = dr["hdmi"].ToString();
            string meteringmodes = dr["meteringmodes"].ToString();
            string supportedlanguages = dr["supportedlanguages"].ToString();
            string additionalfeatures = dr["additionalfeatures"].ToString();
            lblalt2.Text = title;
            lblname2.Text = title;
            Image5.ImageUrl = pic;
            lblbrand2.Text = brand;
            lblmodel2.Text = model;
            lbltype2.Text = type;
            lblcolor2.Text = color;
            lblautofocus2.Text = autofocus;
            lblfocusmode2.Text = focusmode;
            lblotrlenftr2.Text = otherlensfeatures;
            lblfocallength2.Text = focallength;
            lblmanualfocus2.Text = manualfocus;
            lblfocuspoints2.Text = focuspoints;
            lblfocusrange2.Text = focusrange;
            lbllensservo2.Text = lensservo;
            lblfocus2.Text = focus;
            lblopticalzoom2.Text = opticalzoom;
            lbldigitalzoom2.Text = digitalzoom;
            lblweight2.Text = weight;
            lbldimen2.Text = dimension;
            lblpixel2.Text = pixel;
            lblmaxreso2.Text = maxreso;
            lblminreso2.Text = minreso;
            lblmaxshu2.Text = maxshutterspeed;
            lblminshu2.Text = minshutterspeed;
            lblshtrrelmod2.Text = shutterreleasemodes;
            lblbuiltinflash2.Text = inbuiltflash;
            lblexflash2.Text = externalflash;
            lblflashmodes2.Text = flashmodes;
            lblotrflashftr2.Text = otherflashfeatures;
            lblsensize2.Text = sensorsize;
            lblsentype2.Text = sensortype;
            lblsenformat2.Text = sensorformat;
            lblmonsize2.Text = monitorsize;
            lblmontype2.Text = monitortype;
            lblmonreso2.Text = monitorreso;
            lblmicro2.Text = microphone;
            lblusb2.Text = usbcable;
            lblpictbri2.Text = pictbridge;
            lblacc2.Text = accessoryshoe;
            lblaudiovideo2.Text = audiovideointerface;
            lbltripod2.Text = tripodsocket;
            lblimgsize2.Text = imagesizing;
            lblimgformat2.Text = imageformat;
            lblfacedet2.Text = facedetection;
            lblvideoformat2.Text = videoformat;
            lblpowersupp2.Text = powersupply;
            lblbattype2.Text = batterytype;
            lblaptrange2.Text = aperturerange;
            lblredeye2.Text = redeyereduction;
            lbldustred2.Text = dustreduction;
            lbltemp2.Text = temperature;
            lblsynter2.Text = syncterminal;
            lbldelfunc2.Text = deletefunction;
            lblcontshot2.Text = continuousshot;
            lblwhitebal2.Text = whitebal;
            lblselftime2.Text = selftimer;
            lblhdmi2.Text = hdmi;
            lblmtrmode2.Text = meteringmodes;
            lblsupplang2.Text = supportedlanguages;
            lbladdiftr2.Text = additionalfeatures;
        }
    }
    
}