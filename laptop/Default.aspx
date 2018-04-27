﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="laptop_Default" MasterPageFile="~/laptop/site.master" %>
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
            <asp:ListItem>All Brand</asp:ListItem>
            <asp:ListItem>HP</asp:ListItem>
            <asp:ListItem>Compaq</asp:ListItem>
            <asp:ListItem>Acer</asp:ListItem>
            <asp:ListItem>Apple</asp:ListItem>
            <asp:ListItem>Asus</asp:ListItem>
            <asp:ListItem>Dell</asp:ListItem>
            <asp:ListItem>Lenovo</asp:ListItem>
            <asp:ListItem>MSI</asp:ListItem>
            <asp:ListItem>Sony</asp:ListItem>
            <asp:ListItem>Toshiba</asp:ListItem>
            <asp:ListItem>HP Pavilion</asp:ListItem> 
        </asp:DropDownList>


<p class="srchitmhd">Price</p>
<asp:DropDownList ID="DropDownList1" runat="server" CssClass="ddldef" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
        AutoPostBack="True">
        <asp:ListItem>Select Budget</asp:ListItem>
        <asp:ListItem Value="1">Rs.10,000 - Rs.20,000</asp:ListItem>
        <asp:ListItem Value="2">Rs.20,000 - Rs.30,000</asp:ListItem>
        <asp:ListItem Value="3">Rs.30,000 - Rs.40,000</asp:ListItem>
        <asp:ListItem Value="4">Rs.40,000 - Rs.50,000</asp:ListItem>
        <asp:ListItem Value="5">Rs.50,000 - Rs.60,000</asp:ListItem>
        <asp:ListItem Value="6">Rs.60,000 - Rs.70,000</asp:ListItem>
        <asp:ListItem Value="7">Rs.70,000 - Rs.80,000</asp:ListItem>
        <asp:ListItem Value="8">Rs.80,000 - Rs.90,000</asp:ListItem>
        <asp:ListItem Value="9">Rs.90,000 - Rs.1,00,000</asp:ListItem>
        <asp:ListItem Value="10">Above Rs.1,00,000</asp:ListItem>
        </asp:DropDownList>

<p class="srchitmhd">RAM</p>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
        CssClass="RadioButtonList1" AutoPostBack="True" 
        onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
        <asp:ListItem Value="1">1GB</asp:ListItem>
        <asp:ListItem Value="2">2GB</asp:ListItem>
        <asp:ListItem Value="3">4GB</asp:ListItem>
        <asp:ListItem Value="4">6GB</asp:ListItem>
        <asp:ListItem Value="5">8GB</asp:ListItem>
        <asp:ListItem Value="6">16GB and above</asp:ListItem>
    </asp:RadioButtonList>

    <p class="srchitmhd">Hard Disk</p>
    <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
        CssClass="RadioButtonList1" AutoPostBack="True" 
        onselectedindexchanged="RadioButtonList2_SelectedIndexChanged">
        <asp:ListItem Value="1">160GB</asp:ListItem>
        <asp:ListItem Value="2">250GB</asp:ListItem>
        <asp:ListItem Value="3">320GB</asp:ListItem>
        <asp:ListItem Value="4">500GB</asp:ListItem>
        <asp:ListItem Value="5">640GB</asp:ListItem>
        <asp:ListItem Value="6">750GB</asp:ListItem>
        <asp:ListItem Value="7">1TB</asp:ListItem>
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
    </Triggers>
    </asp:UpdatePanel>

    <div class=brn>
    <p class="sectionhead">Brands</p>
  <p class="subsec">Popular Camera Brands</p>
  <div class="table">

  <div class="britem">

<p>  <a href="Default.aspx?brand=HP">HP</a></p>
<p>  <a href="Default.aspx?brand=Compaq">Compaq</a></p>
<p>  <a href="Default.aspx?brand=Acer">Acer</a></p>


  
  </div>

  <div class="britem">
<p>  <a href="Default.aspx?brand=Apple">Apple</a></p>  
<p>  <a href="Default.aspx?brand=Asus">Asus</a></p>


 
  </div>

  <div class="britem">
<p>  <a href="Default.aspx?brand=Dell">Dell</a></p>  
  <p>  <a href="Default.aspx?brand=Lenovo">Lenovo</a></p>

  
  
  </div>

  <div class="britem">
 
 <p>  <a href="Default.aspx?brand=MSI">MSI</a></p> 
<p>  <a href="Default.aspx?brand=Sony">Sony</a></p>

  
  

  </div>

  <div class="britem">

    
<p>  <a href="Default.aspx?brand=Toshiba">Toshiba</a></p>
<p>  <a href="Default.aspx?brand=HP Pavilion">HP Pavilion</a></p>
  
  
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
