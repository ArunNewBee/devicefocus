<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="tablet_Default" MasterPageFile="~/tablet/site.master" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <link href="../styles/style.css"  rel="stylesheet" type="text/css" />
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
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="minisection" style="margin-top:10px;">

<div class="table blk">

<div class="front1" style="padding-right:0px;padding-top:20px;">
<div class="table blk">
<div class="searcgpad">

<p class="srchitmhd">Brand</p>
<asp:DropDownList ID="DropDownList3" runat="server" CssClass="ddldef" 
        onselectedindexchanged="DropDownList3_SelectedIndexChanged" 
        AutoPostBack="True">
            <asp:ListItem>Select Brand</asp:ListItem>
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


<p class="srchitmhd">Price</p>
<asp:DropDownList ID="DropDownList1" runat="server" CssClass="ddldef" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
        AutoPostBack="True">
        <asp:ListItem>Select Budget</asp:ListItem>
        <asp:ListItem Value="1">Rs.1,000 - Rs.10,000</asp:ListItem>
        <asp:ListItem Value="2">Rs.10,000 - Rs.15,000</asp:ListItem>
        <asp:ListItem Value="3">Rs.15,000 - Rs.20,000</asp:ListItem>
        <asp:ListItem Value="4">Rs.20,000 - Rs.25,000</asp:ListItem>
        <asp:ListItem Value="5">Rs.25,000 - Rs.30,000</asp:ListItem>
        <asp:ListItem Value="6">Rs.30,000 - Rs.35,000</asp:ListItem>
        <asp:ListItem Value="7">Rs.35,000 - Rs.40,000</asp:ListItem>
        <asp:ListItem Value="8">Rs.40,000 - Rs.50,000</asp:ListItem>
        <asp:ListItem Value="9">Rs.45,000 - Rs.50,000</asp:ListItem>
        <asp:ListItem Value="10">Rs.50,000 - Rs.1,00,000</asp:ListItem>
        <asp:ListItem Value="11">Above Rs.1,00,000</asp:ListItem>
        </asp:DropDownList>

<p class="srchitmhd">Operating System</p>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
        CssClass="RadioButtonList1" AutoPostBack="True" 
        onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
    <asp:ListItem>Android</asp:ListItem>
        <asp:ListItem>iOS</asp:ListItem>
        <asp:ListItem>Windows Phone</asp:ListItem>
        <asp:ListItem>Blackberry</asp:ListItem>
    </asp:RadioButtonList>

    <p class="srchitmhd">RAM</p>
    <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
        CssClass="RadioButtonList1" AutoPostBack="True" 
        onselectedindexchanged="RadioButtonList2_SelectedIndexChanged">
        <asp:ListItem>1GB</asp:ListItem>
        <asp:ListItem>2GB</asp:ListItem>
        <asp:ListItem>3GB</asp:ListItem>
        <asp:ListItem>4GB</asp:ListItem>
        <asp:ListItem>5GB</asp:ListItem>
    </asp:RadioButtonList>

    <p class="srchitmhd">Camera Features</p>
     
         
         <asp:RadioButton ID="RadioButton1" CssClass="rad" runat="server" 
        Text="Front Camera" AutoPostBack="True" 
        oncheckedchanged="RadioButton1_CheckedChanged" />
         <asp:RadioButton ID="RadioButton2" CssClass="rad" runat="server" 
        Text="Rear Camera" AutoPostBack="True" 
        oncheckedchanged="RadioButton2_CheckedChanged" />
         <asp:RadioButton ID="RadioButton3" CssClass="rad" runat="server" 
        Text="Flash" style="margin-bottom:20px;" AutoPostBack="True" 
        oncheckedchanged="RadioButton3_CheckedChanged" />
         
         
    <p class="srchitmhd">Camera Quality</p>
     <asp:RadioButtonList ID="RadioButtonList3" runat="server" 
        CssClass="RadioButtonList1" AutoPostBack="True" 
        onselectedindexchanged="RadioButtonList3_SelectedIndexChanged">
        <asp:ListItem>Below 5MP</asp:ListItem>
        <asp:ListItem>5MP - 10MP</asp:ListItem>
        <asp:ListItem>11MP - 20MP</asp:ListItem>
        <asp:ListItem>21MP - 30MP</asp:ListItem>
        <asp:ListItem>31MP - 40MP</asp:ListItem>
        <asp:ListItem>41MP - 50MP</asp:ListItem>
    </asp:RadioButtonList>
    
    
    
</div>
<div class="searchitem">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    
    
<asp:Label ID="lblStatus" runat="server" Text="Label" Visible="false"></asp:Label>
<asp:DataList ID="DataList1" runat="server" DataKeyField="regno" Width="100%"  RepeatColumns="3" RepeatDirection="Horizontal" style="vertical-align:top;">
        <ItemTemplate>
         <div class="sep1">
       <a href='<%# Eval("regno","profile.aspx?strReg={0}#list") %>'>  
         <img src='<%# Eval("pic") %>' alt='' style="width:100%;"/>
    <p class="listpara" style="text-align:center;">
        <asp:Label ID="Label1" runat="server" Text='<%# Eval("altname") %>' style="overflow:hidden;"></asp:Label></p> 
        </a></div>
                   
        </ItemTemplate>
        <ItemStyle VerticalAlign="Top"/>
        

        <FooterTemplate>
        <p style="text-align:center">
        <asp:Label Visible='<%#bool.Parse((DataList1.Items.Count==0).ToString())%>' runat="server" ID="lblNoRecord" Text="No Record Found!"></asp:Label>
        <br />
        <asp:Button ID="btnFirst" runat="server" OnClick="Button1_Click" Text="First" CssClass="botbtn"/>
        
        <asp:Button ID="btnPrevious" runat="server" OnClick="Button2_Click" Text="Prev" CssClass="botbtn"/>
            
        <asp:Button ID="btnNext" runat="server" OnClick="Button3_Click" Text="Next" CssClass="botbtn"/>
        
        <asp:Button ID="btnLast" runat="server" OnClick="Button4_Click" Text="Last" CssClass="botbtn"/>
        </p>
        </FooterTemplate>

    </asp:DataList>

    <asp:Label ID="intPageSize" runat="server" Text="Label" Visible="False"></asp:Label>
    <asp:Label ID="intCurrIndex" runat="server" Text="Label" Visible="False"></asp:Label>
    <asp:Label ID="intRecordCount" runat="server" Text="Label" Visible="False"></asp:Label>
    <asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label>
    </ContentTemplate>
    <Triggers>
    <asp:AsyncPostBackTrigger ControlID="RadioButtonList1" EventName="SelectedIndexChanged"></asp:AsyncPostBackTrigger>
    <asp:AsyncPostBackTrigger ControlID="RadioButtonList2" EventName="SelectedIndexChanged"></asp:AsyncPostBackTrigger>
    <asp:AsyncPostBackTrigger ControlID="RadioButtonList3" EventName="SelectedIndexChanged"></asp:AsyncPostBackTrigger>
    <asp:AsyncPostBackTrigger ControlID="DropDownList3" EventName="SelectedIndexChanged"></asp:AsyncPostBackTrigger>
    <asp:AsyncPostBackTrigger ControlID="DropDownList1" EventName="SelectedIndexChanged"></asp:AsyncPostBackTrigger>
    <asp:AsyncPostBackTrigger ControlID="RadioButton1" EventName="CheckedChanged"></asp:AsyncPostBackTrigger>
    <asp:AsyncPostBackTrigger ControlID="RadioButton2" EventName="CheckedChanged"></asp:AsyncPostBackTrigger>
    <asp:AsyncPostBackTrigger ControlID="RadioButton3" EventName="CheckedChanged"></asp:AsyncPostBackTrigger>
    </Triggers>
    </asp:UpdatePanel>


      <div class=brn>
    <p class="sectionhead">Brands</p>
  <p class="subsec">Popular Tablet Brands</p>
  <div class="table">

  <div class="britem">
  <p>
  <a href="Default.aspx?brand=Acer">Acer</a>
  </p>
 <p>
  <a href="Default.aspx?brand=Alcatel">Alcatel</a>
  </p>
<p>
  <a href="Default.aspx?brand=Allview">Allview</a>
  </p>
<p>
  <a href="Default.aspx?brand=Amazon">Amazon</a>
  </p>
<p>
  <a href="Default.aspx?brand=Amoi">Amoi</a>
  </p>
<p>
  <a href="Default.aspx?brand=Apple">Apple</a>
  </p>
<p>
  <a href="Default.aspx?brand=Archos">Archos</a>
  </p>
<p>
  <a href="Default.aspx?brand=Asus">Asus</a>
  </p>
<p>
  <a href="Default.aspx?brand=AT &amp; T">AT &amp; T</a>
  </p>
<p>
  <a href="Default.aspx?brand=Benefon">Benefon</a>
  </p>
<p>
  <a href="Default.aspx?brand=BenQ">BenQ</a>
  </p>
<p>
  <a href="Default.aspx?brand=BenQ - Siemens">BenQ - Siemens</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Bird">Bird</a>
  </p>
<p>
  <a href="Default.aspx?brand=BlackBerry">BlackBerry</a>
  </p>
<p>
  <a href="Default.aspx?brand=BLU">BLU</a>
  </p>
<p>
  <a href="Default.aspx?brand=BOSCH">BOSCH</a>
  </p>
<p>
  <a href="Default.aspx?brand=Casio">Casio</a>
  </p>
<p>
  <a href="Default.aspx?brand=Cat">Cat</a>
  </p>
<p>
  <a href="Default.aspx?brand=Celkon">Celkon</a>
  </p>
<p>
  <a href="Default.aspx?brand=Chea">Chea</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Dell">Dell</a>
  </p>
  
  </div>

  <div class="britem">
  
  

  <p>
  <a href="Default.aspx?brand=Emporia">Emporia</a>
  </p>
<p>
  <a href="Default.aspx?brand=Ericsson">Ericsson</a>
  </p>
<p>
  <a href="Default.aspx?brand=Eten">Eten</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Fujitsu Siemens">Fujitsu Siemens</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Garmin- Asus">Garmin- Asus</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Gigabyte">Gigabyte</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Gionee">Gionee</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Haier">Haier</a>
  </p>
  <p>
  <a href="Default.aspx?brand=HP">HP</a>
  </p>
  <p>
  <a href="Default.aspx?brand=hTC">hTC</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Huawei">Huawei</a>
  </p>
  <p>
  <a href="Default.aspx?brand=i-mate">i-mate</a>
  </p>
  <p>
  <a href="Default.aspx?brand=i-mobile">i-mobile</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Icemobile">Icemobile</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Innostream">Innostream</a>
  </p>
  <p>
  <a href="Default.aspx?brand=iNQ">iNQ</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Jolla">Jolla</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Karbonn">Karbonn</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Kyocera">Kyocera</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Lava">Lava</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Lenovo">Lenovo</a>
  </p>
  </div>

  <div class="britem">
  
  
  
  <p>
  <a href="Default.aspx?brand=LG">LG</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Maxon">Maxon</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Maxwest">Maxwest</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Meiza">Meiza</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Micomax">Micomax</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Microsoft">Microsoft</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Mitac">Mitac</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Mitsubishi">Mitsubishi</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Modu">Modu</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Motorola">Motorola</a>
  </p>
  <p>
  <a href="Default.aspx?brand=MWg">MWg</a>
  </p>
  <p>
  <a href="Default.aspx?brand=NEC">NEC</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Neonode">Neonode</a>
  </p>
  <p>
  <a href="Default.aspx?brand=NIU">NIU</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Nokia">Nokia</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Nvidia">Nvidia</a>
  </p>
  <p>
  <a href="Default.aspx?brand=O2">O2</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Oneplus">Oneplus</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Oppo">Oppo</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Orange">Orange</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Palm">Palm</a>
  </p>

  </div>

  <div class="britem">
 
  
  
  
  <p>
  <a href="Default.aspx?brand=Panasonic">Panasonic</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Pantech">Pantech</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Parla">Parla</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Philips">Philips</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Plum">Plum</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Posh">Posh</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Prestigio">Prestigio</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Qtek">Qtek</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Sagem">Sagem</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Samsung">Samsung</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Sendo">Sendo</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Sewon">Sewon</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Sharp">Sharp</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Seimens">Seimens</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Sonim">Sonim</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Sony">Sony</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Sony Ericsson">Sony Ericsson</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Spice">Spice</a>
  </p>
  <p>
  <a href="Default.aspx?brand=T-Mobile">T-Mobile</a>
  </p>
  <p>
  <a href="Default.aspx?brand=Tel.me">Tel.me</a>
  </p>
    <p>
  <a href="Default.aspx?brand=Telit">Telit</a>
  </p>
   

  </div>

  <div class="britem">

    
    
  
   <p> 
  <a href="Default.aspx?brand=Thuraya">Thuraya</a>
  </p>
    <p>
  <a href="Default.aspx?brand=Toshiba">Toshiba</a>
  </p>
    <p>
  <a href="Default.aspx?brand=Unnecto">Unnecto</a>
  </p>
    <p>
  <a href="Default.aspx?brand=Vertu">Vertu</a>
  </p>
    <p>
  <a href="Default.aspx?brand=Verykool">Verykool</a>
  </p>
    <p>
  <a href="Default.aspx?brand=Vivo">Vivo</a>
  </p>
    <p>
  <a href="Default.aspx?brand=VKMobile">VKMobile</a>
  </p>
    <p>
  <a href="Default.aspx?brand=Vodafone">Vodafone</a>
  </p>
    <p>
  <a href="Default.aspx?brand=Wiko">Wiko</a>
  </p>
    <p>
  <a href="Default.aspx?brand=WND">WND</a>
  </p>
    <p>
  <a href="Default.aspx?brand=Xcute">Xcute</a>
  </p>
    <p>
  <a href="Default.aspx?brand=Xiaomi">Xiaomi</a>
  </p>
    <p>
  <a href="Default.aspx?brand=XOLO">XOLO</a>
  </p>
    <p>
  <a href="Default.aspx?brand=Yezz">Yezz</a>
  </p>
    <p>
  <a href="Default.aspx?brand=Yota">Yota</a>
  </p>
    <p>
  <a href="Default.aspx?brand=YU">YU</a>
  </p>
    <p>
  <a href="Default.aspx?brand=ZTE">ZTE</a>
  </p>
  </div>

  </div>

  </div>






    </div>





    </div>



</div>
<div class="front2">

<asp:Image ID="Image4" runat="server" ImageUrl="~/images/googleads3.png" Width="100%"/>

<div style="width:100%;margin-top:20px;">
      <div class="comp1">
       
      <div class="incom1">
      <p class="comparehead">Compare</p>
      <div class="in">
     
    
        <asp:TextBox ID="txtContactsSearch" runat="server" CssClass="aut" ValidationGroup="re" CausesValidation="True"></asp:TextBox><br />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required !" CssClass="req" ControlToValidate="txtContactsSearch" ValidationGroup="re"></asp:RequiredFieldValidator>
<cc1:AutoCompleteExtender ServiceMethod="SearchCustomers" 
    MinimumPrefixLength="2"
    CompletionInterval="100" EnableCaching="false" CompletionSetCount="10" 
    TargetControlID="txtContactsSearch"
    ID="AutoCompleteExtender1" runat="server" FirstRowSelected = "false">
</cc1:AutoCompleteExtender>
<br />
<asp:TextBox ID="TextBox1" runat="server" CssClass="aut" ValidationGroup="re" CausesValidation="True"></asp:TextBox><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required !" CssClass="req" ControlToValidate="TextBox1" ValidationGroup="re"></asp:RequiredFieldValidator>
<cc1:AutoCompleteExtender ServiceMethod="SearchCustomers1" 
    MinimumPrefixLength="2"
    CompletionInterval="100" EnableCaching="false" CompletionSetCount="10" 
    TargetControlID="TextBox1"
    ID="AutoCompleteExtender2" runat="server" FirstRowSelected = "false">
</cc1:AutoCompleteExtender>
        </div>
        <p class="bt"><asp:Button ID="Button3" runat="server" Text="COMPARE" 
                CssClass="btn"  ValidationGroup="re" onclick="btn3_Click" /></p>
        </div>
      </div>



      </div>




</div>

</div>

</div>
</asp:Content>
