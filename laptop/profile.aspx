<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="laptop_profile" MasterPageFile="~/laptop/site.master" %>
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
        ontextchanged="txtContactsSearch_TextChanged" AutoPostBack="true" CssClass="aut" placeholder="&nbsp;&nbsp;Enter name of Laptop"></asp:TextBox>
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
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="regno" 
        DataSourceID="SqlDataSource1" Width="100%">
        
        <ItemTemplate>
            <p class="spec" style="margin-top:40px;margin-bottom:10px;">Detailed Specification</p>
        <div class="table blk">
        <div class="side1">
        <p class="specitem">
        General
        </p>
        <table class="tableitem">

        <tr><td>Brand</td>
        <td>
             <asp:Label ID="brandLabel" runat="server" Text='<%# Bind("brand") %>' />
        </td>
        </tr>
            <tr>
                <td>
                    Model</td>
                <td>
                    <asp:Label ID="modelLabel" runat="server" Text='<%# Bind("model") %>' />
                </td>
            </tr>
        </table>
        <p class="specitem">
        Processor Description
        </p>
        <table class="tableitem">
        <tr><td>Processor</td><td>
            <asp:Label ID="processorLabel" runat="server" Text='<%# Bind("processor") %>' />
            </td></tr>
            <tr>
                <td>
                    Speed</td>
                <td>
                    <asp:Label ID="speedLabel" runat="server" Text='<%# Bind("speed") %>' />
                </td>
            </tr>
            <tr>
                <td>
                    cache</td>
                <td>
                    <asp:Label ID="cacheLabel" runat="server" Text='<%# Bind("cache") %>' />
                </td>
            </tr>
        </table>
            <p class="specitem">
                Memory
            </p>
            <table class="tableitem">
                <tr>
                    <td>
                        RAM</td>
                    <td>
                        <asp:Label ID="ramLabel" runat="server" Text='<%# Bind("ram") %>' />
                        GB</td>
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
                        RAM Speed</td>
                    <td>
                        <asp:Label ID="ramspeedLabel" runat="server" Text='<%# Bind("ramspeed") %>' />
                    </td>
                </tr>
            </table>
            <p class="specitem">
                Hard Drive</p>
            <table class="tableitem">
                <tr>
                    <td>
                        Inbuild HDD</td>
                    <td>
                        <asp:Label ID="inbuildhddLabel" runat="server" 
                            Text='<%# Bind("inbuildhdd") %>' />
                        GB</td>
                </tr>
                <tr>
                    <td>
                        Hard Disk Speed(RPM)</td>
                    <td>
                        <asp:Label ID="hdspeedLabel" runat="server" Text='<%# Bind("hdspeed") %>' />
                    </td>
                </tr>
            </table>
            <p class="specitem">
                Display Features</p>
            <table class="tableitem">
                <tr>
                    <td>
                        Screen Size</td>
                    <td>
                        <asp:Label ID="screensizeLabel" runat="server" 
                            Text='<%# Bind("screensize") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Resolution</td>
                    <td>
                        <asp:Label ID="resolutionLabel" runat="server" 
                            Text='<%# Bind("resolution") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Panel Type</td>
                    <td>
                        <asp:Label ID="paneltypeLabel" runat="server" Text='<%# Bind("paneltype") %>' />
                    </td>
                </tr>
            </table>
            <p class="specitem">
                Chipset</p>
            <table class="tableitem">
                <tr>
                    <td>
                        GPU Model</td>
                    <td>
                        <asp:Label ID="gpumodelLabel" runat="server" Text='<%# Bind("gpumodel") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        GPU Memory</td>
                    <td>
                        <asp:Label ID="gpumemoryLabel" runat="server" Text='<%# Bind("gpumemory") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        HDMI Port</td>
                    <td>
                        <asp:Label ID="hdmiportLabel" runat="server" Text='<%# Bind("hdmiport") %>' />
                    </td>
                </tr>
            </table>
            <br />
        <br />
        </div>
        <div class="side2">
            <p class="specitem">
                Networking</p>
            <table class="tableitem">
                <tr>
                    <td>
                        Ethernet Port</td>
                    <td>
                        <asp:Label ID="ethernetportLabel" runat="server" 
                            Text='<%# Bind("ethernetport") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Ethernet Type</td>
                    <td>
                        <asp:Label ID="ethernettypeLabel" runat="server" 
                            Text='<%# Bind("ethernettype") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        WiFi Type</td>
                    <td>
                        <asp:Label ID="wifitypeLabel" runat="server" Text='<%# Bind("wifitype") %>' />
                    </td>
                </tr>
            </table>
            <p class="specitem">
                Connectivity</p>
            <table class="tableitem">
                <tr>
                    <td>
                        USB 2.0 Port</td>
                    <td>
                        <asp:Label ID="usb2Label" runat="server" Text='<%# Bind("usb2") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        USB 3.0 Port</td>
                    <td>
                        <asp:Label ID="usb3Label" runat="server" Text='<%# Bind("usb3") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Bluetooth</td>
                    <td>
                        <asp:Label ID="bluetoothLabel" runat="server" Text='<%# Bind("bluetooth") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Buildin Camera</td>
                    <td>
                        <asp:Label ID="buildincamLabel" runat="server" 
                            Text='<%# Bind("buildincam") %>' />
                    </td>
                </tr>
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
                        Digital Media Reader</td>
                    <td>
                        <asp:Label ID="digiLabel" runat="server" Text='<%# Bind("digi") %>' />
                    </td>
                </tr>
            </table>
            <p class="specitem">
                Battery</p>
            <table class="tableitem">
                <tr>
                    <td>
                        Battery Type</td>
                    <td>
                        <asp:Label ID="batterytypeLabel" runat="server" 
                            Text='<%# Bind("batterytype") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Battery Cell</td>
                    <td>
                        <asp:Label ID="batterycellLabel" runat="server" 
                            Text='<%# Bind("batterycell") %>' />
                    </td>
                </tr>
            </table>
            <p class="specitem">
                Operating System</p>
            <table class="tableitem">
                <tr>
                    <td>
                        OS</td>
                    <td>
                        <asp:Label ID="osLabel" runat="server" Text='<%# Bind("os") %>' />
                    </td>
                </tr>
            </table>
            <p class="specitem">
                Other Features</p>
            <table class="tableitem">
            <tr>
                    <td>
                        Features</td>
                    <td>
                        <asp:Label ID="otherfeaturesLabel" runat="server" 
                Text='<%# Bind("otherfeatures") %>' />
                    </td>
                </tr>
            </table>
            <p class="specitem">
                After Sales Service</p>
            <table class="tableitem">
                <tr>
                    <td>
                        Warranty</td>
                    <td>
                        <asp:Label ID="warrantyLabel" runat="server" Text='<%# Bind("warranty") %>' />
                    </td>
                </tr>
            </table>
            <br />
        <br />
        </div>
           
        </ItemTemplate>
    </asp:FormView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [laptop] WHERE ([regno] = @regno)">
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