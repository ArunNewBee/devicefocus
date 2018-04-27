<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="tablet_profile" MasterPageFile="~/tablet/site.master" %>
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
<li><a href="Default.aspx">Tablet</a>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;</li>
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
        ontextchanged="txtContactsSearch_TextChanged" AutoPostBack="true" CssClass="aut" placeholder="&nbsp;&nbsp;Enter name of Tablet"></asp:TextBox>
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
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="regno" style="width:100%"
        DataSourceID="SqlDataSource1">
        
        <ItemTemplate>
        <p class="spec" style="margin-top:40px;margin-bottom:10px;">Detailed Specification</p>
        <div class="table blk">
        <div class="side1">
        <p class="specitem">
        General
        </p>
        <table class="tableitem">

        <tr><td>Release Date</td>
        <td>
             <asp:Label ID="releasedateLabel" runat="server" 
             Text='<%# Bind("releasedate") %>' />
        </td>
        </tr>

        <tr><td>Form Factor</td>
        <td>
              <asp:Label ID="formfactorLabel" runat="server" 
              Text='<%# Bind("formfactor") %>' />
        </td>
        </tr>

        <tr><td>Dimension</td>
        <td>
              <asp:Label ID="dimensionLabel" runat="server" Text='<%# Bind("dimension") %>' />
        </td>
        </tr>

        <tr><td>Weight</td>
        <td>
              <asp:Label ID="Label2" runat="server" Text='<%# Bind("weight") %>' />
        </td>
        </tr>

        <tr><td>Battery Capacity</td>
        <td>
              <asp:Label ID="Label3" runat="server" Text='<%# Bind("batcap") %>' />
        </td>
        </tr>

        <tr><td>Removable Battery</td>
        <td>
              <asp:Label ID="Label4" runat="server" Text='<%# Bind("removablebat") %>' />
        </td>
        </tr>

        <tr><td>Colors</td>
        <td>
              <asp:Label ID="Label5" runat="server" Text='<%# Bind("colors") %>' />
        </td>
        </tr>

        <tr><td>SAR Value</td>
        <td>
              <asp:Label ID="Label6" runat="server" Text='<%# Bind("SAR") %>' />
        </td>
        </tr>
        </table>

        <p class="specitem">
        Display
        </p>
        <table class="tableitem">
        <tr>
        <td>Screen Size</td>
        <td>
              <asp:Label ID="screensizeLabel" runat="server" 
                Text='<%# Bind("screensize") %>' />
        </td>
        </tr>

        <tr>
        <td>Touchscreen</td>
        <td>
              <asp:Label ID="Label7" runat="server" 
                Text='<%# Bind("touchscreen") %>' />
        </td>
        </tr>

        <tr>
        <td>Touchscreen Type</td>
        <td>
              <asp:Label ID="Label8" runat="server" 
                Text='<%# Bind("touchscreen") %>' />
        </td>
        </tr>

        <tr>
        <td>Resolution</td>
        <td>
              <asp:Label ID="Label9" runat="server" 
                Text='<%# Bind("resolution") %>' />
        </td>
        </tr>

        <tr>
        <td>Pixel Per Inch</td>
        <td>
              <asp:Label ID="Label10" runat="server" 
                Text='<%# Bind("pixelperinch") %>' />
        </td>
        </tr>

        <tr>
        <td>Display Color</td>
        <td>
              <asp:Label ID="Label11" runat="server" 
                Text='<%# Bind("dispcolor") %>' />
        </td>
        </tr>
        </table>

        <p class="specitem">
        Camera
        </p>

        <table class="tableitem">
        
        <tr>
        <td>Rear Camera</td>
        <td>
              <asp:Label ID="Label16" runat="server" Text='<%# Bind("rearcam") %>' />
        </td>
        </tr>

        <tr>
        <td>Front Camera</td>
        <td>
              <asp:Label ID="Label17" runat="server" Text='<%# Bind("frontcam") %>' />
        </td>
        </tr>

        <tr>
        <td>Flash</td>
        <td>
              <asp:Label ID="Label18" runat="server" Text='<%# Bind("flash") %>' />
        </td>
        </tr>
        </table>

        <p class="specitem">
        Hardware
        </p>

        <table class="tableitem">
        
        <tr>
        <td>Processor</td>
        <td>
              <asp:Label ID="Label12" runat="server" Text='<%# Bind("processor") %>' />
        </td>
        </tr>

        <tr>
        <td>RAM</td>
        <td>
              <asp:Label ID="Label13" runat="server" Text='<%# Bind("RAM") %>' />
        </td>
        </tr>

        <tr>
        <td>Internal Memmory</td>
        <td>
              <asp:Label ID="Label14" runat="server" Text='<%# Bind("intstorage") %>' />
        </td>
        </tr>

        <tr>
        <td>Expandable Memmory</td>
        <td>
              <asp:Label ID="Label15" runat="server" Text='<%# Bind("expstorage") %>' />
        </td>
        </tr>
        </table>

        <p class="specitem">
        Software
        </p>

        <table class="tableitem">

        <tr>
        <td>Operating System</td>
        <td>
              <asp:Label ID="Label19" runat="server" Text='<%# Bind("osver") %>' />
        </td>
        </tr>

        <tr>
        <td>Javasupport</td>
        <td>
              <asp:Label ID="Label21" runat="server" Text='<%# Bind("javasupport") %>' />
        </td>
        </tr>

        <tr>
        <td>Browser</td>
        <td>
              <asp:Label ID="Label22" runat="server" Text='<%# Bind("browser") %>' />
        </td>
        </tr>
        </table>

        
        </div>
            
        <div class="side2">
        

        <p class="specitem">
        Connectivity
        </p>

        <table class="tableitem">
        <tr>
        <td>Wifi</td>
        <td>
              <asp:Label ID="wifiLabel" runat="server" Text='<%# Bind("wifi") %>' />
        </td>
        </tr>

        <tr>
        <td>GPS</td>
        <td>
              <asp:Label ID="Label23" runat="server" Text='<%# Bind("GPS") %>' />
        </td>
        </tr>

        <tr>
        <td>Bluetooth</td>
        <td>
              <asp:Label ID="Label24" runat="server" Text='<%# Bind("bluetooth") %>' />
        </td>
        </tr>

         <tr>
        <td>NFC</td>
        <td>
              <asp:Label ID="Label25" runat="server" Text='<%# Bind("NFC") %>' />
        </td>
        </tr>

        <tr>
        <td>Bluetooth Profile</td>
        <td>
              <asp:Label ID="Label26" runat="server" Text='<%# Bind("bluetoothprofiles") %>' />
        </td>
        </tr>

        <tr>
        <td>DLNA</td>
        <td>
              <asp:Label ID="Label27" runat="server" Text='<%# Bind("DLNA") %>' />
        </td>
        </tr>

         <tr>
        <td>Wifi Direct</td>
        <td>
              <asp:Label ID="Label28" runat="server" Text='<%# Bind("wifidir") %>' />
        </td>
        </tr>

         <tr>
        <td>MHL</td>
        <td>
              <asp:Label ID="Label29" runat="server" Text='<%# Bind("MHL") %>' />
        </td>
        </tr>

        <tr>
        <td>HDMI</td>
        <td>
              <asp:Label ID="Label30" runat="server" Text='<%# Bind("HDMI") %>' />
        </td>
        </tr>

        <tr>
        <td>Headphone</td>
        <td>
              <asp:Label ID="Label31" runat="server" Text='<%# Bind("headphone") %>' />
        </td>
        </tr>

        <tr>
        <td>FM</td>
        <td>
              <asp:Label ID="Label32" runat="server" Text='<%# Bind("FM") %>' />
        </td>
        </tr>

        <tr>
        <td>USB</td>
        <td>
              <asp:Label ID="Label33" runat="server" Text='<%# Bind("USB") %>' />
        </td>
        </tr>

        </table>

        <p class="specitem">
        Network
        </p>

        <table class="tableitem">

        <tr>
        <td>No of SIM</td>
        <td>
              <asp:Label ID="Label34" runat="server" Text='<%# Bind("noofsim") %>' />
        </td>
        </tr>

        <tr>
        <td>SIM Type</td>
        <td>
              <asp:Label ID="Label35" runat="server" Text='<%# Bind("simtype") %>' />
        </td>
        </tr>

        <tr>
        <td>Infra</td>
        <td>
              <asp:Label ID="Label36" runat="server" Text='<%# Bind("infra") %>' />
        </td>
        </tr>

        <tr>
        <td>2G</td>
        <td>
              <asp:Label ID="Label20" runat="server" Text='<%# Bind("twog") %>' />
        </td>
        </tr>

        <tr>
        <td>3G</td>
        <td>
              <asp:Label ID="Label37" runat="server" Text='<%# Bind("threeg") %>' />
        </td>
        </tr>

        <tr>
        <td>4G LTE</td>
        <td>
              <asp:Label ID="Label38" runat="server" Text='<%# Bind("fourg") %>' />
        </td>
        </tr>
        </table>

        <p class="specitem">
        Sensors
        </p>

        <table class="tableitem">
        <tr>
        <td>Compass</td>
        <td>
              <asp:Label ID="compassLabel" runat="server" Text='<%# Bind("compass") %>' />
        </td>
        </tr>

        <tr>
        <td>Proximity</td>
        <td>
              <asp:Label ID="Label39" runat="server" Text='<%# Bind("proxi") %>' />
        </td>
        </tr>

         <tr>
        <td>Accelerometer </td>
        <td>
              <asp:Label ID="Label40" runat="server" Text='<%# Bind("accmtr") %>' />
        </td>
        </tr>

        <tr>
        <td>Ambient light sensor</td>
        <td>
              <asp:Label ID="Label41" runat="server" Text='<%# Bind("amplightsensor") %>' />
        </td>
        </tr>

        <tr>
        <td>Gyroscope</td>
        <td>
              <asp:Label ID="Label42" runat="server" Text='<%# Bind("gyroscope") %>' />
        </td>
        </tr>

        <tr>
        <td>Barometer</td>
        <td>
              <asp:Label ID="Label43" runat="server" Text='<%# Bind("baromtr") %>' />
        </td>
        </tr>

        <tr>
        <td>Temperature sensor</td>
        <td>
              <asp:Label ID="Label44" runat="server" Text='<%# Bind("temp") %>' />
        </td>
        </tr>
        </table>

        </div>
        </div>
        
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [tablet] WHERE ([regno] = @regno)">
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