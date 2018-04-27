<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" MasterPageFile="~/site.master" %>


<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <link href="styles/style.css"  rel="stylesheet" type="text/css" />
    <!--Link the CSS style  sheet that styles the tabbed panel-->
	<link href="SpryAssets/SpryTabbedPanels.css" rel="stylesheet" type="text/css" />
	<!--Link the Spry TabbedPanels JavaScript library-->
	<script src="SpryAssets/SpryTabbedPanels.js" type="text/javascript"></script> 
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
<div class="table">
<div class="front1">
<p class="caption" style="font-size:30px">Xiaomi Mi 4c</p>
<p class="subcaption1">Xiaomi All Set to Launch Xiaomi Mi 4c on 22nd September.</p>
    <asp:Image ID="Image3" runat="server" ImageUrl="~/images/Launch_Xiaomi_M_4c_device_focus.jpg" Width="100%" />
    <p class="cntnt">
    Several reports say that Xiaomi — the Chinese Smartphone manufacturer that had a tremendous reception from the 

Indian budget-friendly market — is all set to come up with its brand new device...<a href="news/Xiaomi_Mi_4c.aspx" class="more">more</a>
    
    </p>
    </div>
<div class="front2">    
<asp:Image ID="Image4" runat="server" ImageUrl="~/images/googleads3.png" Width="100%"/>

<div class="search">
<div class="colband">
<p class="srhd" style="width:80%">Search</p>
<p class="subsrhd" style="width:80%">Your new smart phone</p>
</div>

<!--Create the Tabbed Panel widget and assign classes to each element-->
	<div class="TabbedPanels" id="TabbedPanels1"">
		<ul class="TabbedPanelsTabGroup">
			<li class="TabbedPanelsTab">By Budget</li> 
			<li class="TabbedPanelsTab">By Brand</li> 
			
		</ul>
		<div class="TabbedPanelsContentGroup">
			<div class="TabbedPanelsContent">
            <div class="inpan">
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="ddl">
        <asp:ListItem>Select budget</asp:ListItem>
        <asp:ListItem Value="1">Rs.1,000 - Rs.10,000</asp:ListItem>
        <asp:ListItem Value="2">Rs.10,000 - Rs.15,000</asp:ListItem>
        <asp:ListItem Value="3">Rs.15,000 - Rs.20,000</asp:ListItem>
        <asp:ListItem Value="4">Rs.20,000 - Rs.25,000</asp:ListItem>
        <asp:ListItem Value="5">Rs.25,000 - Rs.30,000</asp:ListItem>
        <asp:ListItem Value="6">Rs.30,000 - Rs.35,000</asp:ListItem>
        <asp:ListItem Value="7">Rs.35,000 - Rs.40,000</asp:ListItem>
        <asp:ListItem Value="8">Rs.40,000 - Rs.50,000</asp:ListItem>
        <asp:ListItem Value="9">Rs.50,000 - Rs.1,00,000</asp:ListItem>
        <asp:ListItem Value="10">Above Rs.1,00,000</asp:ListItem>
        </asp:DropDownList>
        
        <p class="bt"><asp:Button ID="Button1" runat="server" Text="SEARCH" CssClass="btn" 
                onclick="Button1_Click" /></p>
    </div>
            </div>
			<div class="TabbedPanelsContent">
            <div class="inpan">
    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="ddl">
            <asp:ListItem>Nokia</asp:ListItem>
            <asp:ListItem>Samsung</asp:ListItem>
            <asp:ListItem>Sony</asp:ListItem>
            <asp:ListItem>Apple</asp:ListItem>
            <asp:ListItem>Microsoft</asp:ListItem>
            <asp:ListItem>Micromax</asp:ListItem>
            <asp:ListItem>Max</asp:ListItem>
            <asp:ListItem>Onida</asp:ListItem>
            <asp:ListItem>Karbonn</asp:ListItem>
            <asp:ListItem>XOLO</asp:ListItem>
            <asp:ListItem>hTC</asp:ListItem>
            <asp:ListItem>Motorola</asp:ListItem>
            <asp:ListItem>Oppo</asp:ListItem>
            <asp:ListItem>Lava</asp:ListItem>
            <asp:ListItem>LG</asp:ListItem>
            <asp:ListItem>Lenovo</asp:ListItem>
            <asp:ListItem>Gionee</asp:ListItem>
            <asp:ListItem>acer</asp:ListItem>
            <asp:ListItem>Alcatel</asp:ListItem>
            <asp:ListItem>Allview</asp:ListItem>
            <asp:ListItem>Amazon</asp:ListItem>
            <asp:ListItem>Amoi</asp:ListItem>
            <asp:ListItem>Apple</asp:ListItem>
            <asp:ListItem>Archos</asp:ListItem>
            <asp:ListItem>Asus</asp:ListItem>
            <asp:ListItem>AT &amp; T</asp:ListItem>
            <asp:ListItem>Benefon</asp:ListItem>
            <asp:ListItem>BenQ</asp:ListItem>
            <asp:ListItem>BenQ - Siemens</asp:ListItem>
            <asp:ListItem>Bird</asp:ListItem>
            <asp:ListItem>BlackBerry</asp:ListItem>
            <asp:ListItem>BLU</asp:ListItem>
            <asp:ListItem>BOSCH</asp:ListItem>
            <asp:ListItem>Casio</asp:ListItem>
            <asp:ListItem>Cat</asp:ListItem>
            <asp:ListItem>Celkon</asp:ListItem>
            <asp:ListItem>Chea</asp:ListItem>
            <asp:ListItem>Dell</asp:ListItem>
            <asp:ListItem>Emporia</asp:ListItem>
            <asp:ListItem>Ericsson</asp:ListItem>
            <asp:ListItem>Eten</asp:ListItem>
            <asp:ListItem>Fujitsu Siemens</asp:ListItem>
            <asp:ListItem>Garmin- Asus</asp:ListItem>
            <asp:ListItem>Gigabyte</asp:ListItem>
            <asp:ListItem>Gionee</asp:ListItem>
            <asp:ListItem>Haier</asp:ListItem>
            <asp:ListItem>HP</asp:ListItem>
            <asp:ListItem>hTC</asp:ListItem>
            <asp:ListItem>Huawei</asp:ListItem>
            <asp:ListItem>i-mate</asp:ListItem>
            <asp:ListItem>i-mobile</asp:ListItem>
            <asp:ListItem>Icemobile</asp:ListItem>
            <asp:ListItem>Innostream</asp:ListItem>
            <asp:ListItem>iNQ</asp:ListItem>
            <asp:ListItem>Jolla</asp:ListItem>
            <asp:ListItem>Karbonn</asp:ListItem>
            <asp:ListItem>Kyocera</asp:ListItem>
            <asp:ListItem>Lava</asp:ListItem>
            <asp:ListItem>Lenovo</asp:ListItem>
            <asp:ListItem>LG</asp:ListItem>
            <asp:ListItem>Maxon</asp:ListItem>
            <asp:ListItem>Maxwest</asp:ListItem>
            <asp:ListItem>Meiza</asp:ListItem>
            <asp:ListItem>Micomax</asp:ListItem>
            <asp:ListItem>Microsoft</asp:ListItem>
            <asp:ListItem>Mitac</asp:ListItem>
            <asp:ListItem>Mitsubishi</asp:ListItem>
            <asp:ListItem>Modu</asp:ListItem>
            <asp:ListItem>Motorola</asp:ListItem>
            <asp:ListItem>MWg</asp:ListItem>
            <asp:ListItem>NEC</asp:ListItem>
            <asp:ListItem>Neonode</asp:ListItem>
            <asp:ListItem>NIU</asp:ListItem>
            <asp:ListItem>Nokia</asp:ListItem>
            <asp:ListItem>Nvidia</asp:ListItem>
            <asp:ListItem>O2</asp:ListItem>
            <asp:ListItem>Oneplus</asp:ListItem>
            <asp:ListItem>Oppo</asp:ListItem>
            <asp:ListItem>Orange</asp:ListItem>
            <asp:ListItem>Palm</asp:ListItem>
            <asp:ListItem>Panasonic</asp:ListItem>
            <asp:ListItem>Pantech</asp:ListItem>
            <asp:ListItem>Parla</asp:ListItem>
            <asp:ListItem>Philips</asp:ListItem>
            <asp:ListItem>Plum</asp:ListItem>
            <asp:ListItem>Posh</asp:ListItem>
            <asp:ListItem>Prestigio</asp:ListItem>
            <asp:ListItem>Qtek</asp:ListItem>
            <asp:ListItem>Sagem</asp:ListItem>
            <asp:ListItem>Samsung</asp:ListItem>
            <asp:ListItem>Sendo</asp:ListItem>
            <asp:ListItem>Sewon</asp:ListItem>
            <asp:ListItem>Sharp</asp:ListItem>
            <asp:ListItem>Seimens</asp:ListItem>
            <asp:ListItem>Sonim</asp:ListItem>
            <asp:ListItem>Sony</asp:ListItem>
            <asp:ListItem>Sony Ericsson</asp:ListItem>
            <asp:ListItem>Spice</asp:ListItem>
            <asp:ListItem>T-Mobile</asp:ListItem>
            <asp:ListItem>Tel.me</asp:ListItem>
            <asp:ListItem>Telit</asp:ListItem>
            <asp:ListItem>Thuraya</asp:ListItem>
            <asp:ListItem>Toshiba</asp:ListItem>
            <asp:ListItem>Unnecto</asp:ListItem>
            <asp:ListItem>Vertu</asp:ListItem>
            <asp:ListItem>Verykool</asp:ListItem>
            <asp:ListItem>Vivo</asp:ListItem>
            <asp:ListItem>VKMobile</asp:ListItem>
            <asp:ListItem>Vodafone</asp:ListItem>
            <asp:ListItem>Wiko</asp:ListItem>
            <asp:ListItem>WND</asp:ListItem>
            <asp:ListItem>Xcute</asp:ListItem>
            <asp:ListItem>Xiaomi</asp:ListItem>
            <asp:ListItem>XOLO</asp:ListItem>
            <asp:ListItem>Yezz</asp:ListItem>
            <asp:ListItem>Yota</asp:ListItem>
            <asp:ListItem>YU</asp:ListItem>
            <asp:ListItem>ZTE</asp:ListItem>
        </asp:DropDownList>
        
        <p class="bt"><asp:Button ID="Button2" runat="server" Text="SEARCH" CssClass="btn" 
                onclick="Button2_Click" /></p>
        </div>
            </div>
			
		</div> 
	</div>
<!--Initialize the Tabbed Panel widget object-->
<script type="text/javascript">
    var TabbedPanels1 = new Spry.Widget.TabbedPanels("TabbedPanels1");
</script> 



    
    </div>

    </div>
</div>
    
</div>

<div class="section">
<div class="minisection">

<p class="sectionhead">Devices</p>
<p class="subsec">Latest Electronic Devices</p>
<div class="table">
<div class="front1" style="padding:0px;">
<div class="table blk">
    <div class="rec1">
    <div class="impara">
        <a href="smartphone/"><asp:Image ID="Image5" runat="server" CssClass="im1" ImageUrl="~/images/smart_phone_device_focus_com.png" /></a>
        <p class="bot"><span>Smartphones</span></p>
        </div>
    </div>
    <div class="rec1">
    <div class="impara">
    <a href="tablet/"><asp:Image ID="Image6" runat="server" CssClass="im1" ImageUrl="~/images/tab.png" /></a>
    <p class="bot"><span>Tablets</span></p>
    </div>
    </div>
    <div class="rec1">
    <div class="impara">
    <a href="smartwatch/"><asp:Image ID="Image7" runat="server" CssClass="im1" ImageUrl="~/images/smart_watch_device_focus_com.png"  /></a>
    <p class="bot"><span>Smartwatches</span></p>
    </div>
    </div>
    </div>


    <div class="table" style="margin-top:11px;">
    <div class="rec1">
    <div class="impara">
        <a href="laptop/"><asp:Image ID="Image9" runat="server" CssClass="im1" ImageUrl="~/images/Laptop_New_device_focus_com.png" /></a>
        <p class="bot"><span>Laptops</span></p>
        </div>
    </div>
    <div class="rec1">
    <div class="impara">
    <a href="#"><asp:Image ID="Image10" runat="server" CssClass="im1" ImageUrl="~/images/PS4_GAME_device_focus_com.png" /></a>
    <p class="bot"><span>Games</span></p>
    </div>
    </div>
    <div class="rec1">
    <div class="impara">
    <a href="camera/"><asp:Image ID="Image11" runat="server" CssClass="im1" ImageUrl="~/images/Digital_Camera_device_focus_com.png"  /></a>
    <p class="bot"><span>Cameras</span></p>
    </div>
    </div>
    </div>


    </div>

    <div class="front2">
    <asp:Image ID="Image8" runat="server" ImageUrl="~/images/googleads3.png" Width="100%"/>
    </div>
    </div>
</div>
</div>


<div class="minisection" style="margin-top:20px;">
<div class="table">
<div class="front1">
<div class="ad468">
<asp:Image ID="Image15" class="adbnr" runat="server" ImageUrl="~/images/adbnr468.gif"/>
</div>
</div>
<div class="front2"></div>
</div>
</div>

<div class="minisection" style="margin-top:50px;margin-bottom:50px;">

<p class="sectionhead">News</p>
<p class="subsec">Latest Electronic Device's News</p>
<div class="table">
<div class="front1">




<!----   news start      ----->

<div class="news">

<div class="table">
<div class="newsimg">
    <asp:Image ID="Image14" runat="server" ImageUrl="~/images/Launch_Xiaomi_M_4c_device_focus.jpg" Width="90%" />
</div>
<div class="newsarti">
<p class="newshead"><a href="news/Xiaomi_Mi_4c.aspx">A Budget-Friendly Smartphone from Samsung.</a></p>
<p class="newspara">Several reports say that Xiaomi — the Chinese Smartphone manufacturer that had a tremendous reception from the 

Indian budget-friendly market — is all set to come up with its brand new device...<a href="news/Xiaomi_Mi_4c.aspx" class="more">more</a></p>
</div>
</div>

</div>

<!----   news end      ----->


<!----   news start      ----->

<div class="news">

<div class="table">
<div class="newsimg">
    <asp:Image ID="Image13" runat="server" ImageUrl="~/images/Samsung_Galaxy_Core_Prime_VE.jpg" Width="90%" />
</div>
<div class="newsarti">
<p class="newshead"><a href="news/Samsung_Galaxy_Core_Prime_VE.aspx">A Budget-Friendly Smartphone from Samsung.</a></p>
<p class="newspara">It seems Samsung hasn’t given up with their decision to present more and more budget-friendly Smartphones to the

Indian Smartphone market, despite the fact that most of its devices are despised for the clumsiness of User Interface 

and the richness in terms of bloatware. Now, the...<a href="news/Samsung_Galaxy_Core_Prime_VE.aspx" class="more">more</a></p>
</div>
</div>

</div>

<!----   news end      ----->




<!----   news start      ----->

<div class="news">

<div class="table">
<div class="newsimg">
    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/lenovo-laptop-ideapad-y700-touch-front-3.jpg" Width="90%" />
</div>
<div class="newsarti">
<p class="newshead"><a href="news/Lenovo_IdeaPad_Y700_17ISK.aspx">Lenovo Launches Its Gaming Laptop.</a></p>
<p class="newspara">Up until this time, Alienware would be the first name to strike in your mind when you decide to get a gaming laptop,

with brilliant specifications and features. Now, however, it seems, Lenovo is...<a href="news/Lenovo_IdeaPad_Y700_17ISK.aspx" class="more">more</a></p>
</div>
</div>

</div>

<!----   news end      ----->


<!----   news start      ----->

<div class="news">

<div class="table">
<div class="newsimg">
    <asp:Image ID="Image12" runat="server" ImageUrl="~/images/ipad1200x628.png" Width="90%" />
</div>
<div class="newsarti">
<p class="newshead"><a href="news/ipad.aspx">Apple Inc comes with a revamped version of iPad, namely iPad Pro.</a></p>
<p class="newspara">it isn’t at all common when Apple Inc comes up with a larger version of their always-popular Tablet PC! So, when it does, we will naturally have a lot to talk about as well as to ponder over...<a href="news/ipad.aspx" class="more">more</a></p>
</div>
</div>

</div>

<!----   news end      ----->


<!----   news start      ----->

<div class="news" style="padding-top:0px;">

<div class="table">
<div class="newsimg">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/divice_focus_micromax_canvas-sliver-5.png" Width="90%" />
</div>
<div class="newsarti">
<p class="newshead"><a href="news/micromax_canvas5.aspx">Micromax Canvas Sliver 5, The Slimmest Phone Ever</a></p>
<p class="newspara">Featuring a razor-thin 5.1mm body, the Micromax Canvas Sliver 5 is a design marvel. Carved to perfection, the phone has been sculpted aesthetically for a snug fit in your hands...<a href="news/micromax_canvas5.aspx" class="more">more</a>
</p>
</div>
</div>

</div>

<!----   news end      ----->




<!----   news start      ----->



<!----   news end      ----->

<!----   news start      ----->



<!----   news end      ----->


</div>
<div class="front2">
<div class="dummy"></div>
</div>
</div>
</div>









<div style="position:fixed;top:40%;left:5px;">

<div class="fb-share-button" data-href="http://devicefocus.com" data-layout="box_count"></div>

</div>

 
  </asp:Content>
