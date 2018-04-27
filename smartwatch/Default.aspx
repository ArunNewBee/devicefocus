 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="smartwatch_Default" MasterPageFile="~/smartwatch/site.master" %>
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
        AutoPostBack="True" 
        onselectedindexchanged="DropDownList3_SelectedIndexChanged">
            <asp:ListItem>Select Brand</asp:ListItem>
            <asp:ListItem>Adine</asp:ListItem>
            <asp:ListItem>Apple</asp:ListItem>
            <asp:ListItem>Artzz</asp:ListItem>
            <asp:ListItem>Beaufort</asp:ListItem>
            <asp:ListItem>Breo</asp:ListItem>
            <asp:ListItem>Burg</asp:ListItem>
            <asp:ListItem>Burn</asp:ListItem>
            <asp:ListItem>Casio</asp:ListItem>
            <asp:ListItem>Citizen</asp:ListItem>
            <asp:ListItem>Cookoo</asp:ListItem>
            <asp:ListItem>Crude</asp:ListItem>
            <asp:ListItem>CSM</asp:ListItem>
            <asp:ListItem>Fastrack</asp:ListItem>
            <asp:ListItem>Fitbit</asp:ListItem>
            <asp:ListItem>Garmin</asp:ListItem>
            <asp:ListItem>GOQll</asp:ListItem>
            <asp:ListItem>Healthsense</asp:ListItem>
            <asp:ListItem>iBerry</asp:ListItem>
            <asp:ListItem>Jawbone</asp:ListItem>
            <asp:ListItem>Kenxinda</asp:ListItem>
            <asp:ListItem>LG</asp:ListItem>
            <asp:ListItem>Martian</asp:ListItem>
            <asp:ListItem>Motorola</asp:ListItem>
            <asp:ListItem>Noise</asp:ListItem>
            <asp:ListItem>Omate</asp:ListItem>
            <asp:ListItem>Pebble</asp:ListItem>
            <asp:ListItem>Q &amp; Q</asp:ListItem>
            <asp:ListItem>Raux</asp:ListItem>
            <asp:ListItem>Runtastic</asp:ListItem>
            <asp:ListItem>Samsung</asp:ListItem>
            <asp:ListItem>Seiko</asp:ListItem>
            <asp:ListItem>Soleus</asp:ListItem>
            <asp:ListItem>Sonata</asp:ListItem>
            <asp:ListItem>Sony</asp:ListItem>
            <asp:ListItem>Timex</asp:ListItem>
            <asp:ListItem>Tommy Hilfiger</asp:ListItem>
            <asp:ListItem>Uwatch</asp:ListItem>
            <asp:ListItem>Withings</asp:ListItem>
            <asp:ListItem>XElectron</asp:ListItem>
            <asp:ListItem>Zion</asp:ListItem>
            
          
        </asp:DropDownList>


<p class="srchitmhd">Price</p>
<asp:DropDownList ID="DropDownList1" runat="server" CssClass="ddldef" 
        AutoPostBack="True" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem>Select Budget</asp:ListItem>
        <asp:ListItem Value="1">Rs.1,000 - Rs.10,000</asp:ListItem>
        <asp:ListItem Value="2">Rs.10,000 - Rs.15,000</asp:ListItem>
        <asp:ListItem Value="3">Rs.15,000 - Rs.20,000</asp:ListItem>
        <asp:ListItem Value="4">Rs.20,000 - Rs.25,000</asp:ListItem>
        <asp:ListItem Value="5">Rs.25,000 - Rs.30,000</asp:ListItem>
        <asp:ListItem Value="6">Rs.30,000 - Rs.35,000</asp:ListItem>
        <asp:ListItem Value="7">Rs.35,000 - Rs.40,000</asp:ListItem>
        <asp:ListItem Value="8">Rs.40,000 - Rs.45,000</asp:ListItem>
        <asp:ListItem Value="9">Rs.45,000 - Rs.50,000</asp:ListItem>
        <asp:ListItem Value="10">Rs.50,000 - Rs.1,00,000</asp:ListItem>
        <asp:ListItem Value="11">Above Rs.1,00,000</asp:ListItem>
        </asp:DropDownList>

<p class="srchitmhd">Operating System</p>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
        CssClass="RadioButtonList1" AutoPostBack="True" 
        onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" >
    <asp:ListItem>Circle</asp:ListItem>
        <asp:ListItem>Contemporary</asp:ListItem>
        <asp:ListItem>Curved</asp:ListItem>
        <asp:ListItem>Oval</asp:ListItem>
        <asp:ListItem>Rectangle</asp:ListItem>
        <asp:ListItem>Square</asp:ListItem>
    </asp:RadioButtonList>

    <p class="srchitmhd">Call Function</p>
     
         
         <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
        CssClass="RadioButtonList1" AutoPostBack="True" 
        onselectedindexchanged="RadioButtonList2_SelectedIndexChanged"  >
    <asp:ListItem Value="Yes">With call function</asp:ListItem>
        <asp:ListItem Value="No">Without call function</asp:ListItem>
        
    </asp:RadioButtonList>
                 
         
    <p class="srchitmhd">Connectivity</p>
    <asp:RadioButton ID="RadioButton3" CssClass="rad" runat="server" 
        Text="Bluetooth" AutoPostBack="True" 
        oncheckedchanged="RadioButton3_CheckedChanged" />
    <asp:RadioButton ID="RadioButton4" CssClass="rad" runat="server" 
        Text="GPS" AutoPostBack="True" 
        oncheckedchanged="RadioButton4_CheckedChanged" />
        <asp:RadioButton ID="RadioButton5" CssClass="rad" runat="server" 
        Text="WiFi" style="margin-bottom:20px;" AutoPostBack="True" 
        oncheckedchanged="RadioButton5_CheckedChanged" />
    
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
        <asp:Label ID="Label1" runat="server" Text='<%# Eval("title") %>' style="overflow:hidden;"></asp:Label></p> 
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
    <asp:AsyncPostBackTrigger ControlID="DropDownList3" EventName="SelectedIndexChanged"></asp:AsyncPostBackTrigger>
    <asp:AsyncPostBackTrigger ControlID="DropDownList1" EventName="SelectedIndexChanged"></asp:AsyncPostBackTrigger>
    <asp:AsyncPostBackTrigger ControlID="RadioButton3" EventName="CheckedChanged"></asp:AsyncPostBackTrigger>
    <asp:AsyncPostBackTrigger ControlID="RadioButton4" EventName="CheckedChanged"></asp:AsyncPostBackTrigger>
    <asp:AsyncPostBackTrigger ControlID="RadioButton5" EventName="CheckedChanged"></asp:AsyncPostBackTrigger>
    </Triggers>
    </asp:UpdatePanel>


    <div class=brn>
    <p class="sectionhead">Brands</p>
  <p class="subsec">Popular Smartwatch Brands</p>
  <div class="table">

  <div class="britem">
  
<p>  <a href="Default.aspx?brand=Adine">Adine</a></p>
<p>  <a href="Default.aspx?brand=Apple">Apple</a></p>
<p>  <a href="Default.aspx?brand=Artzz">Artzz</a></p>
<p>  <a href="Default.aspx?brand=Beaufort">Beaufort</a></p>
<p>  <a href="Default.aspx?brand=Breo">Breo</a></p>
<p>  <a href="Default.aspx?brand=Burg">Burg</a></p>
<p>  <a href="Default.aspx?brand=Burn">Burn</a></p>
<p>  <a href="Default.aspx?brand=Casio">Casio</a></p>
  
  </div>

  <div class="britem">
  
  <p>  <a href="Default.aspx?brand=Citizen">Citizen</a></p>
<p>  <a href="Default.aspx?brand=Cookoo">Cookoo</a></p>
<p>  <a href="Default.aspx?brand=Crude">Crude</a></p>
<p>  <a href="Default.aspx?brand=CSM">CSM</a></p>
<p>  <a href="Default.aspx?brand=Fastrack">Fastrack</a></p>
<p>  <a href="Default.aspx?brand=Fitbit">Fitbit</a></p>
<p>  <a href="Default.aspx?brand=Garmin">Garmin</a></p>
<p>  <a href="Default.aspx?brand=GOQll">GOQll</a></p>

 
  </div>

  <div class="britem">
  
<p>  <a href="Default.aspx?brand=Healthsense">Healthsense</a></p>
<p>  <a href="Default.aspx?brand=iBerry">iBerry</a></p>
<p>  <a href="Default.aspx?brand=Jawbone">Jawbone</a></p>
<p>  <a href="Default.aspx?brand=Kenxinda">Kenxinda</a></p>
<p>  <a href="Default.aspx?brand=LG">LG</a></p>
<p>  <a href="Default.aspx?brand=Martian">Martian</a></p>
<p>  <a href="Default.aspx?brand=Motorola">Motorola</a></p>
<p>  <a href="Default.aspx?brand=Noise">Noise</a></p>
  
  
  </div>

  <div class="britem">
 
  
<p>  <a href="Default.aspx?brand=Omate">Omate</a></p>
<p>  <a href="Default.aspx?brand=Pebble">Pebble</a></p>
<p>  <a href="Default.aspx?brand=Q &amp; Q">Q &amp; Q</a></p>
<p>  <a href="Default.aspx?brand=Raux">Raux</a></p>
<p>  <a href="Default.aspx?brand=Runtastic">Runtastic</a></p>
<p>  <a href="Default.aspx?brand=Samsung">Samsung</a></p>
<p>  <a href="Default.aspx?brand=Seiko">Seiko</a></p>
<p>  <a href="Default.aspx?brand=Soleus">Soleus</a></p>
  
  

  </div>

  <div class="britem">

    
<p>  <a href="Default.aspx?brand=Sonata">Sonata</a></p>
<p>  <a href="Default.aspx?brand=Sony">Sony</a></p>
<p>  <a href="Default.aspx?brand=Timex">Timex</a></p>
<p>  <a href="Default.aspx?brand=Tommy Hilfiger">Tommy Hilfiger</a></p>
<p>  <a href="Default.aspx?brand=Uwatch">Uwatch</a></p>
<p>  <a href="Default.aspx?brand=Withings">Withings</a></p>
<p>  <a href="Default.aspx?brand=XElectron">XElectron</a></p>
<p>  <a href="Default.aspx?brand=Zion">Zion</a></p>  
  
  
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
