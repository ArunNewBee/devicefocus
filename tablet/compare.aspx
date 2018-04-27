<%@ Page Language="C#" AutoEventWireup="true" CodeFile="compare.aspx.cs" Inherits="tablet_compare" MasterPageFile="~/tablet/site.master" %>


<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <link href="../styles/style.css"  rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="minisection" style="margin-top:10px;">
    <ul class="navi">
<li>You are here &nbsp;</li>
<li><a href="../Default.aspx">Home</a>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;</li>
<li><a href="Default.aspx">Smartphone</a>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;</li>
<li><a href="#">Compare</a></li>
</ul>
  <p class="caption" style="font-size:30px;color:#ED1652;margin-bottom:20px;">
    Comparison with <asp:Label ID="lblalt1" runat="server" Text=""></asp:Label> & <asp:Label ID="lblalt2" runat="server" Text=""></asp:Label>
    </p>
  <div class="table">
  <div class="front1">
    <table class="comtable">
    <tr>
    <td class="tabhd wd">DESCRIPTION</td>
    <td class="tabhd wd1">
        <asp:Label ID="lblname1" runat="server" Text=""></asp:Label>
    </td>
    <td class="tabhd wd1">
        <asp:Label ID="lblname2" runat="server" Text=""></asp:Label>
    </td>
    </tr>
    
    <tr>
    <td>
    
    </td>
    <td>
    
        <asp:Image ID="Image4" runat="server" CssClass="comim" />
    
    </td>
    <td>
    
        <asp:Image ID="Image5" runat="server" CssClass="comim" />
    
    </td>
    </tr>
    
    <tr>
    <td>
    
        Form Factor</td>
    <td>
    
        <asp:Label ID="lblformfactor1" runat="server" Text=""></asp:Label>
    
    </td>
    <td>
    
        <asp:Label ID="lblformfactor2" runat="server" Text=""></asp:Label>
    
    </td>
    </tr>
    
    <tr>
    <td>
    
        Dimensions (mm)</td>
    <td>
    
        <asp:Label ID="lbldim1" runat="server" Text=""></asp:Label>
    
    </td>
    <td>
    
        <asp:Label ID="lbldim2" runat="server" Text=""></asp:Label>
    
    </td>
    </tr>
    
    <tr>
    <td>
    
        Weight (g)</td>
    <td>
    
        <asp:Label ID="lblwei1" runat="server" Text=""></asp:Label>
    
    </td>
    <td>
    
        <asp:Label ID="lblwei2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Battery Capacity</td>
    <td>
    
        <asp:Label ID="lblbatcap1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblbatcap2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Removable Battery</td>
    <td>
    
        <asp:Label ID="lblrem1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblrem2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        colors</td>
    <td>
    
        <asp:Label ID="lblcolr1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblcolr2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        SAR</td>
    <td>
    
        <asp:Label ID="lblsar1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblsar2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Screensize</td>
    <td>
    
        <asp:Label ID="lblscrsz1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblscrsz2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Touchscreen</td>
    <td>
    
        <asp:Label ID="lbltouchscr1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lbltouchscr2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Touchscreen type</td>
    <td>
    
        <asp:Label ID="lbltouchscrtype1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lbltouchscrtype2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Resolution</td>
    <td>
    
        <asp:Label ID="lblreso1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblreso2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Pixel Per Inch</td>
    <td>
    
        <asp:Label ID="lblppi1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblppi2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td class="tabhd">
    
        Hardware</td>
    <td class="tabhd">
    
        &nbsp;</td>
    <td class="tabhd">
    
        &nbsp;</td>
    </tr>
    
    <tr>
    <td>
    
        Processor</td>
    <td>
    
        <asp:Label ID="lblproc1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblproc2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        RAM</td>
    <td>
    
        <asp:Label ID="lblram1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblram2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Internal Memory</td>
    <td>
    
        <asp:Label ID="lblin1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblin2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Expandable Memory</td>
    <td>
    
        <asp:Label ID="lblexp1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblexp2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td class="tabhd">
    
        Camera</td>
    <td class="tabhd">
    
        &nbsp;</td>
    <td class="tabhd">
    
        &nbsp;</td>
    </tr>
    
    <tr>
    <td>
    
        Rear Camera</td>
    <td>
    
        <asp:Label ID="lblrcam1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblrcam2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Front Camera</td>
    <td>
    
        <asp:Label ID="lblfcam1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblfcam2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Flash</td>
    <td>
    
        <asp:Label ID="lblflash1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblflash2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td class="tabhd">
    
        Software</td>
    <td class="tabhd">
    
        &nbsp;</td>
    <td class="tabhd">
    
        &nbsp;</td>
    </tr>
    
    <tr>
    <td>
    
        Operating System</td>
    <td>
    
        <asp:Label ID="lblos1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblos2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        OS Version</td>
    <td>
    
        <asp:Label ID="lblosver1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblosver2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Java Support</td>
    <td>
    
        <asp:Label ID="lbljava1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lbljava2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Browser</td>
    <td>
    
        <asp:Label ID="lblbrow1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblbrow2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td class="tabhd">
    
        Connectivity</td>
    <td class="tabhd">
    
        &nbsp;</td>
    <td class="tabhd">
    
        &nbsp;</td>
    </tr>
    
    <tr>
    <td>
    
        Wi-Fi</td>
    <td>
    
        <asp:Label ID="lblwifi1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblwifi2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Wi-Fi Standard</td>
    <td>
    
        <asp:Label ID="lblwifistd1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblwifistd2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        GPS</td>
    <td>
    
        <asp:Label ID="lblgps1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblgps2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Bluetooth</td>
    <td>
    
        <asp:Label ID="lblbt1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblbt2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        NFC</td>
    <td>
    
        <asp:Label ID="lblnfc1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblnfc2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Bluetooth Profiles</td>
    <td>
    
        <asp:Label ID="lblbtpro1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblbtpro2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        DLNA</td>
    <td>
    
        <asp:Label ID="lbldlna1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lbldlna2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Wi-Fi Direct</td>
    <td>
    
        <asp:Label ID="lblwifidir1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblwifidir2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        MHL</td>
    <td>
    
        <asp:Label ID="lblmhl1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblmhl2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        HDMI</td>
    <td>
    
        <asp:Label ID="lblhdmi1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblhdmi2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Headphone</td>
    <td>
    
        <asp:Label ID="lblhdph1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblhdph2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        FM</td>
    <td>
    
        <asp:Label ID="lblfm1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblfm2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        USB</td>
    <td>
    
        <asp:Label ID="lblusb1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblusb2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td class="tabhd">
    
        SIM</td>
    <td class="tabhd">
    
        &nbsp;</td>
    <td class="tabhd">
    
        &nbsp;</td>
    </tr>
    <tr>
    <td>
    
        No of SIM</td>
    <td>
    
        <asp:Label ID="lblnoofsim1" runat="server" Text=""></asp:Label>
    
    </td>
    <td>
    
        <asp:Label ID="lblnoofsim2" runat="server" Text=""></asp:Label>
    
    </td>
    </tr>
    <tr>
    <td>
    
        SIM Type</td>
    <td>
    
        <asp:Label ID="lblsimtype1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblsimtype2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Infra</td>
    <td>
    
        <asp:Label ID="lblinfra1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblinfra2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        2G</td>
    <td>
    
        <asp:Label ID="lbl2g1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lbl2g2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        3G</td>
    <td>
    
        <asp:Label ID="lbl3g1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lbl3g2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        4G</td>
    <td>
    
        <asp:Label ID="lbl4g1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lbl4g2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td class="tabhd">
    
        Sensors</td>
    <td class="tabhd">
    
        &nbsp;</td>
    <td class="tabhd">
    
        &nbsp;</td>
    </tr>
    <tr>
    <td>
    
        Compass</td>
    <td>
    
        <asp:Label ID="lblcomp1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblcomp2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Proximity Meter</td>
    <td>
    
        <asp:Label ID="lblprox1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblprox2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Accelerometer</td>
    <td>
    
        <asp:Label ID="lblacc1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblacc2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Amplight Sensor</td>
    <td>
    
        <asp:Label ID="lblamp1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblamp2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Gyrometer</td>
    <td>
    
        <asp:Label ID="lblgyr1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblgyr2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Barometer</td>
    <td>
    
        <asp:Label ID="lblbaro1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblbaro2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Temperature Sensor</td>
    <td>
    
        <asp:Label ID="lbltemp1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lbltemp2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    </table>
    </div>
    <div class="front2">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/googleads3.png" Width="100%"/>
    </div>
  </div>
  </div>

</asp:Content>