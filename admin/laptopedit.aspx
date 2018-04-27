<%@ Page Language="C#" AutoEventWireup="true" CodeFile="laptopedit.aspx.cs" Inherits="admin_laptopedit" %>

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
                processor</td><td>
                <asp:TextBox ID="processorTextBox" runat="server" 
                    Text='<%# Bind("processor") %>' /></td></tr>
                <tr><td>
                speed</td><td>
                <asp:TextBox ID="speedTextBox" runat="server" Text='<%# Bind("speed") %>' /></td></tr>
                <tr><td>
                cache</td><td>
                <asp:TextBox ID="cacheTextBox" runat="server" Text='<%# Bind("cache") %>' /></td></tr>
                <tr><td>
                ram</td><td>
                <asp:TextBox ID="ramTextBox" runat="server" Text='<%# Bind("ram") %>' /></td></tr>
                <tr><td>
                type</td><td>
                <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' /></td></tr>
                <tr><td>
                ramspeed</td><td>
                <asp:TextBox ID="ramspeedTextBox" runat="server" 
                    Text='<%# Bind("ramspeed") %>' /></td></tr>
                <tr><td>
                inbuildhdd</td><td>
                <asp:TextBox ID="inbuildhddTextBox" runat="server" 
                    Text='<%# Bind("inbuildhdd") %>' /></td></tr>
                <tr><td>
                hdspeed</td><td>
                <asp:TextBox ID="hdspeedTextBox" runat="server" Text='<%# Bind("hdspeed") %>' /></td></tr>
                <tr><td>
                screensize</td><td>
                <asp:TextBox ID="screensizeTextBox" runat="server" 
                    Text='<%# Bind("screensize") %>' /></td></tr>
                <tr><td>
                resolution</td><td>
                <asp:TextBox ID="resolutionTextBox" runat="server" 
                    Text='<%# Bind("resolution") %>' /></td></tr>
                <tr><td>
                paneltype</td><td>
                <asp:TextBox ID="paneltypeTextBox" runat="server" 
                    Text='<%# Bind("paneltype") %>' /></td></tr>
                <tr><td>
                gpumodel</td><td>
                <asp:TextBox ID="gpumodelTextBox" runat="server" 
                    Text='<%# Bind("gpumodel") %>' /></td></tr>
                <tr><td>
                gpumemory</td><td>
                <asp:TextBox ID="gpumemoryTextBox" runat="server" 
                    Text='<%# Bind("gpumemory") %>' /></td></tr>
                <tr><td>
                hdmiport</td><td>
                <asp:TextBox ID="hdmiportTextBox" runat="server" 
                    Text='<%# Bind("hdmiport") %>' /></td></tr>
                <tr><td>
                ethernetport</td><td>
                <asp:TextBox ID="ethernetportTextBox" runat="server" 
                    Text='<%# Bind("ethernetport") %>' /></td></tr>
                <tr><td>
                ethernettype</td><td>
                <asp:TextBox ID="ethernettypeTextBox" runat="server" 
                    Text='<%# Bind("ethernettype") %>' /></td></tr>
                <tr><td>
                wifitype</td><td>
                <asp:TextBox ID="wifitypeTextBox" runat="server" 
                    Text='<%# Bind("wifitype") %>' /></td></tr>
                <tr><td>
                usb2</td><td>
                <asp:TextBox ID="usb2TextBox" runat="server" Text='<%# Bind("usb2") %>' /></td></tr>
                <tr><td>
                usb3</td><td>
                <asp:TextBox ID="usb3TextBox" runat="server" Text='<%# Bind("usb3") %>' /></td></tr>
                <tr><td>
                bluetooth</td><td>
                <asp:TextBox ID="bluetoothTextBox" runat="server" 
                    Text='<%# Bind("bluetooth") %>' /></td></tr>
                <tr><td>
                buildincam</td><td>
                <asp:TextBox ID="buildincamTextBox" runat="server" 
                    Text='<%# Bind("buildincam") %>' /></td></tr>
                <tr><td>
                microphone</td><td>
                <asp:TextBox ID="microphoneTextBox" runat="server" 
                    Text='<%# Bind("microphone") %>' /></td></tr>
                <tr><td>
                digi</td><td>
                <asp:TextBox ID="digiTextBox" runat="server" Text='<%# Bind("digi") %>' /></td></tr>
                <tr><td>
                batterytype</td><td>
                <asp:TextBox ID="batterytypeTextBox" runat="server" 
                    Text='<%# Bind("batterytype") %>' /></td></tr>
                <tr><td>
                batterycell</td><td>
                <asp:TextBox ID="batterycellTextBox" runat="server" 
                    Text='<%# Bind("batterycell") %>' /></td></tr>
                <tr><td>
                os</td><td>
                <asp:TextBox ID="osTextBox" runat="server" Text='<%# Bind("os") %>' /></td></tr>
                <tr><td>
                warranty</td><td>
                <asp:TextBox ID="warrantyTextBox" runat="server" 
                    Text='<%# Bind("warranty") %>' /></td></tr>
                <tr><td>
                otherfeatures</td><td>
                <asp:TextBox ID="otherfeaturesTextBox" runat="server" 
                    Text='<%# Bind("otherfeatures") %>' /></td></tr>
                <tr><td>
                price</td><td>
                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' /></td></tr>
                <tr><td>
                youtube</td><td>
                <asp:TextBox ID="youtubeTextBox" runat="server" Text='<%# Bind("youtube") %>' /></td></tr>
                <tr><td>
                source</td><td>
                <asp:TextBox ID="sourceTextBox" runat="server" Text='<%# Bind("source") %>' /></td></tr>
                </table>
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
                processor</td><td>
                <asp:Label ID="processorLabel" runat="server" Text='<%# Bind("processor") %>' /></td></tr>
                <tr><td>
                speed</td><td>
                <asp:Label ID="speedLabel" runat="server" Text='<%# Bind("speed") %>' /></td></tr>
                <tr><td>
                cache</td><td>
                <asp:Label ID="cacheLabel" runat="server" Text='<%# Bind("cache") %>' /></td></tr>
                <tr><td>
                ram</td><td>
                <asp:Label ID="ramLabel" runat="server" Text='<%# Bind("ram") %>' /></td></tr>
                <tr><td>
                type</td><td>
                <asp:Label ID="typeLabel" runat="server" Text='<%# Bind("type") %>' /></td></tr>
                <tr><td>
                ramspeed</td><td>
                <asp:Label ID="ramspeedLabel" runat="server" Text='<%# Bind("ramspeed") %>' /></td></tr>
                <tr><td>
                inbuildhdd</td><td>
                <asp:Label ID="inbuildhddLabel" runat="server" 
                    Text='<%# Bind("inbuildhdd") %>' /></td></tr>
                <tr><td>
                hdspeed</td><td>
                <asp:Label ID="hdspeedLabel" runat="server" Text='<%# Bind("hdspeed") %>' /></td></tr>
                <tr><td>
                screensize</td><td>
                <asp:Label ID="screensizeLabel" runat="server" 
                    Text='<%# Bind("screensize") %>' /></td></tr>
                <tr><td>
                resolution</td><td>
                <asp:Label ID="resolutionLabel" runat="server" 
                    Text='<%# Bind("resolution") %>' /></td></tr>
                <tr><td>
                paneltype</td><td>
                <asp:Label ID="paneltypeLabel" runat="server" Text='<%# Bind("paneltype") %>' /></td></tr>
                <tr><td>
                gpumodel</td><td>
                <asp:Label ID="gpumodelLabel" runat="server" Text='<%# Bind("gpumodel") %>' /></td></tr>
                <tr><td>
                gpumemory</td><td>
                <asp:Label ID="gpumemoryLabel" runat="server" Text='<%# Bind("gpumemory") %>' /></td></tr>
                <tr><td>
                hdmiport</td><td>
                <asp:Label ID="hdmiportLabel" runat="server" Text='<%# Bind("hdmiport") %>' /></td></tr>
                <tr><td>
                ethernetport</td><td>
                <asp:Label ID="ethernetportLabel" runat="server" 
                    Text='<%# Bind("ethernetport") %>' /></td></tr>
                <tr><td>
                ethernettype</td><td>
                <asp:Label ID="ethernettypeLabel" runat="server" 
                    Text='<%# Bind("ethernettype") %>' /></td></tr>
                <tr><td>
                wifitype</td><td>
                <asp:Label ID="wifitypeLabel" runat="server" Text='<%# Bind("wifitype") %>' /></td></tr>
                <tr><td>
                usb2</td><td>
                <asp:Label ID="usb2Label" runat="server" Text='<%# Bind("usb2") %>' /></td></tr>
                <tr><td>
                usb3</td><td>
                <asp:Label ID="usb3Label" runat="server" Text='<%# Bind("usb3") %>' /></td></tr>
                <tr><td>
                bluetooth</td><td>
                <asp:Label ID="bluetoothLabel" runat="server" Text='<%# Bind("bluetooth") %>' /></td></tr>
                <tr><td>
                buildincam</td><td>
                <asp:Label ID="buildincamLabel" runat="server" 
                    Text='<%# Bind("buildincam") %>' /></td></tr>
                <tr><td>
                microphone</td><td>
                <asp:Label ID="microphoneLabel" runat="server" 
                    Text='<%# Bind("microphone") %>' /></td></tr>
                <tr><td>
                digi</td><td>
                <asp:Label ID="digiLabel" runat="server" Text='<%# Bind("digi") %>' /></td></tr>
                <tr><td>
                batterytype</td><td>
                <asp:Label ID="batterytypeLabel" runat="server" 
                    Text='<%# Bind("batterytype") %>' /></td></tr>
                <tr><td>
                batterycell</td><td>
                <asp:Label ID="batterycellLabel" runat="server" 
                    Text='<%# Bind("batterycell") %>' /></td></tr>
                <tr><td>
                os</td><td>
                <asp:Label ID="osLabel" runat="server" Text='<%# Bind("os") %>' /></td></tr>
                <tr><td>
                warranty</td><td>
                <asp:Label ID="warrantyLabel" runat="server" Text='<%# Bind("warranty") %>' /></td></tr>
                <tr><td>
                otherfeatures</td><td>
                <asp:Label ID="otherfeaturesLabel" runat="server" 
                    Text='<%# Bind("otherfeatures") %>' /></td></tr>
                <tr><td>
                price</td><td>
                <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' /></td></tr>
                <tr><td>
                youtube</td><td>
                <asp:Label ID="youtubeLabel" runat="server" Text='<%# Bind("youtube") %>' /></td></tr>
                <tr><td>
                source</td><td>
                <asp:Label ID="sourceLabel" runat="server" Text='<%# Bind("source") %>' /></td></tr>
                
                </table>
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="Delete" />
            </ItemTemplate>
        </asp:FormView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [laptop] WHERE [regno] = @regno" 
            SelectCommand="SELECT * FROM [laptop] WHERE ([regno] = @regno)" 
            UpdateCommand="UPDATE [laptop] SET [brand] = @brand, [model] = @model, [title] = @title, [processor] = @processor, [speed] = @speed, [cache] = @cache, [ram] = @ram, [type] = @type, [ramspeed] = @ramspeed, [inbuildhdd] = @inbuildhdd, [hdspeed] = @hdspeed, [screensize] = @screensize, [resolution] = @resolution, [paneltype] = @paneltype, [gpumodel] = @gpumodel, [gpumemory] = @gpumemory, [hdmiport] = @hdmiport, [ethernetport] = @ethernetport, [ethernettype] = @ethernettype, [wifitype] = @wifitype, [usb2] = @usb2, [usb3] = @usb3, [bluetooth] = @bluetooth, [buildincam] = @buildincam, [microphone] = @microphone, [digi] = @digi, [batterytype] = @batterytype, [batterycell] = @batterycell, [os] = @os, [warranty] = @warranty, [otherfeatures] = @otherfeatures, [price] = @price, [youtube] = @youtube, [source] = @source WHERE [regno] = @regno">
            <DeleteParameters>
                <asp:Parameter Name="regno" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="regno" Type="String" />
                <asp:Parameter Name="brand" Type="String" />
                <asp:Parameter Name="model" Type="String" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="pic" Type="String" />
                <asp:Parameter Name="processor" Type="String" />
                <asp:Parameter Name="speed" Type="String" />
                <asp:Parameter Name="cache" Type="String" />
                <asp:Parameter Name="ram" Type="String" />
                <asp:Parameter Name="type" Type="String" />
                <asp:Parameter Name="ramspeed" Type="String" />
                <asp:Parameter Name="inbuildhdd" Type="String" />
                <asp:Parameter Name="hdspeed" Type="String" />
                <asp:Parameter Name="screensize" Type="String" />
                <asp:Parameter Name="resolution" Type="String" />
                <asp:Parameter Name="paneltype" Type="String" />
                <asp:Parameter Name="gpumodel" Type="String" />
                <asp:Parameter Name="gpumemory" Type="String" />
                <asp:Parameter Name="hdmiport" Type="String" />
                <asp:Parameter Name="ethernetport" Type="String" />
                <asp:Parameter Name="ethernettype" Type="String" />
                <asp:Parameter Name="wifitype" Type="String" />
                <asp:Parameter Name="usb2" Type="String" />
                <asp:Parameter Name="usb3" Type="String" />
                <asp:Parameter Name="bluetooth" Type="String" />
                <asp:Parameter Name="buildincam" Type="String" />
                <asp:Parameter Name="microphone" Type="String" />
                <asp:Parameter Name="digi" Type="String" />
                <asp:Parameter Name="batterytype" Type="String" />
                <asp:Parameter Name="batterycell" Type="String" />
                <asp:Parameter Name="os" Type="String" />
                <asp:Parameter Name="warranty" Type="String" />
                <asp:Parameter Name="otherfeatures" Type="String" />
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
                <asp:Parameter Name="pic" Type="String" />
                <asp:Parameter Name="processor" Type="String" />
                <asp:Parameter Name="speed" Type="String" />
                <asp:Parameter Name="cache" Type="String" />
                <asp:Parameter Name="ram" Type="String" />
                <asp:Parameter Name="type" Type="String" />
                <asp:Parameter Name="ramspeed" Type="String" />
                <asp:Parameter Name="inbuildhdd" Type="String" />
                <asp:Parameter Name="hdspeed" Type="String" />
                <asp:Parameter Name="screensize" Type="String" />
                <asp:Parameter Name="resolution" Type="String" />
                <asp:Parameter Name="paneltype" Type="String" />
                <asp:Parameter Name="gpumodel" Type="String" />
                <asp:Parameter Name="gpumemory" Type="String" />
                <asp:Parameter Name="hdmiport" Type="String" />
                <asp:Parameter Name="ethernetport" Type="String" />
                <asp:Parameter Name="ethernettype" Type="String" />
                <asp:Parameter Name="wifitype" Type="String" />
                <asp:Parameter Name="usb2" Type="String" />
                <asp:Parameter Name="usb3" Type="String" />
                <asp:Parameter Name="bluetooth" Type="String" />
                <asp:Parameter Name="buildincam" Type="String" />
                <asp:Parameter Name="microphone" Type="String" />
                <asp:Parameter Name="digi" Type="String" />
                <asp:Parameter Name="batterytype" Type="String" />
                <asp:Parameter Name="batterycell" Type="String" />
                <asp:Parameter Name="os" Type="String" />
                <asp:Parameter Name="warranty" Type="String" />
                <asp:Parameter Name="otherfeatures" Type="String" />
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
