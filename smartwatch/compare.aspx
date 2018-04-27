<%@ Page Language="C#" AutoEventWireup="true" CodeFile="compare.aspx.cs" Inherits="smartwatch_compare" MasterPageFile="~/smartwatch/site.master" %>


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
    
        Brand</td>
    <td>
    
        <asp:Label ID="lblbrand1" runat="server"></asp:Label>
    
    </td>
    <td>
    
        <asp:Label ID="lblbrand2" runat="server" Text=""></asp:Label>
    
    </td>
    </tr>
    
    <tr>
    <td>
    
        Model Name</td>
    <td>
    
        <asp:Label ID="lblmodel1" runat="server" Text=""></asp:Label>
    
    </td>
    <td>
    
        <asp:Label ID="lblmodel2" runat="server" Text=""></asp:Label>
    
    </td>
    </tr>
    
    <tr>
    <td>
    
        Dail Shape</td>
    <td>
    
        <asp:Label ID="lblshape1" runat="server" Text=""></asp:Label>
    
    </td>
    <td>
    
        <asp:Label ID="lblshape2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Strap Color</td>
    <td>
    
        <asp:Label ID="lblstrap1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblstrap2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Water Resistant</td>
    <td>
    
        <asp:Label ID="lblwater1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblwater2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    
    
    <tr>
    <td class="tabhd">
    
        Display Features</td>
    <td class="tabhd">
    
        &nbsp;</td>
    <td class="tabhd">
    
        &nbsp;</td>
    </tr>
    
    <tr>
    <td>
    
        Display Size</td>
    <td>
    
        <asp:Label ID="lbldisp1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lbldisp2" runat="server" Text=""></asp:Label>
    
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
    <td class="tabhd">
    
        Platform & Storage</td>
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
    
        Expandable Memory</td>
    <td>
    
        <asp:Label ID="lblexpmem1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblexpmem2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Internal Memory</td>
    <td>
    
        <asp:Label ID="lblintmem1" runat="server" Text=""></asp:Label></td>
    <td>
    
        <asp:Label ID="lblintmem2" runat="server" Text=""></asp:Label></td>
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
    
        Bluetooth</td>
    <td>
    
        <asp:Label ID="lblbluetooth1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblbluetooth2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Bluetooth Version</td>
    <td>
    
        <asp:Label ID="lblblutver1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblblutver2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Call Function</td>
    <td>
    
        <asp:Label ID="lblcall1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblcall2" runat="server" Text=""></asp:Label>
    
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
    
        WiFi</td>
    <td>
    
        <asp:Label ID="lblwifi1" runat="server" Text=""></asp:Label></td>
    <td>
    
        <asp:Label ID="lblwifi2" runat="server" Text=""></asp:Label></td>
    </tr>
    
    <tr>
    <td>
    
        Messaging</td>
    <td>
    
        <asp:Label ID="lblmsg1" runat="server" Text=""></asp:Label></td></td>
    <td>
    
        <asp:Label ID="lblmsg2" runat="server" Text=""></asp:Label></td></td>
    </tr>
    
    <tr>
    <td class="tabhd">
    
        Camera & Multimedia Features</td>
    <td class="tabhd">
    
        &nbsp;</td>
    <td class="tabhd">
    
        &nbsp;</td>
    </tr>
    
    <tr>
    <td>
    
        Primary Camera</td>
    <td>
    
        <asp:Label ID="lblpcam1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblpcam2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Other Camera</td>
    <td>
    
        <asp:Label ID="lblotrcam1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblotrcam2" runat="server" Text=""></asp:Label>
    
        </td>
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
    
        Audio format</td>
    <td>
    
        <asp:Label ID="lblaudio1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblaudio2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Video format</td>
    <td>
    
        <asp:Label ID="lblvideo1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblvideo2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Speaker</td>
    <td>
    
        <asp:Label ID="lblspkr1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblspkr2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td  class="tabhd">
    
        Watch Functions</td>
    <td class="tabhd">
    
        &nbsp;</td>
    <td class="tabhd">
    
        &nbsp;</td>
    </tr>
    
    <tr>
    <td>
    
        Datetime Display</td>
    <td>
    
        <asp:Label ID="lblwatch1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblwatch2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Alarm</td>
    <td>
    
        <asp:Label ID="lblalarm1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblalarm2" runat="server" Text=""></asp:Label>
    
        </td>
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
    
        Calender</td>
    <td>
    
        <asp:Label ID="lblcal1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblcal2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Altimeter</td>
    <td>
    
        <asp:Label ID="lblaltmtr1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblaltmtr2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Chronograph</td>
    <td>
    
        <asp:Label ID="lblchro1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblchro2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td class="tabhd">
    
        Compatibility Features</td>
    <td class="tabhd">
    
        &nbsp;</td>
    <td class="tabhd">
    
        &nbsp;</td>
    </tr>
    <tr>
    <td>
    
        Compatible OS</td>
    <td>
    
        <asp:Label ID="lblcompos1" runat="server" Text=""></asp:Label>
    
    </td>
    <td>
    
        <asp:Label ID="lblcompos2" runat="server" Text=""></asp:Label>
    
    </td>
    </tr>
    <tr>
    <td>
    
        Compatible Device</td>
    <td>
    
        <asp:Label ID="lblcompdevice1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblcompdevice2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td class="tabhd">
    
        Additional Features</td>
    <td class="tabhd">
    
        &nbsp;</td>
    <td class="tabhd">
    
        &nbsp;</td>
    </tr>
    <tr>
    <td>
    
        Sensors</td>
    <td>
    
        <asp:Label ID="lblsens1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblsens2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Other Features</td>
    <td>
    
        <asp:Label ID="lblotrfeatr1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblotrfeatr2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td class="tabhd">
    
        Items Inside</td>
    <td class="tabhd">
    
        &nbsp;</td>
    <td class="tabhd">
    
        &nbsp;</td>
    </tr>
    <tr>
    <td>
    
        Items Inside</td>
    <td>
    
        <asp:Label ID="lblitems1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblitems2" runat="server" Text=""></asp:Label>
    
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