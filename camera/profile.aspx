<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="camera_profile" MasterPageFile="~/camera/site.master" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <link href="../styles/style.css"  rel="stylesheet" type="text/css" />
 <script src="http://static.ak.fbcdn.net/connect.php/js/FB.Share" type="text/javascript"></script>
<script src="http://static.ak.connect.facebook.com/js/api_lib/v0.4/FeatureLoader.js.php"
           type="text/javascript">
</script>
<script>
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date(); a = s.createElement(o),
  m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

    ga('create', 'UA-64550590-1', 'auto');
    ga('send', 'pageview');

</script>


</asp:Content>

<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server" 
EnablePageMethods = "true">
</asp:ScriptManager>

<div class="minisection" style="margin-top:10px;">


    
<ul class="navi">
<li>You are here </li>
<li><a href="../Default.aspx">Home</a>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;</li>
<li><a href="Default.aspx">Laptop</a>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;</li>
<li><asp:Label ID="Label1" runat="server" Text=""></asp:Label></li>
</ul>
<div class="table blk">

<div class="front1">
<p class="caption" style="font-size:30px;color:#ED1652;margin-bottom:20px;">
    <asp:Label ID="lblalt" runat="server" Text=""></asp:Label>
    </p>
    <div class="table blk">
    <div class="pics">
<script type="text/javascript" src="../scripts/jquery.js"></script>
<script type="text/javascript" src="../scripts/jquery01.js"></script>
<script type="text/javascript" src="../scripts/easy-gallery.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("#gallery").egallery({
            width: 270,
            height: 270,
            speed: 1000,
            delay: 4000,
            easing: 'easeInOutBack',
            thumbs: 'numbers',
            thumbClass: 'tclass',
            aClass: 'ac'
        });
    });
</script>
<script type="text/javascript">

    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-6920506-3']);
    _gaq.push(['_trackPageview']);

    (function () {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();

</script>
<style>
.tclass{
    cursor:pointer;
    display:inline;
    float:left;
    min-width:8px;
    min-height:6px;
    padding:0px;
    margin-right:10px;
    font-size:13px;
    
}
.ac{
    color:#ED1652;
    font-size:13px;
}
#ssgThumbs ul
{
    margin-left:0px;
    padding-left:0px;
}
</style>




    <div id="gallery">
    <ul style="padding:0px;margin-top:0px;">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">
        <ItemTemplate>
        <li><img src='<%# Eval("pic") %>' alt="" width="98%"></li>
        </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [pic] FROM [picture] WHERE ([regno] = @regno)">
            <SelectParameters>
                <asp:QueryStringParameter Name="regno" QueryStringField="strReg" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </ul>
</div>
<div id="ssgThumbs"></div><br />
        <asp:LinkButton ID="LinkButton3" runat="server" CssClass="sr" >Source</asp:LinkButton>
    </div>
    <div class="highlights">
    
    

<div class="key">
<div class="table mbt">
<div class="key1"">
<p class="keyhead" style="margin-top:0px;">Display</p>
<div class="table mr">
<div class="sd1">
    <asp:Image ID="Image11" runat="server" Width="100%" ImageUrl="~/images/display_device_focus.png" />
</div>
<div class="sd2">
<asp:Label ID="lbldis" runat="server" Text="" CssClass="lblkey"></asp:Label>
</div>
</div>
    
</div>
<div class="vac"></div>
<div class="key1">
<p class="keyhead" style="margin-top:0px;">Processor</p>

<div class="table mr">
<div class="sd1">
    <asp:Image ID="Image12" runat="server" Width="100%" ImageUrl="~/images/processor_device_focus.png" />
</div>
<div class="sd2">
<asp:Label ID="lblpro" runat="server" Text="" CssClass="lblkey"></asp:Label>
</div>
</div>
    
</div>
<div class="vac"></div>
<div class="key1">
<p class="keyhead">Front camera</p>

<div class="table mr">
<div class="sd1">
    <asp:Image ID="Image13" runat="server" Width="100%" ImageUrl="~/images/camera_device_focus.png" />
</div>
<div class="sd2">
<asp:Label ID="lblfcam" runat="server" Text="" CssClass="lblkey"></asp:Label>
</div>
</div>
    
</div>
</div>
<div class="table mbt">
<div class="key1">
<p class="keyhead">Resolution</p>

<div class="table mr">
<div class="sd1">
    <asp:Image ID="Image14" runat="server" Width="100%" ImageUrl="~/images/resolution_device_focus.png" />
</div>
<div class="sd2">
<asp:Label ID="lblres" runat="server" Text="" CssClass="lblkey"></asp:Label>
</div>
</div>
    
</div>
<div class="vac"></div>
<div class="key1">
<p class="keyhead">RAM</p>

<div class="table mr">
<div class="sd1">
    <asp:Image ID="Image15" runat="server" Width="100%" ImageUrl="~/images/ram_device_focus.png" />
</div>
<div class="sd2">
<asp:Label ID="lblram" runat="server" Text="" CssClass="lblkey"></asp:Label>
</div>
</div>
    
</div>
<div class="vac"></div>
<div class="key1">
<p class="keyhead">OS</p>

<div class="table mr">
<div class="sd1">
    <asp:Image ID="Image16" runat="server" Width="100%"  />
</div>
<div class="sd2">
<asp:Label ID="lblos" runat="server" Text="" CssClass="lblkey"></asp:Label>
</div>
</div>
    
</div>
</div>

<div class="table">
<div class="key1">
<p class="keyhead">SIM</p>

<div class="table mr">
<div class="sd1">
    <asp:Image ID="Image17" runat="server" Width="100%" ImageUrl="~/images/sim_device_focus.png" />
</div>
<div class="sd2">
<asp:Label ID="lblsto" runat="server" Text="" CssClass="lblkey"></asp:Label>
</div>
</div>
    
</div>
<div class="vac"></div>
<div class="key1">
<p class="keyhead">Rear camera</p>

<div class="table mr">
<div class="sd1">
    <asp:Image ID="Image18" runat="server" Width="100%" ImageUrl="~/images/camera_device_focus.png" />
</div>
<div class="sd2">
<asp:Label ID="lblrcam" runat="server" Text="" CssClass="lblkey"></asp:Label>
</div>
</div>
    
</div>
<div class="vac"></div>
<div class="key1">
<p class="keyhead">Battery</p>

<div class="table mr">
<div class="sd1">
    <asp:Image ID="Image19" runat="server" Width="100%" ImageUrl="~/images/battery_device_focus.png" />
</div>
<div class="sd2">
<asp:Label ID="lblbat" runat="server" Text="" CssClass="lblkey"></asp:Label>
</div>
</div>
    
</div>
</div>


    </div>

<div class="price">
<p class="compprice">Compare with</p>
<asp:TextBox ID="txtContactsSearch" runat="server" 
        ontextchanged="txtContactsSearch_TextChanged" AutoPostBack="true" CssClass="aut" placeholder="&nbsp;&nbsp;Enter name of Camera"></asp:TextBox>
<cc1:AutoCompleteExtender ServiceMethod="SearchCustomers" 
    MinimumPrefixLength="2"
    CompletionInterval="100" EnableCaching="false" CompletionSetCount="10" 
    TargetControlID="txtContactsSearch"
    ID="AutoCompleteExtender1" runat="server" FirstRowSelected = "false">
</cc1:AutoCompleteExtender>
</div>

    </div>
   
   


</div>

<div class="sm">

    <a href="https://www.facebook.com/devicefocus" target="_blank"><asp:Image CssClass="sim" ID="Image1" runat="server" ImageUrl="~/images/f.png" /></a>
    <a href="https://twitter.com/devicefocus" target="_blank"><asp:Image CssClass="sim" ID="Image7" runat="server" ImageUrl="~/images/t.png" /></a>
    <a href="https://plus.google.com/105209392367239528280/posts" target="_blank"><asp:Image CssClass="sim" ID="Image6" runat="server" ImageUrl="~/images/gp.png" /></a>
    <a href="https://www.linkedin.com/profile/view?id=AAIAABlxsLYBnQumoxuH409Yw1tZ_IvhKVhbuJI&trk=nav_responsive_tab_profile_pic" target="_blank"><asp:Image CssClass="sim" ID="Image8" runat="server" ImageUrl="~/images/in.png" /></a>
    <a href="https://www.pinterest.com/devicefocus/" target="_blank"><asp:Image CssClass="sim" ID="Image10" runat="server" ImageUrl="~/images/ping.png" /></a>
    <a href="#" target="_blank"><asp:Image CssClass="sim" ID="Image9" runat="server" ImageUrl="~/images/insta.png" /></a>    
    <a href="#" target="_blank"><asp:Image CssClass="sim" ID="Image21" runat="server" ImageUrl="~/images/YOUTUBE.png" /></a>
<a target="_blank" style="text-decoration:none;margin-right:0px;" name="sharebutton" type="button" href="http://www.facebook.com/sharer.php"><asp:Image CssClass="sim" ID="Image20" runat="server" ImageUrl="~/images/share.png" /></a> 
</div>



<p style="margin-bottom:0px;margin-top:40px;"><asp:Image ID="Image22" runat="server" ImageUrl="~/images/adv1.jpg" Width="100%" /></p>
    

<div>

    <asp:FormView ID="FormView1" runat="server" Width="100%" DataKeyNames="regno" 
        DataSourceID="SqlDataSource1">
        <ItemTemplate>
        <p class="spec" style="margin-top:40px;margin-bottom:10px;">Detailed Specification</p>
        <div class="table blk">
        <div class="side1">
        <p class="specitem">
        General
        </p>
        <table class="tableitem">
        <tr><td>Brand</td><td>
            <asp:Label ID="brandLabel" runat="server" Text='<%# Bind("brand") %>' />
            </td></tr>
            <tr>
                <td>
                    Model</td>
                <td>
                    <asp:Label ID="modelLabel" runat="server" Text='<%# Bind("model") %>' />
                </td>
            </tr>
            <tr>
                <td>
                    Type</td>
                <td>
                    <asp:Label ID="typeLabel" runat="server" Text='<%# Bind("type") %>' />
                </td>
            </tr>
            <tr>
                <td>
                    Color</td>
                <td>
                    <asp:Label ID="colorLabel" runat="server" Text='<%# Bind("color") %>' />
                </td>
            </tr>
        </table>
            <p class="specitem">
                Lens
            </p>
            <table class="tableitem">
                <tr>
                    <td>
                        Auto Focus</td>
                    <td>
                        <asp:Label ID="autofocusLabel" runat="server" Text='<%# Bind("autofocus") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Focus Mode</td>
                    <td>
                        <asp:Label ID="focusmodeLabel" runat="server" Text='<%# Bind("focusmode") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Other Lens Features</td>
                    <td>
                        <asp:Label ID="otherlensfeaturesLabel" runat="server" 
                            Text='<%# Bind("otherlensfeatures") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Focal Length</td>
                    <td>
                        <asp:Label ID="focallengthLabel" runat="server" 
                            Text='<%# Bind("focallength") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Manual Focus</td>
                    <td>
                        <asp:Label ID="manualfocusLabel" runat="server" 
                            Text='<%# Bind("manualfocus") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Focus Points</td>
                    <td>
                        <asp:Label ID="focuspointsLabel" runat="server" 
                            Text='<%# Bind("focuspoints") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Focus Range</td>
                    <td>
                        <asp:Label ID="focusrangeLabel" runat="server" 
                            Text='<%# Bind("focusrange") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Lens Servo</td>
                    <td>
                        <asp:Label ID="lensservoLabel" runat="server" Text='<%# Bind("lensservo") %>' />
                    </td>
                </tr>
            </table>
            <p class="specitem">
                Zoom</p>
            <table class="tableitem">
                <tr>
                    <td>
                        Focus</td>
                    <td>
                        <asp:Label ID="focusLabel" runat="server" Text='<%# Bind("focus") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Optical Zoom</td>
                    <td>
                        <asp:Label ID="opticalzoomLabel" runat="server" 
                            Text='<%# Bind("opticalzoom") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Digital Zoom</td>
                    <td>
                        <asp:Label ID="digitalzoomLabel" runat="server" 
                            Text='<%# Bind("digitalzoom") %>' />
                    </td>
                </tr>
            </table>
            <p class="specitem">
                Dimension</p>
            <table class="tableitem">
                <tr>
                    <td>
                        Weight</td>
                    <td>
                        <asp:Label ID="weightLabel" runat="server" Text='<%# Bind("weight") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Dimension</td>
                    <td>
                        <asp:Label ID="dimensionLabel" runat="server" Text='<%# Bind("dimension") %>' />
                    </td>
                </tr>
            </table>
            <p class="specitem">
                Pixel
            </p>
            <table class="tableitem">
                <tr>
                    <td>
                        Total Pixel</td>
                    <td>
                        <asp:Label ID="pixelLabel" runat="server" Text='<%# Bind("pixel") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Maximum Resolution</td>
                    <td>
                        <asp:Label ID="maxresoLabel" runat="server" Text='<%# Bind("maxreso") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Minimum Resolution</td>
                    <td>
                        <asp:Label ID="minresoLabel" runat="server" Text='<%# Bind("minreso") %>' />
                    </td>
                </tr>
            </table>
            <p class="specitem">
                Pixel
            </p>
            <table class="tableitem">
                <tr>
                    <td>
                        Maximum Shutter Speed</td>
                    <td>
                        <asp:Label ID="maxshutterspeedLabel" runat="server" 
                            Text='<%# Bind("maxshutterspeed") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Minimum Shutter Speed</td>
                    <td>
                        <asp:Label ID="minshutterspeedLabel" runat="server" 
                            Text='<%# Bind("minshutterspeed") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Shutter Release Modes</td>
                    <td>
                        <asp:Label ID="shutterreleasemodesLabel" runat="server" 
                            Text='<%# Bind("shutterreleasemodes") %>' />
                    </td>
                </tr>
            </table>
            <p class="specitem">
                Flash</p>
            <table class="tableitem">
                <tr>
                    <td>
                        Inbuilt Flash</td>
                    <td>
                        <asp:Label ID="inbuiltflashLabel" runat="server" 
                            Text='<%# Bind("inbuiltflash") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        External Flash</td>
                    <td>
                        <asp:Label ID="externalflashLabel" runat="server" 
                            Text='<%# Bind("externalflash") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Flash Modes</td>
                    <td>
                        <asp:Label ID="flashmodesLabel" runat="server" 
                            Text='<%# Bind("flashmodes") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Other Flash Features</td>
                    <td>
                        <asp:Label ID="otherflashfeaturesLabel" runat="server" 
                            Text='<%# Bind("otherflashfeatures") %>' />
                    </td>
                </tr>
            </table>
            
        <br />

        </div>
        <div class="side2">
        <p class="specitem">
                Sensor
            </p>
            <table class="tableitem">
                <tr>
                    <td>
                        Sensor Size</td>
                    <td>
                        <asp:Label ID="sensorsizeLabel" runat="server" 
                            Text='<%# Bind("sensorsize") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Sensor Type</td>
                    <td>
                        <asp:Label ID="sensortypeLabel" runat="server" 
                            Text='<%# Bind("sensortype") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Sensor Format</td>
                    <td>
                        <asp:Label ID="sensorformatLabel" runat="server" 
                            Text='<%# Bind("sensorformat") %>' />
                    </td>
                </tr>
            </table>
        <p class="specitem">
            LCD</p>
            <table class="tableitem">
                <tr>
                    <td>
                        Monitor Size</td>
                    <td>
                        <asp:Label ID="monitorsizeLabel" runat="server" 
                            Text='<%# Bind("monitorsize") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Monitor Type</td>
                    <td>
                        <asp:Label ID="monitortypeLabel" runat="server" 
                            Text='<%# Bind("monitortype") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Monitor Resolution</td>
                    <td>
                        <asp:Label ID="monitorresoLabel" runat="server" 
                            Text='<%# Bind("monitorreso") %>' />
                    </td>
                </tr>
            </table>
            <p class="specitem">
                Interface</p>
            <table class="tableitem">
                <tr>
                    <td>
                        Microphone</td>
                    <td>
                        <asp:Label ID="microphoneLabel" runat="server" 
                            Text='<%# Bind("microphone") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        USB Cable</td>
                    <td>
                        <asp:Label ID="usbcableLabel" runat="server" Text='<%# Bind("usbcable") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Pict Bridge</td>
                    <td>
                        <asp:Label ID="pictbridgeLabel" runat="server" 
                            Text='<%# Bind("pictbridge") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Accessory Shoe</td>
                    <td>
                        <asp:Label ID="accessoryshoeLabel" runat="server" 
                            Text='<%# Bind("accessoryshoe") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Audio Video Interface</td>
                    <td>
                        <asp:Label ID="audiovideointerfaceLabel" runat="server" 
                            Text='<%# Bind("audiovideointerface") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Tripodsocket</td>
                    <td>
                        <asp:Label ID="tripodsocketLabel" runat="server" 
                            Text='<%# Bind("tripodsocket") %>' />
                    </td>
                </tr>
            </table>
            <p class="specitem">
                Image</p>
            <table class="tableitem">
                <tr>
                    <td>
                        image Sizing</td>
                    <td>
                        <asp:Label ID="imagesizingLabel" runat="server" 
                            Text='<%# Bind("imagesizing") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Image Format</td>
                    <td>
                        <asp:Label ID="imageformatLabel" runat="server" 
                            Text='<%# Bind("imageformat") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Face Detection</td>
                    <td>
                        <asp:Label ID="facedetectionLabel" runat="server" 
                            Text='<%# Bind("facedetection") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Video Format</td>
                    <td>
                        <asp:Label ID="videoformatLabel" runat="server" 
                            Text='<%# Bind("videoformat") %>' />
                    </td>
                </tr>
            </table>
            <p class="specitem">
                Battery</p>
            <table class="tableitem">
                <tr>
                    <td>
                        Power Supply</td>
                    <td>
                        <asp:Label ID="powersupplyLabel" runat="server" 
                            Text='<%# Bind("powersupply") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Battery Type</td>
                    <td>
                        <asp:Label ID="batterytypeLabel" runat="server" 
                            Text='<%# Bind("batterytype") %>' />
                    </td>
                </tr>
            </table>
            <p class="specitem">
                Other Features</p>
            <table class="tableitem">
                <tr>
                    <td>
                        Aperture Range</td>
                    <td>
                        <asp:Label ID="aperturerangeLabel" runat="server" 
                            Text='<%# Bind("aperturerange") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Redeye Reduction</td>
                    <td>
                        <asp:Label ID="redeyereductionLabel" runat="server" 
                            Text='<%# Bind("redeyereduction") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Dust Reduction</td>
                    <td>
                        <asp:Label ID="dustreductionLabel" runat="server" 
                            Text='<%# Bind("dustreduction") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Temperature</td>
                    <td>
                        <asp:Label ID="temperatureLabel" runat="server" 
                            Text='<%# Bind("temperature") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Syncterminal</td>
                    <td>
                        <asp:Label ID="syncterminalLabel" runat="server" 
                            Text='<%# Bind("syncterminal") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Delete Function</td>
                    <td>
                        <asp:Label ID="deletefunctionLabel" runat="server" 
                            Text='<%# Bind("deletefunction") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Continuous Shot</td>
                    <td>
                        <asp:Label ID="continuousshotLabel" runat="server" 
                            Text='<%# Bind("continuousshot") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        White Balancing<asp:Label ID="whitebalLabel" runat="server" 
                            Text='<%# Bind("whitebal") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Selftimer</td>
                    <td>
                        <asp:Label ID="selftimerLabel" runat="server" Text='<%# Bind("selftimer") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        HDMI</td>
                    <td>
                        <asp:Label ID="hdmiLabel" runat="server" Text='<%# Bind("hdmi") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Metering Modes</td>
                    <td>
                        <asp:Label ID="meteringmodesLabel" runat="server" 
                            Text='<%# Bind("meteringmodes") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Supported Languages</td>
                    <td>
                        <asp:Label ID="supportedlanguagesLabel" runat="server" 
                            Text='<%# Bind("supportedlanguages") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Additional Features</td>
                    <td>
                        <asp:Label ID="additionalfeaturesLabel" runat="server" 
                            Text='<%# Bind("additionalfeatures") %>' />
                    </td>
                </tr>
            </table>
            <br />
        <br />
        </div>
        </div>



            
            &nbsp;<br />

        </ItemTemplate>
    </asp:FormView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [camera] WHERE ([regno] = @regno)">
        <SelectParameters>
            <asp:QueryStringParameter Name="regno" QueryStringField="strReg" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <iframe id="ifrm" runat="server" class="ifrm" frameborder="0" allowfullscreen></iframe>
</div>
</div>

<div class="front2">
<asp:Image ID="Image4" runat="server" ImageUrl="~/images/googleads3.png" Width="100%" style="padding-bottom:20px;"/>
<asp:Image ID="Image2" runat="server" ImageUrl="~/images/googleads3.png" Width="100%" style="padding-bottom:20px;"/>
<asp:Image ID="Image3" runat="server" ImageUrl="~/images/googleads3.png" Width="100%" style="padding-bottom:20px;"/>
<asp:Image ID="Image5" runat="server" ImageUrl="~/images/googleads3.png" Width="100%" style="padding-bottom:20px;"/>
</div>

</div>

    </div>
</asp:Content>