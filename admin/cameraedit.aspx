<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cameraedit.aspx.cs" Inherits="admin_cameraedit" %>

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
            <tr><td>
                regno</td><td>
                <asp:Label ID="regnoLabel1" runat="server" Text='<%# Eval("regno") %>' /></td></tr>
                <tr><td>
                brand</td><td>
                <asp:TextBox ID="brandTextBox" runat="server" Text='<%# Bind("brand") %>' /></td></tr>
                <tr><td>
                model</td><td>
                <asp:TextBox ID="modelTextBox" runat="server" Text='<%# Bind("model") %>' /></td></tr>
                <tr><td>
                title</td><td>
                <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' /></td></tr>
                <tr><td>
                type</td><td>
                <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' /></td></tr>
                <tr><td>
                color</td><td>
                <asp:TextBox ID="colorTextBox" runat="server" Text='<%# Bind("color") %>' /></td></tr>
                <tr><td>
                autofocus</td><td>
                <asp:TextBox ID="autofocusTextBox" runat="server" 
                    Text='<%# Bind("autofocus") %>' /></td></tr>
                <tr><td>
                focusmode</td><td>
                <asp:TextBox ID="focusmodeTextBox" runat="server" 
                    Text='<%# Bind("focusmode") %>' /></td></tr>
                <tr><td>
                otherlensfeatures</td><td>
                <asp:TextBox ID="otherlensfeaturesTextBox" runat="server" 
                    Text='<%# Bind("otherlensfeatures") %>' /></td></tr>
                <tr><td>
                focallength</td><td>
                <asp:TextBox ID="focallengthTextBox" runat="server" 
                    Text='<%# Bind("focallength") %>' /></td></tr>
                <tr><td>
                manualfocus</td><td>
                <asp:TextBox ID="manualfocusTextBox" runat="server" 
                    Text='<%# Bind("manualfocus") %>' /></td></tr>
                <tr><td>
                focuspoints</td><td>
                <asp:TextBox ID="focuspointsTextBox" runat="server" 
                    Text='<%# Bind("focuspoints") %>' /></td></tr>
                <tr><td>
                focusrange</td><td>
                <asp:TextBox ID="focusrangeTextBox" runat="server" 
                    Text='<%# Bind("focusrange") %>' /></td></tr>
                <tr><td>
                lensservo</td><td>
                <asp:TextBox ID="lensservoTextBox" runat="server" 
                    Text='<%# Bind("lensservo") %>' /></td></tr>
                <tr><td>
                focus</td><td>
                <asp:TextBox ID="focusTextBox" runat="server" Text='<%# Bind("focus") %>' /></td></tr>
                <tr><td>
                opticalzoom</td><td>
                <asp:TextBox ID="opticalzoomTextBox" runat="server" 
                    Text='<%# Bind("opticalzoom") %>' /></td></tr>
                <tr><td>
                digitalzoom</td><td>
                <asp:TextBox ID="digitalzoomTextBox" runat="server" 
                    Text='<%# Bind("digitalzoom") %>' /></td></tr>
                <tr><td>
                weight</td><td>
                <asp:TextBox ID="weightTextBox" runat="server" Text='<%# Bind("weight") %>' /></td></tr>
                <tr><td>
                dimension</td><td>
                <asp:TextBox ID="dimensionTextBox" runat="server" 
                    Text='<%# Bind("dimension") %>' /></td></tr>
                <tr><td>
                pixel</td><td>
                <asp:TextBox ID="pixelTextBox" runat="server" Text='<%# Bind("pixel") %>' /></td></tr>
                <tr><td>
                maxreso</td><td>
                <asp:TextBox ID="maxresoTextBox" runat="server" Text='<%# Bind("maxreso") %>' /></td></tr>
                <tr><td>
                minreso</td><td>
                <asp:TextBox ID="minresoTextBox" runat="server" Text='<%# Bind("minreso") %>' /></td></tr>
                <tr><td>
                maxshutterspeed</td><td>
                <asp:TextBox ID="maxshutterspeedTextBox" runat="server" 
                    Text='<%# Bind("maxshutterspeed") %>' /></td></tr>
                <tr><td>
                minshutterspeed</td><td>
                <asp:TextBox ID="minshutterspeedTextBox" runat="server" 
                    Text='<%# Bind("minshutterspeed") %>' /></td></tr>
                <tr><td>
                shutterreleasemodes</td><td>
                <asp:TextBox ID="shutterreleasemodesTextBox" runat="server" 
                    Text='<%# Bind("shutterreleasemodes") %>' /></td></tr>
                <tr><td>
                inbuiltflash</td><td>
                <asp:TextBox ID="inbuiltflashTextBox" runat="server" 
                    Text='<%# Bind("inbuiltflash") %>' /></td></tr>
                <tr><td>
                externalflash</td><td>
                <asp:TextBox ID="externalflashTextBox" runat="server" 
                    Text='<%# Bind("externalflash") %>' /></td></tr>
                <tr><td>
                flashmodes</td><td>
                <asp:TextBox ID="flashmodesTextBox" runat="server" 
                    Text='<%# Bind("flashmodes") %>' /></td></tr>
                <tr><td>
                otherflashfeatures</td><td>
                <asp:TextBox ID="otherflashfeaturesTextBox" runat="server" 
                    Text='<%# Bind("otherflashfeatures") %>' /></td></tr>
                <tr><td>
                sensorsize</td><td>
                <asp:TextBox ID="sensorsizeTextBox" runat="server" 
                    Text='<%# Bind("sensorsize") %>' /></td></tr>
                <tr><td>
                sensortype</td><td>
                <asp:TextBox ID="sensortypeTextBox" runat="server" 
                    Text='<%# Bind("sensortype") %>' /></td></tr>
                <tr><td>
                sensorformat</td><td>
                <asp:TextBox ID="sensorformatTextBox" runat="server" 
                    Text='<%# Bind("sensorformat") %>' /></td></tr>
                <tr><td>
                monitorsize</td><td>
                <asp:TextBox ID="monitorsizeTextBox" runat="server" 
                    Text='<%# Bind("monitorsize") %>' /></td></tr>
                <tr><td>
                monitortype</td><td>
                <asp:TextBox ID="monitortypeTextBox" runat="server" 
                    Text='<%# Bind("monitortype") %>' /></td></tr>
                <tr><td>
                monitorreso</td><td>
                <asp:TextBox ID="monitorresoTextBox" runat="server" 
                    Text='<%# Bind("monitorreso") %>' /></td></tr>
                <tr><td>
                microphone</td><td>
                <asp:TextBox ID="microphoneTextBox" runat="server" 
                    Text='<%# Bind("microphone") %>' /></td></tr>
                <tr><td>
                usbcable</td><td>
                <asp:TextBox ID="usbcableTextBox" runat="server" 
                    Text='<%# Bind("usbcable") %>' /></td></tr>
                <tr><td>
                pictbridge</td><td>
                <asp:TextBox ID="pictbridgeTextBox" runat="server" 
                    Text='<%# Bind("pictbridge") %>' /></td></tr>
                <tr><td>
                accessoryshoe</td><td>
                <asp:TextBox ID="accessoryshoeTextBox" runat="server" 
                    Text='<%# Bind("accessoryshoe") %>' /></td></tr>
                <tr><td>
                audiovideointerface</td><td>
                <asp:TextBox ID="audiovideointerfaceTextBox" runat="server" 
                    Text='<%# Bind("audiovideointerface") %>' /></td></tr>
                <tr><td>
                tripodsocket</td><td>
                <asp:TextBox ID="tripodsocketTextBox" runat="server" 
                    Text='<%# Bind("tripodsocket") %>' /></td></tr>
                <tr><td>
                imagesizing</td><td>
                <asp:TextBox ID="imagesizingTextBox" runat="server" 
                    Text='<%# Bind("imagesizing") %>' /></td></tr>
                <tr><td>
                imageformat</td><td>
                <asp:TextBox ID="imageformatTextBox" runat="server" 
                    Text='<%# Bind("imageformat") %>' /></td></tr>
                <tr><td>
                facedetection</td><td>
                <asp:TextBox ID="facedetectionTextBox" runat="server" 
                    Text='<%# Bind("facedetection") %>' /></td></tr>
                <tr><td>
                videoformat</td><td>
                <asp:TextBox ID="videoformatTextBox" runat="server" 
                    Text='<%# Bind("videoformat") %>' /></td></tr>
                <tr><td>
                powersupply</td><td>
                <asp:TextBox ID="powersupplyTextBox" runat="server" 
                    Text='<%# Bind("powersupply") %>' /></td></tr>
                <tr><td>
                batterytype</td><td>
                <asp:TextBox ID="batterytypeTextBox" runat="server" 
                    Text='<%# Bind("batterytype") %>' /></td></tr>
                <tr><td>
                aperturerange</td><td>
                <asp:TextBox ID="aperturerangeTextBox" runat="server" 
                    Text='<%# Bind("aperturerange") %>' /></td></tr>
                <tr><td>
                redeyereduction</td><td>
                <asp:TextBox ID="redeyereductionTextBox" runat="server" 
                    Text='<%# Bind("redeyereduction") %>' /></td></tr>
                <tr><td>
                dustreduction</td><td>
                <asp:TextBox ID="dustreductionTextBox" runat="server" 
                    Text='<%# Bind("dustreduction") %>' /></td></tr>
                <tr><td>
                temperature</td><td>
                <asp:TextBox ID="temperatureTextBox" runat="server" 
                    Text='<%# Bind("temperature") %>' /></td></tr>
                <tr><td>
                syncterminal</td><td>
                <asp:TextBox ID="syncterminalTextBox" runat="server" 
                    Text='<%# Bind("syncterminal") %>' /></td></tr>
                <tr><td>
                deletefunction</td><td>
                <asp:TextBox ID="deletefunctionTextBox" runat="server" 
                    Text='<%# Bind("deletefunction") %>' /></td></tr>
                <tr><td>
                continuousshot</td><td>
                <asp:TextBox ID="continuousshotTextBox" runat="server" 
                    Text='<%# Bind("continuousshot") %>' /></td></tr>
                <tr><td>
                whitebal</td><td>
                <asp:TextBox ID="whitebalTextBox" runat="server" 
                    Text='<%# Bind("whitebal") %>' /></td></tr>
                <tr><td>
                selftimer</td><td>
                <asp:TextBox ID="selftimerTextBox" runat="server" 
                    Text='<%# Bind("selftimer") %>' /></td></tr>
                <tr><td>
                hdmi</td><td>
                <asp:TextBox ID="hdmiTextBox" runat="server" Text='<%# Bind("hdmi") %>' /></td></tr>
                <tr><td>
                meteringmodes</td><td>
                <asp:TextBox ID="meteringmodesTextBox" runat="server" 
                    Text='<%# Bind("meteringmodes") %>' /></td></tr>
                <tr><td>
                supportedlanguages</td><td>
                <asp:TextBox ID="supportedlanguagesTextBox" runat="server" 
                    Text='<%# Bind("supportedlanguages") %>' /></td></tr>
                <tr><td>
                additionalfeatures</td><td>
                <asp:TextBox ID="additionalfeaturesTextBox" runat="server" 
                    Text='<%# Bind("additionalfeatures") %>' /></td></tr>
                <tr><td>
                price</td><td>
                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' /></td></tr>
                <tr><td>
                youtube</td><td>
                <asp:TextBox ID="youtubeTextBox" runat="server" Text='<%# Bind("youtube") %>' /></td></tr>
                <tr><td>
                source</td><td>
                <asp:TextBox ID="sourceTextBox" runat="server" Text='<%# Bind("source") %>' /></td></tr>
                <tr><td>
                verified</td><td>
                <asp:TextBox ID="verifiedTextBox" runat="server" 
                    Text='<%# Bind("verified") %>' /></td></tr>
                    </table>
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            
            <ItemTemplate>
            <table width="100%" class="tableitem">
            <tr><td>
                regno</td><td>
                <asp:Label ID="regnoLabel" runat="server" Text='<%# Eval("regno") %>' /></td></tr>
                <tr><td>
                brand</td><td>
                <asp:Label ID="brandLabel" runat="server" Text='<%# Bind("brand") %>' /></td></tr>
                <tr><td>
                model</td><td>
                <asp:Label ID="modelLabel" runat="server" Text='<%# Bind("model") %>' /></td></tr>
                <tr><td>
                title</td><td>
                <asp:Label ID="titleLabel" runat="server" Text='<%# Bind("title") %>' /></td></tr>
                <tr><td>
                type</td><td>
                <asp:Label ID="typeLabel" runat="server" Text='<%# Bind("type") %>' /></td></tr>
                <tr><td>
                color</td><td>
                <asp:Label ID="colorLabel" runat="server" Text='<%# Bind("color") %>' /></td></tr>
                <tr><td>
                autofocus</td><td>
                <asp:Label ID="autofocusLabel" runat="server" Text='<%# Bind("autofocus") %>' /></td></tr>
                <tr><td>
                focusmode</td><td>
                <asp:Label ID="focusmodeLabel" runat="server" Text='<%# Bind("focusmode") %>' /></td></tr>
                <tr><td>
                otherlensfeatures</td><td>
                <asp:Label ID="otherlensfeaturesLabel" runat="server" 
                    Text='<%# Bind("otherlensfeatures") %>' /></td></tr>
                <tr><td>
                focallength</td><td>
                <asp:Label ID="focallengthLabel" runat="server" 
                    Text='<%# Bind("focallength") %>' /></td></tr>
                <tr><td>
                manualfocus</td><td>
                <asp:Label ID="manualfocusLabel" runat="server" 
                    Text='<%# Bind("manualfocus") %>' /></td></tr>
                <tr><td>
                focuspoints</td><td>
                <asp:Label ID="focuspointsLabel" runat="server" 
                    Text='<%# Bind("focuspoints") %>' /></td></tr>
                <tr><td>
                focusrange</td><td>
                <asp:Label ID="focusrangeLabel" runat="server" 
                    Text='<%# Bind("focusrange") %>' /></td></tr>
                <tr><td>
                lensservo</td><td>
                <asp:Label ID="lensservoLabel" runat="server" Text='<%# Bind("lensservo") %>' /></td></tr>
                <tr><td>
                focus</td><td>
                <asp:Label ID="focusLabel" runat="server" Text='<%# Bind("focus") %>' /></td></tr>
                <tr><td>
                opticalzoom</td><td>
                <asp:Label ID="opticalzoomLabel" runat="server" 
                    Text='<%# Bind("opticalzoom") %>' /></td></tr>
                <tr><td>
                digitalzoom</td><td>
                <asp:Label ID="digitalzoomLabel" runat="server" 
                    Text='<%# Bind("digitalzoom") %>' /></td></tr>
                <tr><td>
                weight</td><td>
                <asp:Label ID="weightLabel" runat="server" Text='<%# Bind("weight") %>' /></td></tr>
                <tr><td>
                dimension</td><td>
                <asp:Label ID="dimensionLabel" runat="server" Text='<%# Bind("dimension") %>' /></td></tr>
                <tr><td>
                pixel</td><td>
                <asp:Label ID="pixelLabel" runat="server" Text='<%# Bind("pixel") %>' /></td></tr>
                <tr><td>
                maxreso</td><td>
                <asp:Label ID="maxresoLabel" runat="server" Text='<%# Bind("maxreso") %>' /></td></tr>
                <tr><td>
                minreso</td><td>
                <asp:Label ID="minresoLabel" runat="server" Text='<%# Bind("minreso") %>' /></td></tr>
                <tr><td>
                maxshutterspeed</td><td>
                <asp:Label ID="maxshutterspeedLabel" runat="server" 
                    Text='<%# Bind("maxshutterspeed") %>' /></td></tr>
                <tr><td>
                minshutterspeed</td><td>
                <asp:Label ID="minshutterspeedLabel" runat="server" 
                    Text='<%# Bind("minshutterspeed") %>' /></td></tr>
                <tr><td>
                shutterreleasemodes</td><td>
                <asp:Label ID="shutterreleasemodesLabel" runat="server" 
                    Text='<%# Bind("shutterreleasemodes") %>' /></td></tr>
                <tr><td>
                inbuiltflash</td><td>
                <asp:Label ID="inbuiltflashLabel" runat="server" 
                    Text='<%# Bind("inbuiltflash") %>' /></td></tr>
                <tr><td>
                externalflash</td><td>
                <asp:Label ID="externalflashLabel" runat="server" 
                    Text='<%# Bind("externalflash") %>' /></td></tr>
                <tr><td>
                flashmodes</td><td>
                <asp:Label ID="flashmodesLabel" runat="server" 
                    Text='<%# Bind("flashmodes") %>' /></td></tr>
                <tr><td>
                otherflashfeatures</td><td>
                <asp:Label ID="otherflashfeaturesLabel" runat="server" 
                    Text='<%# Bind("otherflashfeatures") %>' /></td></tr>
                <tr><td>
                sensorsize</td><td>
                <asp:Label ID="sensorsizeLabel" runat="server" 
                    Text='<%# Bind("sensorsize") %>' /></td></tr>
                <tr><td>
                sensortype</td><td>
                <asp:Label ID="sensortypeLabel" runat="server" 
                    Text='<%# Bind("sensortype") %>' /></td></tr>
                <tr><td>
                sensorformat</td><td>
                <asp:Label ID="sensorformatLabel" runat="server" 
                    Text='<%# Bind("sensorformat") %>' /></td></tr>
                <tr><td>
                monitorsize</td><td>
                <asp:Label ID="monitorsizeLabel" runat="server" 
                    Text='<%# Bind("monitorsize") %>' /></td></tr>
                <tr><td>
                monitortype</td><td>
                <asp:Label ID="monitortypeLabel" runat="server" 
                    Text='<%# Bind("monitortype") %>' /></td></tr>
                <tr><td>
                monitorreso</td><td>
                <asp:Label ID="monitorresoLabel" runat="server" 
                    Text='<%# Bind("monitorreso") %>' /></td></tr>
                <tr><td>
                microphone:
                <asp:Label ID="microphoneLabel" runat="server" 
                    Text='<%# Bind("microphone") %>' /></td></tr>
                <tr><td>
                usbcable</td><td>
                <asp:Label ID="usbcableLabel" runat="server" Text='<%# Bind("usbcable") %>' /></td></tr>
                <tr><td>
                pictbridge</td><td>
                <asp:Label ID="pictbridgeLabel" runat="server" 
                    Text='<%# Bind("pictbridge") %>' /></td></tr>
                <tr><td>
                accessoryshoe</td><td>
                <asp:Label ID="accessoryshoeLabel" runat="server" 
                    Text='<%# Bind("accessoryshoe") %>' /></td></tr>
                <tr><td>
                audiovideointerface</td><td>
                <asp:Label ID="audiovideointerfaceLabel" runat="server" 
                    Text='<%# Bind("audiovideointerface") %>' /></td></tr>
                <tr><td>
                tripodsocket</td><td>
                <asp:Label ID="tripodsocketLabel" runat="server" 
                    Text='<%# Bind("tripodsocket") %>' /></td></tr>
                <tr><td>
                imagesizing</td><td>
                <asp:Label ID="imagesizingLabel" runat="server" 
                    Text='<%# Bind("imagesizing") %>' /></td></tr>
                <tr><td>
                imageformat</td><td>
                <asp:Label ID="imageformatLabel" runat="server" 
                    Text='<%# Bind("imageformat") %>' /></td></tr>
                <tr><td>
                facedetection</td><td>
                <asp:Label ID="facedetectionLabel" runat="server" 
                    Text='<%# Bind("facedetection") %>' /></td></tr>
                <tr><td>
                videoformat</td><td>
                <asp:Label ID="videoformatLabel" runat="server" 
                    Text='<%# Bind("videoformat") %>' /></td></tr>
                <tr><td>
                powersupply</td><td>
                <asp:Label ID="powersupplyLabel" runat="server" 
                    Text='<%# Bind("powersupply") %>' /></td></tr>
                <tr><td>
                batterytype</td><td>
                <asp:Label ID="batterytypeLabel" runat="server" 
                    Text='<%# Bind("batterytype") %>' /></td></tr>
                <tr><td>
                aperturerange</td><td>
                <asp:Label ID="aperturerangeLabel" runat="server" 
                    Text='<%# Bind("aperturerange") %>' /></td></tr>
                <tr><td>
                redeyereduction</td><td>
                <asp:Label ID="redeyereductionLabel" runat="server" 
                    Text='<%# Bind("redeyereduction") %>' /></td></tr>
                <tr><td>
                dustreduction</td><td>
                <asp:Label ID="dustreductionLabel" runat="server" 
                    Text='<%# Bind("dustreduction") %>' /></td></tr>
                <tr><td>
                temperature</td><td>
                <asp:Label ID="temperatureLabel" runat="server" 
                    Text='<%# Bind("temperature") %>' /></td></tr>
                <tr><td>
                syncterminal</td><td>
                <asp:Label ID="syncterminalLabel" runat="server" 
                    Text='<%# Bind("syncterminal") %>' /></td></tr>
                <tr><td>
                deletefunction</td><td>
                <asp:Label ID="deletefunctionLabel" runat="server" 
                    Text='<%# Bind("deletefunction") %>' /></td></tr>
                <tr><td>
                continuousshot</td><td>
                <asp:Label ID="continuousshotLabel" runat="server" 
                    Text='<%# Bind("continuousshot") %>' /></td></tr>
                <tr><td>
                whitebal</td><td>
                <asp:Label ID="whitebalLabel" runat="server" Text='<%# Bind("whitebal") %>' /></td></tr>
                <tr><td>
                selftimer</td><td>
                <asp:Label ID="selftimerLabel" runat="server" Text='<%# Bind("selftimer") %>' /></td></tr>
                <tr><td>
                hdmi</td><td>
                <asp:Label ID="hdmiLabel" runat="server" Text='<%# Bind("hdmi") %>' /></td></tr>
                <tr><td>
                meteringmodes</td><td>
                <asp:Label ID="meteringmodesLabel" runat="server" 
                    Text='<%# Bind("meteringmodes") %>' /></td></tr>
                <tr><td>
                supportedlanguages</td><td>
                <asp:Label ID="supportedlanguagesLabel" runat="server" 
                    Text='<%# Bind("supportedlanguages") %>' /></td></tr>
                <tr><td>
                additionalfeatures</td><td>
                <asp:Label ID="additionalfeaturesLabel" runat="server" 
                    Text='<%# Bind("additionalfeatures") %>' /></td></tr>
                <tr><td>
                price</td><td>
                <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' /></td></tr>
                <tr><td>
                youtube</td><td>
                <asp:Label ID="youtubeLabel" runat="server" Text='<%# Bind("youtube") %>' /></td></tr>
                <tr><td>
                source</td><td>
                <asp:Label ID="sourceLabel" runat="server" Text='<%# Bind("source") %>' /></td></tr>
                <tr><td>
                verified</td><td>
                <asp:Label ID="verifiedLabel" runat="server" Text='<%# Bind("verified") %>' /></td></tr>
                </table>
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="Delete" />
            </ItemTemplate>
        </asp:FormView>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [camera] WHERE [regno] = @regno" 
            SelectCommand="SELECT * FROM [camera] WHERE ([regno] = @regno)" 
            UpdateCommand="UPDATE [camera] SET [brand] = @brand, [model] = @model, [title] = @title, [type] = @type, [color] = @color, [autofocus] = @autofocus, [focusmode] = @focusmode, [otherlensfeatures] = @otherlensfeatures, [focallength] = @focallength, [manualfocus] = @manualfocus, [focuspoints] = @focuspoints, [focusrange] = @focusrange, [lensservo] = @lensservo, [focus] = @focus, [opticalzoom] = @opticalzoom, [digitalzoom] = @digitalzoom, [weight] = @weight, [dimension] = @dimension, [pixel] = @pixel, [maxreso] = @maxreso, [minreso] = @minreso, [maxshutterspeed] = @maxshutterspeed, [minshutterspeed] = @minshutterspeed, [shutterreleasemodes] = @shutterreleasemodes, [inbuiltflash] = @inbuiltflash, [externalflash] = @externalflash, [flashmodes] = @flashmodes, [otherflashfeatures] = @otherflashfeatures, [sensorsize] = @sensorsize, [sensortype] = @sensortype, [sensorformat] = @sensorformat, [monitorsize] = @monitorsize, [monitortype] = @monitortype, [monitorreso] = @monitorreso, [microphone] = @microphone, [usbcable] = @usbcable, [pictbridge] = @pictbridge, [accessoryshoe] = @accessoryshoe, [audiovideointerface] = @audiovideointerface, [tripodsocket] = @tripodsocket, [imagesizing] = @imagesizing, [imageformat] = @imageformat, [facedetection] = @facedetection, [videoformat] = @videoformat, [powersupply] = @powersupply, [batterytype] = @batterytype, [aperturerange] = @aperturerange, [redeyereduction] = @redeyereduction, [dustreduction] = @dustreduction, [temperature] = @temperature, [syncterminal] = @syncterminal, [deletefunction] = @deletefunction, [continuousshot] = @continuousshot, [whitebal] = @whitebal, [selftimer] = @selftimer, [hdmi] = @hdmi, [meteringmodes] = @meteringmodes, [supportedlanguages] = @supportedlanguages, [additionalfeatures] = @additionalfeatures, [price] = @price, [youtube] = @youtube, [source] = @source, [verified] = @verified WHERE [regno] = @regno">
            <DeleteParameters>
                <asp:Parameter Name="regno" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="regno" Type="String" />
                <asp:Parameter Name="brand" Type="String" />
                <asp:Parameter Name="model" Type="String" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="type" Type="String" />
                <asp:Parameter Name="pic" Type="String" />
                <asp:Parameter Name="color" Type="String" />
                <asp:Parameter Name="autofocus" Type="String" />
                <asp:Parameter Name="focusmode" Type="String" />
                <asp:Parameter Name="otherlensfeatures" Type="String" />
                <asp:Parameter Name="focallength" Type="String" />
                <asp:Parameter Name="manualfocus" Type="String" />
                <asp:Parameter Name="focuspoints" Type="String" />
                <asp:Parameter Name="focusrange" Type="String" />
                <asp:Parameter Name="lensservo" Type="String" />
                <asp:Parameter Name="focus" Type="String" />
                <asp:Parameter Name="opticalzoom" Type="String" />
                <asp:Parameter Name="digitalzoom" Type="String" />
                <asp:Parameter Name="weight" Type="String" />
                <asp:Parameter Name="dimension" Type="String" />
                <asp:Parameter Name="pixel" Type="Int32" />
                <asp:Parameter Name="maxreso" Type="String" />
                <asp:Parameter Name="minreso" Type="String" />
                <asp:Parameter Name="maxshutterspeed" Type="String" />
                <asp:Parameter Name="minshutterspeed" Type="String" />
                <asp:Parameter Name="shutterreleasemodes" Type="String" />
                <asp:Parameter Name="inbuiltflash" Type="String" />
                <asp:Parameter Name="externalflash" Type="String" />
                <asp:Parameter Name="flashmodes" Type="String" />
                <asp:Parameter Name="otherflashfeatures" Type="String" />
                <asp:Parameter Name="sensorsize" Type="String" />
                <asp:Parameter Name="sensortype" Type="String" />
                <asp:Parameter Name="sensorformat" Type="String" />
                <asp:Parameter Name="monitorsize" Type="String" />
                <asp:Parameter Name="monitortype" Type="String" />
                <asp:Parameter Name="monitorreso" Type="String" />
                <asp:Parameter Name="microphone" Type="String" />
                <asp:Parameter Name="usbcable" Type="String" />
                <asp:Parameter Name="pictbridge" Type="String" />
                <asp:Parameter Name="accessoryshoe" Type="String" />
                <asp:Parameter Name="audiovideointerface" Type="String" />
                <asp:Parameter Name="tripodsocket" Type="String" />
                <asp:Parameter Name="imagesizing" Type="String" />
                <asp:Parameter Name="imageformat" Type="String" />
                <asp:Parameter Name="facedetection" Type="String" />
                <asp:Parameter Name="videoformat" Type="String" />
                <asp:Parameter Name="powersupply" Type="String" />
                <asp:Parameter Name="batterytype" Type="String" />
                <asp:Parameter Name="aperturerange" Type="String" />
                <asp:Parameter Name="redeyereduction" Type="String" />
                <asp:Parameter Name="dustreduction" Type="String" />
                <asp:Parameter Name="temperature" Type="String" />
                <asp:Parameter Name="syncterminal" Type="String" />
                <asp:Parameter Name="deletefunction" Type="String" />
                <asp:Parameter Name="continuousshot" Type="String" />
                <asp:Parameter Name="whitebal" Type="String" />
                <asp:Parameter Name="selftimer" Type="String" />
                <asp:Parameter Name="hdmi" Type="String" />
                <asp:Parameter Name="meteringmodes" Type="String" />
                <asp:Parameter Name="supportedlanguages" Type="String" />
                <asp:Parameter Name="additionalfeatures" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="youtube" Type="String" />
                <asp:Parameter Name="source" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="regno" QueryStringField="strReg" 
                    Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="brand" Type="String" />
                <asp:Parameter Name="model" Type="String" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="type" Type="String" />
                <asp:Parameter Name="pic" Type="String" />
                <asp:Parameter Name="color" Type="String" />
                <asp:Parameter Name="autofocus" Type="String" />
                <asp:Parameter Name="focusmode" Type="String" />
                <asp:Parameter Name="otherlensfeatures" Type="String" />
                <asp:Parameter Name="focallength" Type="String" />
                <asp:Parameter Name="manualfocus" Type="String" />
                <asp:Parameter Name="focuspoints" Type="String" />
                <asp:Parameter Name="focusrange" Type="String" />
                <asp:Parameter Name="lensservo" Type="String" />
                <asp:Parameter Name="focus" Type="String" />
                <asp:Parameter Name="opticalzoom" Type="String" />
                <asp:Parameter Name="digitalzoom" Type="String" />
                <asp:Parameter Name="weight" Type="String" />
                <asp:Parameter Name="dimension" Type="String" />
                <asp:Parameter Name="pixel" Type="Int32" />
                <asp:Parameter Name="maxreso" Type="String" />
                <asp:Parameter Name="minreso" Type="String" />
                <asp:Parameter Name="maxshutterspeed" Type="String" />
                <asp:Parameter Name="minshutterspeed" Type="String" />
                <asp:Parameter Name="shutterreleasemodes" Type="String" />
                <asp:Parameter Name="inbuiltflash" Type="String" />
                <asp:Parameter Name="externalflash" Type="String" />
                <asp:Parameter Name="flashmodes" Type="String" />
                <asp:Parameter Name="otherflashfeatures" Type="String" />
                <asp:Parameter Name="sensorsize" Type="String" />
                <asp:Parameter Name="sensortype" Type="String" />
                <asp:Parameter Name="sensorformat" Type="String" />
                <asp:Parameter Name="monitorsize" Type="String" />
                <asp:Parameter Name="monitortype" Type="String" />
                <asp:Parameter Name="monitorreso" Type="String" />
                <asp:Parameter Name="microphone" Type="String" />
                <asp:Parameter Name="usbcable" Type="String" />
                <asp:Parameter Name="pictbridge" Type="String" />
                <asp:Parameter Name="accessoryshoe" Type="String" />
                <asp:Parameter Name="audiovideointerface" Type="String" />
                <asp:Parameter Name="tripodsocket" Type="String" />
                <asp:Parameter Name="imagesizing" Type="String" />
                <asp:Parameter Name="imageformat" Type="String" />
                <asp:Parameter Name="facedetection" Type="String" />
                <asp:Parameter Name="videoformat" Type="String" />
                <asp:Parameter Name="powersupply" Type="String" />
                <asp:Parameter Name="batterytype" Type="String" />
                <asp:Parameter Name="aperturerange" Type="String" />
                <asp:Parameter Name="redeyereduction" Type="String" />
                <asp:Parameter Name="dustreduction" Type="String" />
                <asp:Parameter Name="temperature" Type="String" />
                <asp:Parameter Name="syncterminal" Type="String" />
                <asp:Parameter Name="deletefunction" Type="String" />
                <asp:Parameter Name="continuousshot" Type="String" />
                <asp:Parameter Name="whitebal" Type="String" />
                <asp:Parameter Name="selftimer" Type="String" />
                <asp:Parameter Name="hdmi" Type="String" />
                <asp:Parameter Name="meteringmodes" Type="String" />
                <asp:Parameter Name="supportedlanguages" Type="String" />
                <asp:Parameter Name="additionalfeatures" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="youtube" Type="String" />
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
