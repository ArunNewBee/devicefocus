<%@ Page Language="C#" AutoEventWireup="true" CodeFile="smartwatchform.aspx.cs" Inherits="admin_smartwatchform" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../styles/style.css"  rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
   
    <div>
    <table class="admtab">
    <tr>
    <td class="admtd">
    
        &nbsp;</td>
    <td>
    
        <p style="color:Red">(Type NA if details in any field is not available)</p></td>
    <td style="width:10%">
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Brand</td>
    <td>
    
        <asp:DropDownList ID="ddlbrand" runat="server">
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
    
    </td>
    <td style="width:10%">
    
    </td>
    </tr>
    <tr>
    <td class="admtd">
    
        Model</td>
    <td>
    
        <asp:TextBox ID="txtmodel" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtmodel" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Dial Shape</td>
    <td>
    
        <asp:DropDownList ID="ddldial" runat="server">
            <asp:ListItem>Circle</asp:ListItem>
        <asp:ListItem>Contemporary</asp:ListItem>
        <asp:ListItem>Curved</asp:ListItem>
        <asp:ListItem>Oval</asp:ListItem>
        <asp:ListItem>Rectangle</asp:ListItem>
        <asp:ListItem>Square</asp:ListItem>
        </asp:DropDownList>
    
       
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Water Resistant</td>
    <td>
    
        <asp:DropDownList ID="ddlwater" runat="server">
            <asp:ListItem>NA</asp:ListItem>
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:DropDownList>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Strap Color</td>
    <td>
    
        <asp:TextBox ID="txtstrapcolor" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtstrapcolor" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Display Size</td>
    <td>
    
        <asp:TextBox ID="txtdisp" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtdisp" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Resolution</td>
    <td>
    
        <asp:TextBox ID="txtreso" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtreso" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        OS</td>
    <td>
    
        <asp:TextBox ID="txtos" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtos" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        OS Version</td>
    <td>
    
        <asp:TextBox ID="txtosver" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtosver" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Expandable Memory</td>
    <td>
    
        <asp:TextBox ID="txtexpmem" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtexpmem" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Internal Memory</td>
    <td>
    
        <asp:TextBox ID="txtintmem" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtintmem" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Bluetooth</td>
    <td>
    
        <asp:DropDownList ID="ddlblu" runat="server">
            <asp:ListItem>NA</asp:ListItem>
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:DropDownList>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Bluetooth Version</td>
    <td>
    
        <asp:TextBox ID="txtbluver" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtbluver" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Call Function</td>
    <td>
    
        <asp:DropDownList ID="ddlcall" runat="server">
            <asp:ListItem>NA</asp:ListItem>
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:DropDownList>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        GPS</td>
    <td>
    
        <asp:DropDownList ID="ddlgps" runat="server">
            <asp:ListItem>NA</asp:ListItem>
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:DropDownList>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Wifi</td>
    <td>
    
        <asp:DropDownList ID="ddlwifi" runat="server">
            <asp:ListItem>NA</asp:ListItem>
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:DropDownList>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Messaging</td>
    <td>
    
        <asp:DropDownList ID="ddlmsg" runat="server">
            <asp:ListItem>NA</asp:ListItem>
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:DropDownList>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Primary Camera</td>
    <td>
    
        <asp:TextBox ID="txtpcam" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtpcam" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Other Camera</td>
    <td>
    
        <asp:TextBox ID="txtotrcam" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtotrcam" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Microphone</td>
    <td>
    
        <asp:DropDownList ID="ddlmicro" runat="server">
            <asp:ListItem>NA</asp:ListItem>
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:DropDownList>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Audio format</td>
    <td>
    
        <asp:TextBox ID="txtaudio" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtaudio" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Video Format</td>
    <td>
    
        <asp:TextBox ID="txtvideo" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtvideo" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Speaker</td>
    <td>
    
        <asp:DropDownList ID="ddlspkr" runat="server">
            <asp:ListItem>NA</asp:ListItem>
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:DropDownList>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Date Time Display</td>
    <td>
    
        <asp:DropDownList ID="ddldate" runat="server">
            <asp:ListItem>NA</asp:ListItem>
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:DropDownList>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Alarm</td>
    <td>
    
        <asp:DropDownList ID="ddlalarm" runat="server">
            <asp:ListItem>NA</asp:ListItem>
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:DropDownList>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Compass</td>
    <td>
    
        <asp:DropDownList ID="ddlcompass" runat="server">
            <asp:ListItem>NA</asp:ListItem>
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:DropDownList>
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Calender</td>
    <td>
    
        <asp:DropDownList ID="ddlcalender" runat="server">
            <asp:ListItem>NA</asp:ListItem>
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:DropDownList>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Altimeter</td>
    <td>
    
        <asp:DropDownList ID="ddlalti" runat="server">
            <asp:ListItem>NA</asp:ListItem>
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:DropDownList>
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Chronograph</td>
    <td>
    
        <asp:DropDownList ID="ddlchrono" runat="server">
            <asp:ListItem>NA</asp:ListItem>
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:DropDownList>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Sensors</td>
    <td>
    
        <asp:TextBox ID="txtsensor" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtsensor" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Other Features</td>
    <td>
    
        <asp:TextBox ID="txtotrfeatures" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtotrfeatures" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Items Inside</td>
    <td>
    
        <asp:TextBox ID="txtitminside" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtitminside" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Compatible OS</td>
    <td>
    
        <asp:TextBox ID="txtcompos" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtcompos" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Compatible Device</td>
    <td>
    
        <asp:TextBox ID="txtcompdevice" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtcompdevice" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Price(avoid 
        letters)</td>
    <td>
    
        <asp:TextBox ID="txtprice" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtprice" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="Invalid" ValidationExpression="\d{4,6}" 
            ControlToValidate="txtprice" ForeColor="Red" ValidationGroup="ent"></asp:RegularExpressionValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Youtube Link</td>
    <td>
    
        <asp:TextBox ID="txtyt" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtyt" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Source</td>
    <td>
    
        <asp:TextBox ID="txtsource" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtsource" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
   
    
    
    
    <tr>
    <td class="admtd">
    
        Profile Picture(thumbnail)</td>
    <td>
    
        <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    <td>
    
        <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
    <td class="admtd">
    
        Other Pictures</td>
    <td>
    
        <asp:FileUpload ID="FileUpload2" runat="server" />
        </td>
    <td>
    
        <asp:Label ID="lblmsg0" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
    <td class="admtd">
    
        &nbsp;</td>
    <td>
    
        <asp:FileUpload ID="FileUpload3" runat="server" />
        </td>
    <td>
    
        <asp:Label ID="lblmsg1" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
    <td class="admtd">
    
        &nbsp;</td>
    <td>
    
        <asp:FileUpload ID="FileUpload4" runat="server" />
        </td>
    <td>
    
        <asp:Label ID="lblmsg2" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
    <td class="admtd">
    
        &nbsp;</td>
    <td>
    
        <asp:FileUpload ID="FileUpload5" runat="server" />
        </td>
    <td>
    
        <asp:Label ID="lblmsg3" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
    <td class="admtd">
    
        &nbsp;</td>
    <td>
    
        <asp:FileUpload ID="FileUpload6" runat="server" />
        </td>
    <td>
    
        <asp:Label ID="lblmsg4" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
    <td class="admtd">
    
        &nbsp;</td>
    <td>
    
        <br />
        <asp:Button ID="btnok" runat="server" Text="OK" onclick="btnok_Click" 
            Width="88px" ValidationGroup="ent" />
        &nbsp;&nbsp;&nbsp;
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
