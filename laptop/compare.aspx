<%@ Page Language="C#" AutoEventWireup="true" CodeFile="compare.aspx.cs" Inherits="laptop_compare" MasterPageFile="~/laptop/site.master" %>


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
    <td class="tabhd">
    
        Processor Details</td>
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
    
        Speed</td>
    <td>
    
        <asp:Label ID="lblprospeed1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblprospeed2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Cache</td>
    <td>
    
        <asp:Label ID="lblcache1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblcache2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td class="tabhd">
    
        Memory</td>
    <td class="tabhd">
    
        &nbsp;</td>
    <td class="tabhd">
    
        &nbsp;</td>
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
    
        Type</td>
    <td>
    
        <asp:Label ID="lblramtype1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblramtype2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Speed</td>
    <td>
    
        <asp:Label ID="lblramspeed1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblramspeed2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td class="tabhd">
    
        Hard Drive</td>
    <td class="tabhd">
    
        &nbsp;</td>
    <td class="tabhd">
    
        &nbsp;</td>
    </tr>
    
    <tr>
    <td>
    
        Inbuild HDD</td>
    <td>
    
        <asp:Label ID="lblhddcap1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblhddcap2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td>
    
        Speed(RPM)</td>
    <td>
    
        <asp:Label ID="lblhdspeed1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblhdspeed2" runat="server" Text=""></asp:Label>
    
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
    
        Screen Size</td>
    <td>
    
        <asp:Label ID="lblscrsize1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblscrsize2" runat="server" Text=""></asp:Label>
    
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
    
        Panel Type</td>
    <td>
    
        <asp:Label ID="lblpanel1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblpanel2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    
    <tr>
    <td class="tabhd">
    
        Chipset</td>
    <td class="tabhd">
    
        &nbsp;</td>
    <td class="tabhd">
    
        &nbsp;</td>
    </tr>
    <tr>
    <td>
    
        GPU Model</td>
    <td>
    
        <asp:Label ID="lblgpumod1" runat="server" Text=""></asp:Label>
    
    </td>
    <td>
    
        <asp:Label ID="lblgpumod2" runat="server" Text=""></asp:Label>
    
    </td>
    </tr>
    <tr>
    <td>
    
        GPU Memory</td>
    <td>
    
        <asp:Label ID="lblgpumem1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblgpumem2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        HDMI Port</td>
    <td>
    
        <asp:Label ID="lblhdmi1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblhdmi2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td class="tabhd">
    
        Networking</td>
    <td class="tabhd">
    
        &nbsp;</td>
    <td class="tabhd">
    
        &nbsp;</td>
    </tr>
    <tr>
    <td>
    
        Ethernet Port</td>
    <td>
    
        <asp:Label ID="lblethport1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblethport2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Ethernet Type</td>
    <td>
    
        <asp:Label ID="lblethtype1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblethtype2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Wifi Type</td>
    <td>
    
        <asp:Label ID="lblwifi1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblwifi2" runat="server" Text=""></asp:Label>
    
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
    
        USB 2.0 Port</td>
    <td>
    
        <asp:Label ID="lblusbtwo1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblusbtwo2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        USB 3.0 Port</td>
    <td>
    
        <asp:Label ID="lblusbthree1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblusbthree2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Bluetooth</td>
    <td>
    
        <asp:Label ID="lblblue1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblblue2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Buildin Camera</td>
    <td>
    
        <asp:Label ID="lblcam1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblcam2" runat="server" Text=""></asp:Label>
    
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
    
        Digital Media Reader</td>
    <td>
    
        <asp:Label ID="lbldigi1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lbldigi2" runat="server" Text=""></asp:Label>
    
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
    
        Battery Type</td>
    <td>
    
        <asp:Label ID="lblbattype1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblbattype2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td>
    
        Battery Cell</td>
    <td>
    
        <asp:Label ID="lblbatcell1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblbatcell2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td class="tabhd">
    
        Operating System</td>
    <td class="tabhd">
    
        &nbsp;</td>
    <td class="tabhd">
    
        &nbsp;</td>
    </tr>
    <tr>
    <td>
    
        OS</td>
    <td>
    
        <asp:Label ID="lblos1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblos2" runat="server" Text=""></asp:Label>
    
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
    
        Features</td>
    <td>
    
        <asp:Label ID="lblfeature1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblfeature2" runat="server" Text=""></asp:Label>
    
        </td>
    </tr>
    <tr>
    <td class="tabhd">
    
        After Sale Service</td>
    <td class="tabhd">
    
        &nbsp;</td>
    <td class="tabhd">
    
        &nbsp;</td>
    </tr>
    <tr>
    <td>
    
        Warranty</td>
    <td>
    
        <asp:Label ID="lblwarranty1" runat="server" Text=""></asp:Label>
    
        </td>
    <td>
    
        <asp:Label ID="lblwarranty2" runat="server" Text=""></asp:Label>
    
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