<%@ Page Language="C#" AutoEventWireup="true" CodeFile="compare.aspx.cs" Inherits="camera_compare" MasterPageFile="~/camera/site.master" %>


<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <link href="../styles/style.css"  rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="minisection" style="margin-top:10px;">
    <ul class="navi">
<li>You are here &nbsp;</li>
<li><a href="../Default.aspx">Home</a>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;</li>
<li><a href="Default.aspx">Laptop</a>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;</li>
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
    
        Brand</td>
    <td>
    
        <asp:Label ID="lblbrand1" runat="server" Text=""></asp:Label>
    
    </td>
    <td>
    
        <asp:Label ID="lblbrand2" runat="server" Text=""></asp:Label>
    
    </td>
    </tr>
    
    <tr>
    <td>
    
        Model</td>
    <td>
    
        <asp:Label ID="lblmodel1" runat="server" Text=""></asp:Label>
    
    </td>
    <td>
    
        <asp:Label ID="lblmodel2" runat="server" Text=""></asp:Label>
    
    </td>
    </tr>
    
    <tr>
    <td>
    
        Type</td>
    <td>
    
        <asp:Label ID="lbltype1" runat="server" Text=""></asp:Label>
    
    </td>
    <td>
    
        <asp:Label ID="lbltype2" runat="server" Text=""></asp:Label>
    
    </td>
    </tr>
    
    <tr>
    <td>
    
        Color</td>
    <td>
    
        <asp:Label ID="lblcolor1" runat="server" Text=""></asp:Label>
    
    </td>
    <td>
    
        <asp:Label ID="lblcolor2" runat="server" Text=""></asp:Label>
    
    </td>
    </tr>
    
    <tr>
    <td class="tabhd">
    
        Lens</td>
    <td class="tabhd">
    
        &nbsp;</td>
    <td class="tabhd">
    
        &nbsp;</td>
    </tr>
    
    <tr>
    <td>
    
        Auto Focus</td>
    <td>
    
        <asp:Label ID="lblautofocus1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblautofocus2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Focus Mode</td>
    <td>
    
        <asp:Label ID="lblfocusmode1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblfocusmode2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Other Lens Features</td>
    <td>
    
        <asp:Label ID="lblotrlenftr1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblotrlenftr2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Focal Length</td>
    <td>
    
        <asp:Label ID="lblfocallength1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblfocallength2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Manual Focus</td>
    <td>
    
        <asp:Label ID="lblmanualfocus1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblmanualfocus2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Focus Points</td>
    <td>
    
        <asp:Label ID="lblfocuspoints1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblfocuspoints2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Focus Range</td>
    <td>
    
        <asp:Label ID="lblfocusrange1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblfocusrange2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Lens Servo</td>
    <td>
    
        <asp:Label ID="lbllensservo1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lbllensservo2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td class="tabhd">
    
        Zoom</td>
    <td class="tabhd">
    
        &nbsp;</td>
    <td class="tabhd">
    
        &nbsp;</td>
    </tr>
    
    <tr>
    <td>
    
        Focus</td>
    <td>
    
        <asp:Label ID="lblfocus1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblfocus2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Optical Zoom</td>
    <td>
    
        <asp:Label ID="lblopticalzoom1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblopticalzoom2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Digital Zoom</td>
    <td>
    
        <asp:Label ID="lbldigitalzoom1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lbldigitalzoom2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td class="tabhd">
    
        Dimension</td>
    <td class="tabhd">
    
        &nbsp;</td>
    <td class="tabhd">
    
        &nbsp;</td>
    </tr>
    
    <tr>
    <td>
    
        Weight</td>
    <td>
    
        <asp:Label ID="lblweight1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblweight2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Dimension</td>
    <td>
    
        <asp:Label ID="lbldimen1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lbldimen2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td class="tabhd">
    
        Pixel</td>
    <td class="tabhd">
    
        &nbsp;</td>
    <td class="tabhd">
    
        &nbsp;</td>
    </tr>
    
    <tr>
    <td>
    
        Total Pixel</td>
    <td>
    
        <asp:Label ID="lblpixel1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblpixel2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Maximum Resolution</td>
    <td>
    
        <asp:Label ID="lblmaxreso1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblmaxreso2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Minimum Resolution</td>
    <td>
    
        <asp:Label ID="lblminreso1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblminreso2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td class="tabhd">
    
        Shutter Speed</td>
    <td class="tabhd">
    
        &nbsp;</td>
    <td class="tabhd">
    
        &nbsp;</td>
    </tr>
    <tr>
    <td>
    
        Maximum Shutter Speed</td>
    <td>
    
        <asp:Label ID="lblmaxshu1" runat="server" Text=""></asp:Label>
    
    </td>
    <td>
    
        <asp:Label ID="lblmaxshu2" runat="server" Text=""></asp:Label>
    
    </td>
    </tr>
    <tr>
    <td>
    
        Minimum Shutter Speed</td>
    <td>
    
        <asp:Label ID="lblminshu1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblminshu2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Shutter Release Modes</td>
    <td>
    
        <asp:Label ID="lblshtrrelmod1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblshtrrelmod2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td class="tabhd">
    
        Flash</td>
    <td class="tabhd">
    
        &nbsp;</td>
    <td class="tabhd">
    
        &nbsp;</td>
    </tr>
    <tr>
    <td>
    
        Builtin Flash</td>
    <td>
    
        <asp:Label ID="lblbuiltinflash1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblbuiltinflash2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        External Flash</td>
    <td>
    
        <asp:Label ID="lblexflash1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblexflash2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Flash Modes</td>
    <td>
    
        <asp:Label ID="lblflashmodes1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblflashmodes2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Other Flash Features</td>
    <td>
    
        <asp:Label ID="lblotrflashftr1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblotrflashftr2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td class="tabhd">
    
        Sensor</td>
    <td class="tabhd">
    
        &nbsp;</td>
    <td class="tabhd">
    
        &nbsp;</td>
    </tr>
    <tr>
    <td>
    
        Sensor Size</td>
    <td>
    
        <asp:Label ID="lblsensize1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblsensize2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Sensor Type</td>
    <td>
    
        <asp:Label ID="lblsentype1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblsentype2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Sensor Format</td>
    <td>
    
        <asp:Label ID="lblsenformat1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblsenformat2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td class="tabhd">
    
        LCD</td>
    <td class="tabhd">
    
        &nbsp;</td>
    <td class="tabhd">
    
        &nbsp;</td>
    </tr>
    <tr>
    <td>
    
        Monitor Size</td>
    <td>
    
        <asp:Label ID="lblmonsize1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblmonsize2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Monitor Type</td>
    <td>
    
        <asp:Label ID="lblmontype1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblmontype2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Monitor Resolution</td>
    <td>
    
        <asp:Label ID="lblmonreso1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblmonreso2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td class="tabhd">
    
        Interface</td>
    <td class="tabhd">
    
        &nbsp;</td>
    <td class="tabhd">
    
        &nbsp;</td>
    </tr>
    <tr>
    <td>
    
        Microphone</td>
    <td>
    
        <asp:Label ID="lblmicro1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblmicro2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        USB Cable</td>
    <td>
    
        <asp:Label ID="lblusb1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblusb2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Pict Bridge</td>
    <td>
    
        <asp:Label ID="lblpictbri1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblpictbri2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Accessory Shoe</td>
    <td>
    
        <asp:Label ID="lblacc1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblacc2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Audio Video Interface</td>
    <td>
    
        <asp:Label ID="lblaudiovideo1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblaudiovideo2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Tripod Socket</td>
    <td>
    
        <asp:Label ID="lbltripod1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lbltripod2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td class="tabhd">
    
        Image</td>
    <td class="tabhd">
    
        &nbsp;</td>
    <td class="tabhd">
    
        &nbsp;</td>
    </tr>
    <tr>
    <td>
    
        Imaging Size</td>
    <td>
    
        <asp:Label ID="lblimgsize1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblimgsize2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Image Format</td>
    <td>
    
        <asp:Label ID="lblimgformat1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblimgformat2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Audio Format</td>
    <td>
    
        <asp:Label ID="lblaudioformat1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblaudioformat2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Face Detection</td>
    <td>
    
        <asp:Label ID="lblfacedet1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblfacedet2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Video Format</td>
    <td>
    
        <asp:Label ID="lblvideoformat1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblvideoformat2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td class="tabhd">
    
        Battery</td>
    <td class="tabhd">
    
        &nbsp;</td>
    <td class="tabhd">
    
        &nbsp;</td>
    </tr>
    <tr>
    <td>
    
        Power Supply</td>
    <td>
    
        <asp:Label ID="lblpowersupp1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblpowersupp2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Battery Type</td>
    <td>
    
        <asp:Label ID="lblbattype1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblbattype2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td class="tabhd">
    
        Other Features</td>
    <td class="tabhd">
    
        &nbsp;</td>
    <td class="tabhd">
    
        &nbsp;</td>
    </tr>
    <tr>
    <td>
    
        Aperture Range</td>
    <td>
    
        <asp:Label ID="lblaptrange1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblaptrange2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Red Eye Reduction</td>
    <td>
    
        <asp:Label ID="lblredeye1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblredeye2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Dust Reduction</td>
    <td>
    
        <asp:Label ID="lbldustred1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lbldustred2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Temperature</td>
    <td>
    
        <asp:Label ID="lbltemp1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lbltemp2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Sync Terminal</td>
    <td>
    
        <asp:Label ID="lblsynter1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblsynter2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Delete Function</td>
    <td>
    
        <asp:Label ID="lbldelfunc1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lbldelfunc2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Continuous Shot</td>
    <td>
    
        <asp:Label ID="lblcontshot1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblcontshot2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        White Balancing</td>
    <td>
    
        <asp:Label ID="lblwhitebal1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblwhitebal2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Self Timer</td>
    <td>
    
        <asp:Label ID="lblselftime1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblselftime2" runat="server" Text=""></asp:Label>
    
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
    
        Metering Modes</td>
    <td>
    
        <asp:Label ID="lblmtrmode1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblmtrmode2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Supported Languages</td>
    <td>
    
        <asp:Label ID="lblsupplang1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblsupplang2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Additional Features</td>
    <td>
    
        <asp:Label ID="lbladdiftr1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lbladdiftr2" runat="server" Text=""></asp:Label>
    
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