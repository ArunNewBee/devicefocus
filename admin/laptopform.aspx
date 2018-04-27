<%@ Page Language="C#" AutoEventWireup="true" CodeFile="laptopform.aspx.cs" Inherits="admin_laptopform" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../styles/style.css"  rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style3
        {
            width: 10%;
        }
    </style>
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
    
    </td>
    <td class="style3">
    
    </td>
    </tr>
    <tr>
    <td class="admtd">
    
        Model</td>
    <td>
    
        <asp:TextBox ID="txtmodel" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtmodel" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Processor</td>
    <td>
    
        <asp:TextBox ID="txtprocessor" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
       
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtprocessor" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
       
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Processor Speed</td>
    <td>
    
        <asp:TextBox ID="txtprospeed" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtprospeed" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Cache</td>
    <td>
    
        <asp:TextBox ID="txtcache" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtcache" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        RAM(avoid 
        letters)</td>
    <td>
    
        <asp:TextBox ID="txtram" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtram" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ErrorMessage="Invalid" ValidationExpression="\d{1,2}" 
            ControlToValidate="txtram" ForeColor="Red" ValidationGroup="ent"></asp:RegularExpressionValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        RAM Type</td>
    <td>
    
        <asp:TextBox ID="txtramtype" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtramtype" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        RAM Speed</td>
    <td>
    
        <asp:TextBox ID="txtramspeed" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtramspeed" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Inbuild HDD(avoid letters)</td>
    <td>
    
        <asp:TextBox ID="txthdd" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ErrorMessage="Required" ControlToValidate="txthdd" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ErrorMessage="Invalid" ValidationExpression="\d{3,4}" 
            ControlToValidate="txthdd" ForeColor="Red" ValidationGroup="ent"></asp:RegularExpressionValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Hard Disk Speed</td>
    <td>
    
        <asp:TextBox ID="txthdspeed" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
            ErrorMessage="Required" ControlToValidate="txthdspeed" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Screen size</td>
    <td>
    
        <asp:TextBox ID="txtscrsize" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtscrsize" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Maximum Display Resolution</td>
    <td>
    
        <asp:TextBox ID="txtreso" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtreso" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Panel Type</td>
    <td>
    
        <asp:TextBox ID="txtpanel" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtpanel" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        GPU Model</td>
    <td>
    
        <asp:TextBox ID="txtgpumodel" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtgpumodel" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        GPU Memory</td>
    <td>
    
        <asp:TextBox ID="txtgpumem" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtgpumem" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        HDMI Port</td>
    <td>
    
        <asp:DropDownList ID="ddlhdmi" runat="server">
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
    
        Ethernet Port(Nos)</td>
    <td>
    
        <asp:TextBox ID="txtetherport" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtetherport" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Ethernet Type</td>
    <td>
    
        <asp:TextBox ID="txtethertype" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtethertype" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Wifi Type</td>
    <td>
    
        <asp:TextBox ID="txtwifi" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtwifi" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        USB 2.0 Port(Nos)</td>
    <td>
    
        <asp:TextBox ID="txtusb2" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtusb2" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        USB 3.0 Port(Nos)</td>
    <td>
    
        <asp:TextBox ID="txtusb3" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtusb3" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Bluetooth</td>
    <td>
    
        <asp:DropDownList ID="ddlblue" runat="server">
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
    
        Buildin Camera</td>
    <td>
    
        <asp:DropDownList ID="ddlcam" runat="server">
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
    
        Digital Media Reader</td>
    <td>
    
        <asp:TextBox ID="txtdigi" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtdigi" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Battery Type</td>
    <td>
    
        <asp:DropDownList ID="ddlbatterytype" runat="server">
            <asp:ListItem>NA</asp:ListItem>
            <asp:ListItem>Li-Ion</asp:ListItem>
            <asp:ListItem>NiMH</asp:ListItem>
        </asp:DropDownList>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Battery Cell</td>
    <td>
    
        <asp:TextBox ID="txtbatterycell" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtbatterycell" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Operating System</td>
    <td>
    
        <asp:TextBox ID="txtos" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtos" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Warranty</td>
    <td>
    
        <asp:TextBox ID="txtwarranty" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtwarranty" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Other Features</td>
    <td>
    
        <asp:TextBox ID="txtotherfeature" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtotherfeature" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Price(avoid letters)</td>
    <td>
    
        <asp:TextBox ID="txtprice" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
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
    
        Youtube link 
        url</td>
    <td>
    
        <asp:TextBox ID="txtyoutube" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtyoutube" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        content source url</td>
    <td>
    
        <asp:TextBox ID="txtsource" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" 
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
    
        <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
        </td>
    </tr>
    <tr>
    <td class="admtd">
    
        Other Pictures</td>
    <td>
    
        <asp:FileUpload ID="FileUpload2" runat="server" />
        </td>
    <td>
    
        <asp:Label ID="lblmsg0" runat="server" Text=""></asp:Label>
        </td>
    </tr>
    <tr>
    <td class="admtd">
    
        &nbsp;</td>
    <td>
    
        <asp:FileUpload ID="FileUpload3" runat="server" />
        </td>
    <td>
    
        <asp:Label ID="lblmsg1" runat="server" Text=""></asp:Label>
        </td>
    </tr>
    <tr>
    <td class="admtd">
    
        &nbsp;</td>
    <td>
    
        <asp:FileUpload ID="FileUpload4" runat="server" />
        </td>
    <td>
    
        <asp:Label ID="lblmsg2" runat="server" Text=""></asp:Label>
        </td>
    </tr>
    <tr>
    <td class="admtd">
    
        &nbsp;</td>
    <td>
    
        <asp:FileUpload ID="FileUpload5" runat="server" />
        </td>
    <td>
    
        <asp:Label ID="lblmsg3" runat="server" Text=""></asp:Label>
        </td>
    </tr>
    <tr>
    <td class="admtd">
    
        &nbsp;</td>
    <td>
    
        <asp:FileUpload ID="FileUpload6" runat="server" />
        </td>
    <td>
    
        <asp:Label ID="lblmsg4" runat="server" Text=""></asp:Label>
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
