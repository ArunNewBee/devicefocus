<%@ Page Language="C#" AutoEventWireup="true" CodeFile="smartphoneform.aspx.cs" Inherits="admin_smartphoneform" %>

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
    
        Release Date</td>
    <td>
    
        <asp:DropDownList ID="ddlmonth" runat="server">
            <asp:ListItem>January</asp:ListItem>
            <asp:ListItem>February</asp:ListItem>
            <asp:ListItem>March</asp:ListItem>
            <asp:ListItem>April</asp:ListItem>
            <asp:ListItem>May</asp:ListItem>
            <asp:ListItem>June</asp:ListItem>
            <asp:ListItem>July</asp:ListItem>
            <asp:ListItem>August</asp:ListItem>
            <asp:ListItem>September</asp:ListItem>
            <asp:ListItem>October</asp:ListItem>
            <asp:ListItem>November</asp:ListItem>
            <asp:ListItem>December</asp:ListItem>
        </asp:DropDownList>
    
        <asp:DropDownList ID="ddlyear" runat="server">
            <asp:ListItem>2010</asp:ListItem>
            <asp:ListItem>2011</asp:ListItem>
            <asp:ListItem>2012</asp:ListItem>
            <asp:ListItem>2013</asp:ListItem>
            <asp:ListItem>2014</asp:ListItem>
            <asp:ListItem>2015</asp:ListItem>
            <asp:ListItem>2016</asp:ListItem>
            <asp:ListItem>2017</asp:ListItem>
            <asp:ListItem>2018</asp:ListItem>
            <asp:ListItem>2019</asp:ListItem>
            <asp:ListItem>2020</asp:ListItem>
            <asp:ListItem>2021</asp:ListItem>
            <asp:ListItem>2022</asp:ListItem>
            <asp:ListItem>2023</asp:ListItem>
            <asp:ListItem>2024</asp:ListItem>
            <asp:ListItem>2025</asp:ListItem>
            <asp:ListItem>2026</asp:ListItem>
            <asp:ListItem>2027</asp:ListItem>
            <asp:ListItem>2028</asp:ListItem>
            <asp:ListItem>2029</asp:ListItem>
            <asp:ListItem>2030</asp:ListItem>
            <asp:ListItem>2031</asp:ListItem>
            <asp:ListItem>2032</asp:ListItem>
            <asp:ListItem>2033</asp:ListItem>
            <asp:ListItem>3034</asp:ListItem>
            <asp:ListItem>2035</asp:ListItem>
            <asp:ListItem>2036</asp:ListItem>
            <asp:ListItem>2037</asp:ListItem>
            <asp:ListItem>2038</asp:ListItem>
            <asp:ListItem>2039</asp:ListItem>
            <asp:ListItem>2040</asp:ListItem>
            <asp:ListItem>2041</asp:ListItem>
            <asp:ListItem>2042</asp:ListItem>
            <asp:ListItem>2043</asp:ListItem>
            <asp:ListItem>2044</asp:ListItem>
            <asp:ListItem>2045</asp:ListItem>
            <asp:ListItem>2046</asp:ListItem>
            <asp:ListItem>2047</asp:ListItem>
            <asp:ListItem>2048</asp:ListItem>
            <asp:ListItem>2049</asp:ListItem>
            <asp:ListItem>2050</asp:ListItem>
        </asp:DropDownList>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Form Factor</td>
    <td>
    
        <asp:DropDownList ID="ddlff" runat="server">
            <asp:ListItem>Bar</asp:ListItem>
            <asp:ListItem>Brick</asp:ListItem>
            <asp:ListItem>Touchscreen</asp:ListItem>
            <asp:ListItem>Flip</asp:ListItem>
            <asp:ListItem>Slider</asp:ListItem>
            <asp:ListItem>Mixed</asp:ListItem>
        </asp:DropDownList>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Dimension</td>
    <td>
    
        <asp:TextBox ID="txtdimension" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtdimension" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Weight</td>
    <td>
    
        <asp:TextBox ID="txtweight" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtweight" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Battery Capacity</td>
    <td>
    
        <asp:TextBox ID="txtbatcap" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtbatcap" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Removable battery</td>
    <td>
    
        <asp:DropDownList ID="ddlremovbat" runat="server">
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
    
        Body color</td>
    <td>
    
        <asp:TextBox ID="txtbcolr" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtbcolr" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        SAR</td>
    <td>
    
        <asp:TextBox ID="txtsar" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtsar" ForeColor="Red" 
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
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtscrsize" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Touchscreen</td>
    <td>
    
        <asp:DropDownList ID="ddltch" runat="server">
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:DropDownList>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Touchscreen type</td>
    <td>
    
        <asp:DropDownList ID="ddltchtype" runat="server">
            <asp:ListItem>Capacitive</asp:ListItem>
            <asp:ListItem>Resistive</asp:ListItem>
            <asp:ListItem>Infrared</asp:ListItem>
            <asp:ListItem>NA</asp:ListItem>
        </asp:DropDownList>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Resolution</td>
    <td>
    
        <asp:TextBox ID="txtresoltn" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtresoltn" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Pixel Per Inch</td>
    <td>
    
        <asp:TextBox ID="txtppi" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtppi" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Display color</td>
    <td>
    
        <asp:TextBox ID="txtdispcolr" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtdispcolr" ForeColor="Red" 
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
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtprocessor" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        RAM</td>
    <td>
    
        <asp:DropDownList ID="ddlram" runat="server">
            <asp:ListItem Value="1">1GB</asp:ListItem>
            <asp:ListItem Value="2">2GB</asp:ListItem>
            <asp:ListItem Value="3">3GB</asp:ListItem>
            <asp:ListItem Value="4">4GB</asp:ListItem>
            <asp:ListItem Value="5">5GB</asp:ListItem>
        </asp:DropDownList>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Internal memory</td>
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
    
        Expandable memory</td>
    <td>
    
        <asp:TextBox ID="txtexpmem" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtexpmem" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Rear Camera</td>
    <td>
    
        <asp:TextBox ID="txtrcam" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtrcam" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Front Camera</td>
    <td>
    
        <asp:TextBox ID="txtfcam" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtfcam" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Flash</td>
    <td>
    
        <asp:DropDownList ID="ddlflash" runat="server">
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:DropDownList>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Operating System</td>
    <td>
    
        <asp:DropDownList ID="ddlos" runat="server">
            <asp:ListItem>Android</asp:ListItem>
            <asp:ListItem>Windows</asp:ListItem>
            <asp:ListItem>iOS</asp:ListItem>
            <asp:ListItem>BlackBerry</asp:ListItem>
        </asp:DropDownList>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        OS version</td>
    <td>
    
        <asp:TextBox ID="txtosver" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtosver" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Javasupport</td>
    <td>
    
        <asp:DropDownList ID="ddljavasup" runat="server">
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
    
        Browser</td>
    <td>
    
        <asp:TextBox ID="txtbrow" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtbrow" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        wifi</td>
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
    
        wifi standard</td>
    <td>
    
        <asp:TextBox ID="txtwifistrd" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtwifistrd" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
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
    
        Bluetooth</td>
    <td>
    
        <asp:TextBox ID="txtbluetooth" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtbluetooth" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        NFC</td>
    <td>
    
        <asp:DropDownList ID="ddlnfc" runat="server">
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
    
        Bluetooth profiles</td>
    <td>
    
        <asp:TextBox ID="txtbluetoothprofl" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtbluetoothprofl" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        DLNA</td>
    <td>
    
        <asp:DropDownList ID="ddldlna" runat="server">
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
    
        wifi directory</td>
    <td>
    
        <asp:DropDownList ID="ddlwifidir" runat="server">
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
    
        MHL</td>
    <td>
    
        <asp:DropDownList ID="ddlmhl" runat="server">
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
    
        Headphone</td>
    <td>
    
        <asp:TextBox ID="txthdphn" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
            ErrorMessage="Required" ControlToValidate="txthdphn" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        FM</td>
    <td>
    
        <asp:DropDownList ID="ddlfm" runat="server">
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
    
        USB</td>
    <td>
    
        <asp:TextBox ID="txtusb" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtusb" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        No of 
        Sim</td>
    <td>
    
        <asp:TextBox ID="txtnoofsim" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtnoofsim" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        Sim Type</td>
    <td>
    
        <asp:DropDownList ID="ddlsim" runat="server">
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
    
        Sim infra</td>
    <td>
    
        <asp:TextBox ID="txtsiminfra" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtsiminfra" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        2G profile</td>
    <td>
    
        <asp:TextBox ID="txt2g" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
            ErrorMessage="Required" ControlToValidate="txt2g" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        3G profile</td>
    <td>
    
        <asp:TextBox ID="txt3g" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" 
            ErrorMessage="Required" ControlToValidate="txt3g" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="admtd">
    
        4G profile</td>
    <td>
    
        <asp:TextBox ID="txt4g" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" 
            ErrorMessage="Required" ControlToValidate="txt4g" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
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
    
        Proximity</td>
    <td>
    
        <asp:DropDownList ID="ddlprox" runat="server">
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
    
        Accelerometer</td>
    <td>
    
        <asp:DropDownList ID="ddlacc" runat="server">
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
    
        Ambient light sensor</td>
    <td>
    
        <asp:DropDownList ID="ddlamp" runat="server">
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
    
       Gyroscope</td>
    <td>
    
        <asp:DropDownList ID="ddlgyr" runat="server">
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
    
        Barometer</td>
    <td>
    
        <asp:DropDownList ID="ddlbaro" runat="server">
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
    
        Temperature sensor</td>
    <td>
    
        <asp:DropDownList ID="ddltemp" runat="server">
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
    
        Price1</td>
    <td>
    
        <asp:TextBox ID="txtrate" runat="server" CausesValidation="True" 
            ValidationGroup="ent"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtrate" ForeColor="Red" 
            ValidationGroup="ent"></asp:RequiredFieldValidator>
    
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="Invalid" ValidationExpression="\d{4,6}" 
            ControlToValidate="txtrate" ForeColor="Red" ValidationGroup="ent"></asp:RegularExpressionValidator>
    
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
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" 
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
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" 
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
