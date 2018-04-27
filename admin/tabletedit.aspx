<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tabletedit.aspx.cs" Inherits="admin_tabletedit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../styles/style.css"  rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">

    <div class="table">
    <div class="tab">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="regno" 
            DataSourceID="SqlDataSource1" Width="100%">
            <EditItemTemplate>
            <table width="100%" class="tableitem">
            
            <tr><td>regno</td><td><asp:Label ID="regnoLabel1" runat="server" Text='<%# Eval("regno") %>' /></td></tr>
                <tr>
                    <td>
                        brand</td>
                    <td>
                        <asp:TextBox ID="brandTextBox" runat="server" Text='<%# Bind("brand") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        modelcode</td>
                    <td>
                        <asp:TextBox ID="modelcodeTextBox" runat="server" 
                            Text='<%# Bind("modelcode") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        releasedate</td>
                    <td>
                        <asp:TextBox ID="releasedateTextBox" runat="server" 
                            Text='<%# Bind("releasedate") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        formfactor</td>
                    <td>
                        <asp:TextBox ID="formfactorTextBox" runat="server" 
                            Text='<%# Bind("formfactor") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        dimension</td>
                    <td>
                        <asp:TextBox ID="dimensionTextBox" runat="server" 
                            Text='<%# Bind("dimension") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        weight</td>
                    <td>
                        <asp:TextBox ID="weightTextBox" runat="server" Text='<%# Bind("weight") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        battery capacity</td>
                    <td>
                        <asp:TextBox ID="batcapTextBox" runat="server" Text='<%# Bind("batcap") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        removablebat</td>
                    <td>
                        <asp:TextBox ID="removablebatTextBox" runat="server" 
                            Text='<%# Bind("removablebat") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Body colors</td>
                    <td>
                        <asp:TextBox ID="colorsTextBox" runat="server" Text='<%# Bind("colors") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        SAR</td>
                    <td>
                        <asp:TextBox ID="SARTextBox" runat="server" Text='<%# Bind("SAR") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        screensize</td>
                    <td>
                        <asp:TextBox ID="screensizeTextBox" runat="server" 
                            Text='<%# Bind("screensize") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        touchscreen</td>
                    <td>
                        <asp:TextBox ID="touchscreenTextBox" runat="server" 
                            Text='<%# Bind("touchscreen") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        touchscreentype</td>
                    <td>
                        <asp:TextBox ID="touchscreentypeTextBox" runat="server" 
                            Text='<%# Bind("touchscreentype") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        resolution</td>
                    <td>
                        <asp:TextBox ID="resolutionTextBox" runat="server" 
                            Text='<%# Bind("resolution") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        pixelperinch</td>
                    <td>
                        <asp:TextBox ID="pixelperinchTextBox" runat="server" 
                            Text='<%# Bind("pixelperinch") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        dispcolor</td>
                    <td>
                        <asp:TextBox ID="dispcolorTextBox" runat="server" 
                            Text='<%# Bind("dispcolor") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        processor</td>
                    <td>
                        <asp:TextBox ID="processorTextBox" runat="server" 
                            Text='<%# Bind("processor") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        RAM</td>
                    <td>
                        <asp:TextBox ID="RAMTextBox" runat="server" Text='<%# Bind("RAM") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        intstorage</td>
                    <td>
                        <asp:TextBox ID="intstorageTextBox" runat="server" 
                            Text='<%# Bind("intstorage") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        expstorage</td>
                    <td>
                        <asp:TextBox ID="expstorageTextBox" runat="server" 
                            Text='<%# Bind("expstorage") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        rearcam</td>
                    <td>
                        <asp:TextBox ID="rearcamTextBox" runat="server" Text='<%# Bind("rearcam") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        flash</td>
                    <td>
                        <asp:TextBox ID="flashTextBox" runat="server" Text='<%# Bind("flash") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        frontcam</td>
                    <td>
                        <asp:TextBox ID="frontcamTextBox" runat="server" 
                            Text='<%# Bind("frontcam") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        osver</td>
                    <td>
                        <asp:TextBox ID="osverTextBox" runat="server" Text='<%# Bind("osver") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        os</td>
                    <td>
                        <asp:TextBox ID="osTextBox" runat="server" Text='<%# Bind("os") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        javasupport</td>
                    <td>
                        <asp:TextBox ID="javasupportTextBox" runat="server" 
                            Text='<%# Bind("javasupport") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        browser</td>
                    <td>
                        <asp:TextBox ID="browserTextBox" runat="server" Text='<%# Bind("browser") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        wifi</td>
                    <td>
                        <asp:TextBox ID="wifiTextBox" runat="server" Text='<%# Bind("wifi") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        wifistnd</td>
                    <td>
                        <asp:TextBox ID="wifistndTextBox" runat="server" 
                            Text='<%# Bind("wifistnd") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        GPS</td>
                    <td>
                        <asp:TextBox ID="GPSTextBox" runat="server" Text='<%# Bind("GPS") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        bluetooth</td>
                    <td>
                        <asp:TextBox ID="bluetoothTextBox" runat="server" 
                            Text='<%# Bind("bluetooth") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        NFC</td>
                    <td>
                        <asp:TextBox ID="NFCTextBox" runat="server" Text='<%# Bind("NFC") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        bluetoothprofiles</td>
                    <td>
                        <asp:TextBox ID="bluetoothprofilesTextBox" runat="server" 
                            Text='<%# Bind("bluetoothprofiles") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        DLNA</td>
                    <td>
                        <asp:TextBox ID="DLNATextBox" runat="server" Text='<%# Bind("DLNA") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        wifi direct</td>
                    <td>
                        <asp:TextBox ID="wifidirTextBox" runat="server" Text='<%# Bind("wifidir") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        MHL</td>
                    <td>
                        <asp:TextBox ID="MHLTextBox" runat="server" Text='<%# Bind("MHL") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        HDMI</td>
                    <td>
                        <asp:TextBox ID="HDMITextBox" runat="server" Text='<%# Bind("HDMI") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        headphone</td>
                    <td>
                        <asp:TextBox ID="headphoneTextBox" runat="server" 
                            Text='<%# Bind("headphone") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        FM</td>
                    <td>
                        <asp:TextBox ID="FMTextBox" runat="server" Text='<%# Bind("FM") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        USB</td>
                    <td>
                        <asp:TextBox ID="USBTextBox" runat="server" Text='<%# Bind("USB") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        noofsim</td>
                    <td>
                        <asp:TextBox ID="noofsimTextBox" runat="server" Text='<%# Bind("noofsim") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        simtype</td>
                    <td>
                        <asp:TextBox ID="simtypeTextBox" runat="server" Text='<%# Bind("simtype") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        infra</td>
                    <td>
                        <asp:TextBox ID="infraTextBox" runat="server" Text='<%# Bind("infra") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        twog</td>
                    <td>
                        <asp:TextBox ID="twogTextBox" runat="server" Text='<%# Bind("twog") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        threeg</td>
                    <td>
                        <asp:TextBox ID="threegTextBox" runat="server" Text='<%# Bind("threeg") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        fourg</td>
                    <td>
                        <asp:TextBox ID="fourgTextBox" runat="server" Text='<%# Bind("fourg") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        compass</td>
                    <td>
                        <asp:TextBox ID="compassTextBox" runat="server" Text='<%# Bind("compass") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        proxi</td>
                    <td>
                        <asp:TextBox ID="proxiTextBox" runat="server" Text='<%# Bind("proxi") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        accmtr</td>
                    <td>
                        <asp:TextBox ID="accmtrTextBox" runat="server" Text='<%# Bind("accmtr") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        amplightsensor</td>
                    <td>
                        <asp:TextBox ID="amplightsensorTextBox" runat="server" 
                            Text='<%# Bind("amplightsensor") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        gyroscope</td>
                    <td>
                        <asp:TextBox ID="gyroscopeTextBox" runat="server" 
                            Text='<%# Bind("gyroscope") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        baromtr</td>
                    <td>
                        <asp:TextBox ID="baromtrTextBox" runat="server" Text='<%# Bind("baromtr") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        temp</td>
                    <td>
                        <asp:TextBox ID="tempTextBox" runat="server" Text='<%# Bind("temp") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        rate</td>
                    <td>
                        <asp:TextBox ID="rateTextBox" runat="server" Text='<%# Bind("rate") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        youtubelink</td>
                    <td>
                        <asp:TextBox ID="youtubelinkTextBox" runat="server" 
                            Text='<%# Bind("youtubelink") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        source</td>
                    <td>
                        <asp:TextBox ID="sourceTextBox" runat="server" Text='<%# Bind("source") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        verified</td>
                    <td>
                        <asp:TextBox ID="verifiedTextBox" runat="server" 
                            Text='<%# Bind("verified") %>' />
                    </td>
                </tr>
                </table>
                
                
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                regno:
                <asp:TextBox ID="regnoTextBox" runat="server" Text='<%# Bind("regno") %>' />
                <br />
                brand:
                <asp:TextBox ID="brandTextBox" runat="server" Text='<%# Bind("brand") %>' />
                <br />
                modelcode:
                <asp:TextBox ID="modelcodeTextBox" runat="server" 
                    Text='<%# Bind("modelcode") %>' />
                <br />
                altname:
                <asp:TextBox ID="altnameTextBox" runat="server" Text='<%# Bind("altname") %>' />
                <br />
                pic:
                <asp:TextBox ID="picTextBox" runat="server" Text='<%# Bind("pic") %>' />
                <br />
                releasedate:
                <asp:TextBox ID="releasedateTextBox" runat="server" 
                    Text='<%# Bind("releasedate") %>' />
                <br />
                formfactor:
                <asp:TextBox ID="formfactorTextBox" runat="server" 
                    Text='<%# Bind("formfactor") %>' />
                <br />
                dimension:
                <asp:TextBox ID="dimensionTextBox" runat="server" 
                    Text='<%# Bind("dimension") %>' />
                <br />
                weight:
                <asp:TextBox ID="weightTextBox" runat="server" Text='<%# Bind("weight") %>' />
                <br />
                batcap:
                <asp:TextBox ID="batcapTextBox" runat="server" Text='<%# Bind("batcap") %>' />
                <br />
                removablebat:
                <asp:TextBox ID="removablebatTextBox" runat="server" 
                    Text='<%# Bind("removablebat") %>' />
                <br />
                colors:
                <asp:TextBox ID="colorsTextBox" runat="server" Text='<%# Bind("colors") %>' />
                <br />
                SAR:
                <asp:TextBox ID="SARTextBox" runat="server" Text='<%# Bind("SAR") %>' />
                <br />
                screensize:
                <asp:TextBox ID="screensizeTextBox" runat="server" 
                    Text='<%# Bind("screensize") %>' />
                <br />
                touchscreen:
                <asp:TextBox ID="touchscreenTextBox" runat="server" 
                    Text='<%# Bind("touchscreen") %>' />
                <br />
                touchscreentype:
                <asp:TextBox ID="touchscreentypeTextBox" runat="server" 
                    Text='<%# Bind("touchscreentype") %>' />
                <br />
                resolution:
                <asp:TextBox ID="resolutionTextBox" runat="server" 
                    Text='<%# Bind("resolution") %>' />
                <br />
                pixelperinch:
                <asp:TextBox ID="pixelperinchTextBox" runat="server" 
                    Text='<%# Bind("pixelperinch") %>' />
                <br />
                dispcolor:
                <asp:TextBox ID="dispcolorTextBox" runat="server" 
                    Text='<%# Bind("dispcolor") %>' />
                <br />
                processor:
                <asp:TextBox ID="processorTextBox" runat="server" 
                    Text='<%# Bind("processor") %>' />
                <br />
                RAM:
                <asp:TextBox ID="RAMTextBox" runat="server" Text='<%# Bind("RAM") %>' />
                <br />
                intstorage:
                <asp:TextBox ID="intstorageTextBox" runat="server" 
                    Text='<%# Bind("intstorage") %>' />
                <br />
                expstorage:
                <asp:TextBox ID="expstorageTextBox" runat="server" 
                    Text='<%# Bind("expstorage") %>' />
                <br />
                rearcam:
                <asp:TextBox ID="rearcamTextBox" runat="server" Text='<%# Bind("rearcam") %>' />
                <br />
                flash:
                <asp:TextBox ID="flashTextBox" runat="server" Text='<%# Bind("flash") %>' />
                <br />
                frontcam:
                <asp:TextBox ID="frontcamTextBox" runat="server" 
                    Text='<%# Bind("frontcam") %>' />
                <br />
                osver:
                <asp:TextBox ID="osverTextBox" runat="server" Text='<%# Bind("osver") %>' />
                <br />
                os:
                <asp:TextBox ID="osTextBox" runat="server" Text='<%# Bind("os") %>' />
                <br />
                skin:
                <asp:TextBox ID="skinTextBox" runat="server" Text='<%# Bind("skin") %>' />
                <br />
                javasupport:
                <asp:TextBox ID="javasupportTextBox" runat="server" 
                    Text='<%# Bind("javasupport") %>' />
                <br />
                browser:
                <asp:TextBox ID="browserTextBox" runat="server" Text='<%# Bind("browser") %>' />
                <br />
                wifi:
                <asp:TextBox ID="wifiTextBox" runat="server" Text='<%# Bind("wifi") %>' />
                <br />
                wifistnd:
                <asp:TextBox ID="wifistndTextBox" runat="server" 
                    Text='<%# Bind("wifistnd") %>' />
                <br />
                GPS:
                <asp:TextBox ID="GPSTextBox" runat="server" Text='<%# Bind("GPS") %>' />
                <br />
                bluetooth:
                <asp:TextBox ID="bluetoothTextBox" runat="server" 
                    Text='<%# Bind("bluetooth") %>' />
                <br />
                NFC:
                <asp:TextBox ID="NFCTextBox" runat="server" Text='<%# Bind("NFC") %>' />
                <br />
                bluetoothprofiles:
                <asp:TextBox ID="bluetoothprofilesTextBox" runat="server" 
                    Text='<%# Bind("bluetoothprofiles") %>' />
                <br />
                DLNA:
                <asp:TextBox ID="DLNATextBox" runat="server" Text='<%# Bind("DLNA") %>' />
                <br />
                wifidir:
                <asp:TextBox ID="wifidirTextBox" runat="server" Text='<%# Bind("wifidir") %>' />
                <br />
                MHL:
                <asp:TextBox ID="MHLTextBox" runat="server" Text='<%# Bind("MHL") %>' />
                <br />
                HDMI:
                <asp:TextBox ID="HDMITextBox" runat="server" Text='<%# Bind("HDMI") %>' />
                <br />
                headphone:
                <asp:TextBox ID="headphoneTextBox" runat="server" 
                    Text='<%# Bind("headphone") %>' />
                <br />
                FM:
                <asp:TextBox ID="FMTextBox" runat="server" Text='<%# Bind("FM") %>' />
                <br />
                USB:
                <asp:TextBox ID="USBTextBox" runat="server" Text='<%# Bind("USB") %>' />
                <br />
                noofsim:
                <asp:TextBox ID="noofsimTextBox" runat="server" Text='<%# Bind("noofsim") %>' />
                <br />
                simtype:
                <asp:TextBox ID="simtypeTextBox" runat="server" Text='<%# Bind("simtype") %>' />
                <br />
                infra:
                <asp:TextBox ID="infraTextBox" runat="server" Text='<%# Bind("infra") %>' />
                <br />
                twog:
                <asp:TextBox ID="twogTextBox" runat="server" Text='<%# Bind("twog") %>' />
                <br />
                threeg:
                <asp:TextBox ID="threegTextBox" runat="server" Text='<%# Bind("threeg") %>' />
                <br />
                fourg:
                <asp:TextBox ID="fourgTextBox" runat="server" Text='<%# Bind("fourg") %>' />
                <br />
                compass:
                <asp:TextBox ID="compassTextBox" runat="server" Text='<%# Bind("compass") %>' />
                <br />
                proxi:
                <asp:TextBox ID="proxiTextBox" runat="server" Text='<%# Bind("proxi") %>' />
                <br />
                accmtr:
                <asp:TextBox ID="accmtrTextBox" runat="server" Text='<%# Bind("accmtr") %>' />
                <br />
                amplightsensor:
                <asp:TextBox ID="amplightsensorTextBox" runat="server" 
                    Text='<%# Bind("amplightsensor") %>' />
                <br />
                gyroscope:
                <asp:TextBox ID="gyroscopeTextBox" runat="server" 
                    Text='<%# Bind("gyroscope") %>' />
                <br />
                baromtr:
                <asp:TextBox ID="baromtrTextBox" runat="server" Text='<%# Bind("baromtr") %>' />
                <br />
                temp:
                <asp:TextBox ID="tempTextBox" runat="server" Text='<%# Bind("temp") %>' />
                <br />
                rate:
                <asp:TextBox ID="rateTextBox" runat="server" Text='<%# Bind("rate") %>' />
                <br />
                youtubelink:
                <asp:TextBox ID="youtubelinkTextBox" runat="server" 
                    Text='<%# Bind("youtubelink") %>' />
                <br />
                source:
                <asp:TextBox ID="sourceTextBox" runat="server" Text='<%# Bind("source") %>' />
                <br />
                verified:
                <asp:TextBox ID="verifiedTextBox" runat="server" 
                    Text='<%# Bind("verified") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
            <table width="100%" class="tableitem">
            
            <tr><td>regno</td><td><asp:Label ID="regnoLabel1" runat="server" Text='<%# Eval("regno") %>' /></td></tr>
                <tr>
                    <td>
                        brand</td>
                    <td>
                        <asp:Label ID="brandTextBox" runat="server" Text='<%# Bind("brand") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        modelcode</td>
                    <td>
                        <asp:Label ID="modelcodeTextBox" runat="server" 
                            Text='<%# Bind("modelcode") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        releasedate</td>
                    <td>
                        <asp:Label ID="releasedateTextBox" runat="server" 
                            Text='<%# Bind("releasedate") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        formfactor</td>
                    <td>
                        <asp:Label ID="formfactorTextBox" runat="server" 
                            Text='<%# Bind("formfactor") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        dimension</td>
                    <td>
                        <asp:Label ID="dimensionTextBox" runat="server" 
                            Text='<%# Bind("dimension") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        weight</td>
                    <td>
                        <asp:Label ID="weightTextBox" runat="server" Text='<%# Bind("weight") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        battery capacity</td>
                    <td>
                        <asp:Label ID="batcapTextBox" runat="server" Text='<%# Bind("batcap") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        removablebat</td>
                    <td>
                        <asp:Label ID="removablebatTextBox" runat="server" 
                            Text='<%# Bind("removablebat") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Body colors</td>
                    <td>
                        <asp:Label ID="colorsTextBox" runat="server" Text='<%# Bind("colors") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        SAR</td>
                    <td>
                        <asp:Label ID="SARTextBox" runat="server" Text='<%# Bind("SAR") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        screensize</td>
                    <td>
                        <asp:Label ID="screensizeTextBox" runat="server" 
                            Text='<%# Bind("screensize") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        touchscreen</td>
                    <td>
                        <asp:Label ID="touchscreenTextBox" runat="server" 
                            Text='<%# Bind("touchscreen") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        touchscreentype</td>
                    <td>
                        <asp:Label ID="touchscreentypeTextBox" runat="server" 
                            Text='<%# Bind("touchscreentype") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        resolution</td>
                    <td>
                        <asp:Label ID="resolutionTextBox" runat="server" 
                            Text='<%# Bind("resolution") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        pixelperinch</td>
                    <td>
                        <asp:Label ID="pixelperinchTextBox" runat="server" 
                            Text='<%# Bind("pixelperinch") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        dispcolor</td>
                    <td>
                        <asp:Label ID="dispcolorTextBox" runat="server" 
                            Text='<%# Bind("dispcolor") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        processor</td>
                    <td>
                        <asp:Label ID="processorTextBox" runat="server" 
                            Text='<%# Bind("processor") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        RAM</td>
                    <td>
                        <asp:Label ID="RAMTextBox" runat="server" Text='<%# Bind("RAM") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        intstorage</td>
                    <td>
                        <asp:Label ID="intstorageTextBox" runat="server" 
                            Text='<%# Bind("intstorage") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        expstorage</td>
                    <td>
                        <asp:Label ID="expstorageTextBox" runat="server" 
                            Text='<%# Bind("expstorage") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        rearcam</td>
                    <td>
                        <asp:Label ID="rearcamTextBox" runat="server" Text='<%# Bind("rearcam") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        flash</td>
                    <td>
                        <asp:Label ID="flashTextBox" runat="server" Text='<%# Bind("flash") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        frontcam</td>
                    <td>
                        <asp:Label ID="frontcamTextBox" runat="server" 
                            Text='<%# Bind("frontcam") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        osver</td>
                    <td>
                        <asp:Label ID="osverTextBox" runat="server" Text='<%# Bind("osver") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        os</td>
                    <td>
                        <asp:Label ID="osTextBox" runat="server" Text='<%# Bind("os") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        javasupport</td>
                    <td>
                        <asp:Label ID="javasupportTextBox" runat="server" 
                            Text='<%# Bind("javasupport") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        browser</td>
                    <td>
                        <asp:Label ID="browserTextBox" runat="server" Text='<%# Bind("browser") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        wifi</td>
                    <td>
                        <asp:Label ID="wifiTextBox" runat="server" Text='<%# Bind("wifi") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        wifistnd</td>
                    <td>
                        <asp:Label ID="wifistndTextBox" runat="server" 
                            Text='<%# Bind("wifistnd") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        GPS</td>
                    <td>
                        <asp:Label ID="GPSTextBox" runat="server" Text='<%# Bind("GPS") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        bluetooth</td>
                    <td>
                        <asp:Label ID="bluetoothTextBox" runat="server" 
                            Text='<%# Bind("bluetooth") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        NFC</td>
                    <td>
                        <asp:Label ID="NFCTextBox" runat="server" Text='<%# Bind("NFC") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        bluetoothprofiles</td>
                    <td>
                        <asp:Label ID="bluetoothprofilesTextBox" runat="server" 
                            Text='<%# Bind("bluetoothprofiles") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        DLNA</td>
                    <td>
                        <asp:Label ID="DLNATextBox" runat="server" Text='<%# Bind("DLNA") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        wifi direct</td>
                    <td>
                        <asp:Label ID="wifidirTextBox" runat="server" Text='<%# Bind("wifidir") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        MHL</td>
                    <td>
                        <asp:Label ID="MHLTextBox" runat="server" Text='<%# Bind("MHL") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        HDMI</td>
                    <td>
                        <asp:Label ID="HDMITextBox" runat="server" Text='<%# Bind("HDMI") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        headphone</td>
                    <td>
                        <asp:Label ID="headphoneTextBox" runat="server" 
                            Text='<%# Bind("headphone") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        FM</td>
                    <td>
                        <asp:Label ID="FMTextBox" runat="server" Text='<%# Bind("FM") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        USB</td>
                    <td>
                        <asp:Label ID="USBTextBox" runat="server" Text='<%# Bind("USB") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        noofsim</td>
                    <td>
                        <asp:Label ID="noofsimTextBox" runat="server" Text='<%# Bind("noofsim") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        simtype</td>
                    <td>
                        <asp:Label ID="simtypeTextBox" runat="server" Text='<%# Bind("simtype") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        infra</td>
                    <td>
                        <asp:Label ID="infraTextBox" runat="server" Text='<%# Bind("infra") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        twog</td>
                    <td>
                        <asp:Label ID="twogTextBox" runat="server" Text='<%# Bind("twog") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        threeg</td>
                    <td>
                        <asp:Label ID="threegTextBox" runat="server" Text='<%# Bind("threeg") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        fourg</td>
                    <td>
                        <asp:Label ID="fourgTextBox" runat="server" Text='<%# Bind("fourg") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        compass</td>
                    <td>
                        <asp:Label ID="compassTextBox" runat="server" Text='<%# Bind("compass") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        proxi</td>
                    <td>
                        <asp:Label ID="proxiTextBox" runat="server" Text='<%# Bind("proxi") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        accmtr</td>
                    <td>
                        <asp:Label ID="accmtrTextBox" runat="server" Text='<%# Bind("accmtr") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        amplightsensor</td>
                    <td>
                        <asp:Label ID="amplightsensorTextBox" runat="server" 
                            Text='<%# Bind("amplightsensor") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        gyroscope</td>
                    <td>
                        <asp:Label ID="gyroscopeTextBox" runat="server" 
                            Text='<%# Bind("gyroscope") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        baromtr</td>
                    <td>
                        <asp:Label ID="baromtrTextBox" runat="server" Text='<%# Bind("baromtr") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        temp</td>
                    <td>
                        <asp:Label ID="tempTextBox" runat="server" Text='<%# Bind("temp") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        rate</td>
                    <td>
                        <asp:Label ID="rateTextBox" runat="server" Text='<%# Bind("rate") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        youtubelink</td>
                    <td>
                        <asp:Label ID="youtubelinkTextBox" runat="server" 
                            Text='<%# Bind("youtubelink") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        source</td>
                    <td>
                        <asp:Label ID="sourceTextBox" runat="server" Text='<%# Bind("source") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        verified</td>
                    <td>
                        <asp:Label ID="verifiedTextBox" runat="server" 
                            Text='<%# Bind("verified") %>' />
                    </td>
                </tr>
                </table>
                
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                    CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [tablet] WHERE [regno] = @regno" 
            InsertCommand="INSERT INTO [tablet] ([regno], [brand], [modelcode], [altname], [pic], [releasedate], [formfactor], [dimension], [weight], [batcap], [removablebat], [colors], [SAR], [screensize], [touchscreen], [touchscreentype], [resolution], [pixelperinch], [dispcolor], [processor], [RAM], [intstorage], [expstorage], [rearcam], [flash], [frontcam], [osver], [os], [skin], [javasupport], [browser], [wifi], [wifistnd], [GPS], [bluetooth], [NFC], [bluetoothprofiles], [DLNA], [wifidir], [MHL], [HDMI], [headphone], [FM], [USB], [noofsim], [simtype], [infra], [twog], [threeg], [fourg], [compass], [proxi], [accmtr], [amplightsensor], [gyroscope], [baromtr], [temp], [rate], [youtubelink], [source], [verified]) VALUES (@regno, @brand, @modelcode, @altname, @pic, @releasedate, @formfactor, @dimension, @weight, @batcap, @removablebat, @colors, @SAR, @screensize, @touchscreen, @touchscreentype, @resolution, @pixelperinch, @dispcolor, @processor, @RAM, @intstorage, @expstorage, @rearcam, @flash, @frontcam, @osver, @os, @skin, @javasupport, @browser, @wifi, @wifistnd, @GPS, @bluetooth, @NFC, @bluetoothprofiles, @DLNA, @wifidir, @MHL, @HDMI, @headphone, @FM, @USB, @noofsim, @simtype, @infra, @twog, @threeg, @fourg, @compass, @proxi, @accmtr, @amplightsensor, @gyroscope, @baromtr, @temp, @rate, @youtubelink, @source, @verified)" 
            SelectCommand="SELECT * FROM [tablet] WHERE ([regno] = @regno)" 
            UpdateCommand="UPDATE [tablet] SET [brand] = @brand, [modelcode] = @modelcode, [altname] = @altname, [pic] = @pic, [releasedate] = @releasedate, [formfactor] = @formfactor, [dimension] = @dimension, [weight] = @weight, [batcap] = @batcap, [removablebat] = @removablebat, [colors] = @colors, [SAR] = @SAR, [screensize] = @screensize, [touchscreen] = @touchscreen, [touchscreentype] = @touchscreentype, [resolution] = @resolution, [pixelperinch] = @pixelperinch, [dispcolor] = @dispcolor, [processor] = @processor, [RAM] = @RAM, [intstorage] = @intstorage, [expstorage] = @expstorage, [rearcam] = @rearcam, [flash] = @flash, [frontcam] = @frontcam, [osver] = @osver, [os] = @os, [skin] = @skin, [javasupport] = @javasupport, [browser] = @browser, [wifi] = @wifi, [wifistnd] = @wifistnd, [GPS] = @GPS, [bluetooth] = @bluetooth, [NFC] = @NFC, [bluetoothprofiles] = @bluetoothprofiles, [DLNA] = @DLNA, [wifidir] = @wifidir, [MHL] = @MHL, [HDMI] = @HDMI, [headphone] = @headphone, [FM] = @FM, [USB] = @USB, [noofsim] = @noofsim, [simtype] = @simtype, [infra] = @infra, [twog] = @twog, [threeg] = @threeg, [fourg] = @fourg, [compass] = @compass, [proxi] = @proxi, [accmtr] = @accmtr, [amplightsensor] = @amplightsensor, [gyroscope] = @gyroscope, [baromtr] = @baromtr, [temp] = @temp, [rate] = @rate, [youtubelink] = @youtubelink, [source] = @source, [verified] = @verified WHERE [regno] = @regno">
            <DeleteParameters>
                <asp:Parameter Name="regno" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="regno" Type="String" />
                <asp:Parameter Name="brand" Type="String" />
                <asp:Parameter Name="modelcode" Type="String" />
                <asp:Parameter Name="altname" Type="String" />
                <asp:Parameter Name="pic" Type="String" />
                <asp:Parameter Name="releasedate" Type="String" />
                <asp:Parameter Name="formfactor" Type="String" />
                <asp:Parameter Name="dimension" Type="String" />
                <asp:Parameter Name="weight" Type="String" />
                <asp:Parameter Name="batcap" Type="String" />
                <asp:Parameter Name="removablebat" Type="String" />
                <asp:Parameter Name="colors" Type="String" />
                <asp:Parameter Name="SAR" Type="String" />
                <asp:Parameter Name="screensize" Type="String" />
                <asp:Parameter Name="touchscreen" Type="String" />
                <asp:Parameter Name="touchscreentype" Type="String" />
                <asp:Parameter Name="resolution" Type="String" />
                <asp:Parameter Name="pixelperinch" Type="String" />
                <asp:Parameter Name="dispcolor" Type="String" />
                <asp:Parameter Name="processor" Type="String" />
                <asp:Parameter Name="RAM" Type="String" />
                <asp:Parameter Name="intstorage" Type="String" />
                <asp:Parameter Name="expstorage" Type="String" />
                <asp:Parameter Name="rearcam" Type="String" />
                <asp:Parameter Name="flash" Type="String" />
                <asp:Parameter Name="frontcam" Type="String" />
                <asp:Parameter Name="osver" Type="String" />
                <asp:Parameter Name="os" Type="String" />
                <asp:Parameter Name="skin" Type="String" />
                <asp:Parameter Name="javasupport" Type="String" />
                <asp:Parameter Name="browser" Type="String" />
                <asp:Parameter Name="wifi" Type="String" />
                <asp:Parameter Name="wifistnd" Type="String" />
                <asp:Parameter Name="GPS" Type="String" />
                <asp:Parameter Name="bluetooth" Type="String" />
                <asp:Parameter Name="NFC" Type="String" />
                <asp:Parameter Name="bluetoothprofiles" Type="String" />
                <asp:Parameter Name="DLNA" Type="String" />
                <asp:Parameter Name="wifidir" Type="String" />
                <asp:Parameter Name="MHL" Type="String" />
                <asp:Parameter Name="HDMI" Type="String" />
                <asp:Parameter Name="headphone" Type="String" />
                <asp:Parameter Name="FM" Type="String" />
                <asp:Parameter Name="USB" Type="String" />
                <asp:Parameter Name="noofsim" Type="String" />
                <asp:Parameter Name="simtype" Type="String" />
                <asp:Parameter Name="infra" Type="String" />
                <asp:Parameter Name="twog" Type="String" />
                <asp:Parameter Name="threeg" Type="String" />
                <asp:Parameter Name="fourg" Type="String" />
                <asp:Parameter Name="compass" Type="String" />
                <asp:Parameter Name="proxi" Type="String" />
                <asp:Parameter Name="accmtr" Type="String" />
                <asp:Parameter Name="amplightsensor" Type="String" />
                <asp:Parameter Name="gyroscope" Type="String" />
                <asp:Parameter Name="baromtr" Type="String" />
                <asp:Parameter Name="temp" Type="String" />
                <asp:Parameter Name="rate" Type="Int32" />
                <asp:Parameter Name="youtubelink" Type="String" />
                <asp:Parameter Name="source" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="regno" QueryStringField="strReg" 
                    Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="brand" Type="String" />
                <asp:Parameter Name="modelcode" Type="String" />
                <asp:Parameter Name="altname" Type="String" />
                <asp:Parameter Name="pic" Type="String" />
                <asp:Parameter Name="releasedate" Type="String" />
                <asp:Parameter Name="formfactor" Type="String" />
                <asp:Parameter Name="dimension" Type="String" />
                <asp:Parameter Name="weight" Type="String" />
                <asp:Parameter Name="batcap" Type="String" />
                <asp:Parameter Name="removablebat" Type="String" />
                <asp:Parameter Name="colors" Type="String" />
                <asp:Parameter Name="SAR" Type="String" />
                <asp:Parameter Name="screensize" Type="String" />
                <asp:Parameter Name="touchscreen" Type="String" />
                <asp:Parameter Name="touchscreentype" Type="String" />
                <asp:Parameter Name="resolution" Type="String" />
                <asp:Parameter Name="pixelperinch" Type="String" />
                <asp:Parameter Name="dispcolor" Type="String" />
                <asp:Parameter Name="processor" Type="String" />
                <asp:Parameter Name="RAM" Type="String" />
                <asp:Parameter Name="intstorage" Type="String" />
                <asp:Parameter Name="expstorage" Type="String" />
                <asp:Parameter Name="rearcam" Type="String" />
                <asp:Parameter Name="flash" Type="String" />
                <asp:Parameter Name="frontcam" Type="String" />
                <asp:Parameter Name="osver" Type="String" />
                <asp:Parameter Name="os" Type="String" />
                <asp:Parameter Name="skin" Type="String" />
                <asp:Parameter Name="javasupport" Type="String" />
                <asp:Parameter Name="browser" Type="String" />
                <asp:Parameter Name="wifi" Type="String" />
                <asp:Parameter Name="wifistnd" Type="String" />
                <asp:Parameter Name="GPS" Type="String" />
                <asp:Parameter Name="bluetooth" Type="String" />
                <asp:Parameter Name="NFC" Type="String" />
                <asp:Parameter Name="bluetoothprofiles" Type="String" />
                <asp:Parameter Name="DLNA" Type="String" />
                <asp:Parameter Name="wifidir" Type="String" />
                <asp:Parameter Name="MHL" Type="String" />
                <asp:Parameter Name="HDMI" Type="String" />
                <asp:Parameter Name="headphone" Type="String" />
                <asp:Parameter Name="FM" Type="String" />
                <asp:Parameter Name="USB" Type="String" />
                <asp:Parameter Name="noofsim" Type="String" />
                <asp:Parameter Name="simtype" Type="String" />
                <asp:Parameter Name="infra" Type="String" />
                <asp:Parameter Name="twog" Type="String" />
                <asp:Parameter Name="threeg" Type="String" />
                <asp:Parameter Name="fourg" Type="String" />
                <asp:Parameter Name="compass" Type="String" />
                <asp:Parameter Name="proxi" Type="String" />
                <asp:Parameter Name="accmtr" Type="String" />
                <asp:Parameter Name="amplightsensor" Type="String" />
                <asp:Parameter Name="gyroscope" Type="String" />
                <asp:Parameter Name="baromtr" Type="String" />
                <asp:Parameter Name="temp" Type="String" />
                <asp:Parameter Name="rate" Type="Int32" />
                <asp:Parameter Name="youtubelink" Type="String" />
                <asp:Parameter Name="source" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="regno" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

        </div>
        
        <div class="tab">
            
            <p style="text-align:center;">
        <asp:Image ID="Image1" runat="server" style="width:50%" />
        <br />
                
                <asp:FileUpload ID="FileUpload1" runat="server"/>
                <asp:Button ID="btnok1" runat="server" Text="Button" onclick="btnok1_Click" />

        </p>
          <p style="text-align:center;">
        <asp:Image ID="Image2" runat="server" style="width:50%" />
        <br />
                
                <asp:FileUpload ID="FileUpload2" runat="server"/>
                <asp:Button ID="btnok2" runat="server" Text="Button" onclick="btnok2_Click" />

        </p>  
        <p style="text-align:center;">
        <asp:Image ID="Image3" runat="server" style="width:50%" />
        <br />
                
                <asp:FileUpload ID="FileUpload3" runat="server"/>
                <asp:Button ID="btnok3" runat="server" Text="Button" onclick="btnok3_Click" />

        </p>  
        <p style="text-align:center;">
        <asp:Image ID="Image4" runat="server" style="width:50%" />
        <br />
                
                <asp:FileUpload ID="FileUpload4" runat="server"/>
                <asp:Button ID="btnok5" runat="server" Text="Button" onclick="btnok4_Click" />

        </p>  
        <p style="text-align:center;">
        <asp:Image ID="Image5" runat="server" style="width:50%" />
        <br />
                
                <asp:FileUpload ID="FileUpload5" runat="server"/>
                <asp:Button ID="btn5" runat="server" Text="Button" onclick="btnok5_Click" />

        </p> 
        <p style="text-align:center;">
        <asp:Image ID="Image6" runat="server" style="width:50%" />
        <br />
                
                <asp:FileUpload ID="FileUpload6" runat="server"/>
                <asp:Button ID="btnok6" runat="server" Text="Button" onclick="btnok6_Click" />

        </p>       
        </div>

    </div>
    </form>
</body>
</html>
