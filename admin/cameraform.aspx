<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cameraform.aspx.cs" Inherits="admin_cameraform" %>

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
            <asp:ListItem>Acer</asp:ListItem>
            <asp:ListItem>AgfaPhoto</asp:ListItem>
            <asp:ListItem>BenQ</asp:ListItem>
            <asp:ListItem>Canon</asp:ListItem>
            <asp:ListItem>Casio</asp:ListItem>
            <asp:ListItem>Concord</asp:ListItem>
            <asp:ListItem>Contax</asp:ListItem>
            <asp:ListItem>Epson</asp:ListItem>
            <asp:ListItem>Fujifilm</asp:ListItem>
            <asp:ListItem>GE</asp:ListItem>
            <asp:ListItem>HP</asp:ListItem>
            <asp:ListItem>Jenoptik</asp:ListItem>
            <asp:ListItem>Kodak</asp:ListItem>
            <asp:ListItem>Konica</asp:ListItem>
            <asp:ListItem>Koniva-Minolta</asp:ListItem>
            <asp:ListItem>Kyocera</asp:ListItem>
            <asp:ListItem>Leica</asp:ListItem>
            <asp:ListItem>Minolta</asp:ListItem>
            <asp:ListItem>Minox</asp:ListItem>
            <asp:ListItem>Nikon</asp:ListItem>
            <asp:ListItem>Olympus</asp:ListItem>
            <asp:ListItem>Panasonic</asp:ListItem>
            <asp:ListItem>Pentax</asp:ListItem>
            <asp:ListItem>Praktica</asp:ListItem>
            <asp:ListItem>Ricoh</asp:ListItem>
            <asp:ListItem>Rollei</asp:ListItem>
            <asp:ListItem>Samsung</asp:ListItem>
            <asp:ListItem>Sanyo</asp:ListItem>
            <asp:ListItem>Sigma</asp:ListItem>
            <asp:ListItem>Sony</asp:ListItem>
            <asp:ListItem>Toshiba</asp:ListItem>
            <asp:ListItem>Vivitar</asp:ListItem>
            <asp:ListItem>Yakumo</asp:ListItem>
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
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtmodel" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Type</td>
    <td>
    
        <asp:DropDownList ID="ddltype" runat="server">
            <asp:ListItem>Point and Shoot</asp:ListItem>
            <asp:ListItem>DSLR</asp:ListItem>
            <asp:ListItem>Advanced Point and Shoot</asp:ListItem>
            <asp:ListItem>Camcord</asp:ListItem>
            <asp:ListItem>Low Cost</asp:ListItem>
            <asp:ListItem>Instant</asp:ListItem>
            <asp:ListItem>Mirrorless</asp:ListItem>
            <asp:ListItem>Sports and Action</asp:ListItem>
        </asp:DropDownList>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Color</td>
    <td>
    
        <asp:TextBox ID="txtcolor" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtcolor" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Auto Focus</td>
    <td>
    
        <asp:DropDownList ID="ddlautofocus" runat="server">
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
    
        Focus Mode</td>
    <td>
    
        <asp:TextBox ID="txtfocusmode" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtfocusmode" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Other lens features</td>
    <td>
    
        <asp:TextBox ID="txtlensfeatures" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtlensfeatures" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Focal Length</td>
    <td>
    
        <asp:TextBox ID="txtfocallength" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtfocallength" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Manual Focus</td>
    <td>
    
        <asp:DropDownList ID="ddlmanualfocus" runat="server">
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
    
        Focus Points</td>
    <td>
    
        <asp:TextBox ID="txtfocuspoints" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtfocuspoints" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Focus Range</td>
    <td>
    
        <asp:TextBox ID="txtfocusrange" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtfocusrange" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Lens Servo</td>
    <td>
    
        <asp:TextBox ID="txtlensservo" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtlensservo" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Focus</td>
    <td>
    
        <asp:DropDownList ID="ddlfocus" runat="server">
            <asp:ListItem>Auto</asp:ListItem>
            <asp:ListItem>Manual</asp:ListItem>
        </asp:DropDownList>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Optical Zoom</td>
    <td>
    
        <asp:TextBox ID="txtoptzoom" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtoptzoom" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Digital Zoom</td>
    <td>
    
        <asp:TextBox ID="txtdigizoom" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtdigizoom" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        weight</td>
    <td>
    
        <asp:TextBox ID="txtweight" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtweight" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        dimension</td>
    <td>
    
        <asp:TextBox ID="txtdimension" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtdimension" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Pixel(avoid MP)</td>
    <td>
    
        <asp:TextBox ID="txtpixel" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtpixel" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ErrorMessage="Invalid" ValidationExpression="\d{1,2}" 
            ControlToValidate="txtpixel" ForeColor="Red" ValidationGroup="ent"></asp:RegularExpressionValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Maximum Resolution</td>
    <td>
    
        <asp:TextBox ID="txtmaxreso" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtmaxreso" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Minimum Resolution</td>
    <td>
    
        <asp:TextBox ID="txtminreso" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtminreso" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Maximum Shutter Speed</td>
    <td>
    
        <asp:TextBox ID="txtmaxshu" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtmaxshu" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Minimum Shutter Speed</td>
    <td>
    
        <asp:TextBox ID="txtminshu" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtminshu" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Shutter Release Modes</td>
    <td>
    
        <asp:TextBox ID="txtshuttermodes" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtshuttermodes" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Built in Flash</td>
    <td>
    
        <asp:DropDownList ID="ddlinbuiltflash" runat="server">
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:DropDownList>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        External Flash</td>
    <td>
    
        <asp:DropDownList ID="ddlexternalflash" runat="server">
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:DropDownList>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Flashmodes</td>
    <td>
    
        <asp:TextBox ID="txtflashmodes" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtflashmodes" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Other Flash Features</td>
    <td>
    
        <asp:TextBox ID="txtotrflashfeatures" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtotrflashfeatures" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Sensor Size</td>
    <td>
    
        <asp:TextBox ID="txtsensorsize" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtsensorsize" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Sensor Type</td>
    <td>
    
        <asp:DropDownList ID="ddlsensortype" runat="server">
            <asp:ListItem>NA</asp:ListItem>
            <asp:ListItem>BSI CMOS</asp:ListItem>
            <asp:ListItem>CCD</asp:ListItem>
            <asp:ListItem>CMOS</asp:ListItem>
            <asp:ListItem>EXR CMOS</asp:ListItem>
            <asp:ListItem>HAD CCD</asp:ListItem>
            <asp:ListItem>MOS</asp:ListItem>
        </asp:DropDownList>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Sensor Format</td>
    <td>
    
        <asp:TextBox ID="txtsensorformat" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtsensorformat" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Monitor Size</td>
    <td>
    
        <asp:TextBox ID="txtmonitorsize" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtmonitorsize" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Monitor Type</td>
    <td>
    
        <asp:TextBox ID="txtmonitortype" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtmonitortype" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Monitor Resolution</td>
    <td>
    
        <asp:TextBox ID="txtmonitorresolution" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtmonitorresolution" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Microphone</td>
    <td>
    
        <asp:TextBox ID="txtmicrophone" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtmicrophone" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        USB Cable</td>
    <td>
    
        <asp:TextBox ID="txtusbcable" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtusbcable" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Pict Bridge</td>
    <td>
    
        <asp:DropDownList ID="ddlpictbridge" runat="server">
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
    
        Accessory Shoe</td>
    <td>
    
        <asp:TextBox ID="txtaccessoryshoe" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtaccessoryshoe" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Audio Video Interface</td>
    <td>
    
        <asp:TextBox ID="txtaudiovideo" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtaudiovideo" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Tripodsocket</td>
    <td>
    
        <asp:TextBox ID="txttripodsocket" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" 
            ErrorMessage="Required" ControlToValidate="txttripodsocket" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Imaging Size</td>
    <td>
    
        <asp:TextBox ID="txtimagingsize" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtimagingsize" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Image Format</td>
    <td>
    
        <asp:TextBox ID="txtimageformat" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtimageformat" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Audio Format</td>
    <td>
    
        <asp:TextBox ID="txtaudioformat" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtaudioformat" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Face Detection</td>
    <td>
    
        <asp:DropDownList ID="ddlface" runat="server">
        <asp:ListItem>NA</asp:ListItem>
            <asp:ListItem>Micro SIM</asp:ListItem>
            <asp:ListItem>Nano SIM</asp:ListItem>
        </asp:DropDownList>
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Video Format</td>
    <td>
    
        <asp:TextBox ID="txtvideoformat" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtvideoformat" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Power Supply</td>
    <td>
    
        <asp:TextBox ID="txtpowersupply" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtpowersupply" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Battery Type</td>
    <td>
    
        <asp:TextBox ID="txtbatterytype" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator36" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtbatterytype" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Aperture Range</td>
    <td>
    
        <asp:TextBox ID="txtaprange" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtaprange" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Red Eye Reduction</td>
    <td>
    
        <asp:DropDownList ID="ddlredeye" runat="server">
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
    
        Dust Reduction</td>
    <td>
    
        <asp:DropDownList ID="dddust" runat="server">
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
    
        Temperature</td>
    <td>
    
        <asp:TextBox ID="txttemp" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server" 
            ErrorMessage="Required" ControlToValidate="txttemp" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Sync Terminal</td>
    <td>
    
        <asp:DropDownList ID="ddlsyncter" runat="server">
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
    
        Delete Function</td>
    <td>
    
        <asp:DropDownList ID="ddldel" runat="server">
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
    
        Continuous Shot</td>
    <td>
    
        <asp:TextBox ID="txtcontshot" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator39" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtcontshot" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        White Balancing</td>
    <td>
    
        <asp:TextBox ID="txtwhitebal" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator40" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtwhitebal" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Self Timer</td>
    <td>
    
        <asp:DropDownList ID="ddlself" runat="server">
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
    
        HDMI</td>
    <td>
    
        <asp:TextBox ID="txthdmi" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator41" runat="server" 
            ErrorMessage="Required" ControlToValidate="txthdmi" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Metering Modes</td>
    <td>
    
        <asp:TextBox ID="txtmetering" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator42" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtmetering" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Supported Languages</td>
    <td>
    
        <asp:TextBox ID="txtsupplang" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator43" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtsupplang" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Additional Features</td>
    <td>
    
        <asp:TextBox ID="txtaddfeatures" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator44" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtaddfeatures" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Price(Avoid 
        Rs)</td>
    <td>
    
        <asp:TextBox ID="txtprice" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator45" runat="server" 
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
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator46" runat="server" 
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
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator47" runat="server" 
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
