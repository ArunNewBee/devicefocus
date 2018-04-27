<%@ Page Language="C#" AutoEventWireup="true" CodeFile="smartwatch.aspx.cs" Inherits="admin_smartwatch" %>

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
                    <table class="tableitem" width="100%">
                        <tr>
                            <td>
                                regno</td>
                            <td>
                                <asp:Label ID="regnoLabel1" runat="server" Text='<%# Eval("regno") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Brand</td>
                            <td>
                                <asp:TextBox ID="brandTextBox" runat="server" Text='<%# Bind("brand") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Model name</td>
                            <td>
                                <asp:TextBox ID="modelnameTextBox" runat="server" 
                                    Text='<%# Bind("modelname") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Title</td>
                            <td>
                                <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Dial shape</td>
                            <td>
                                <asp:TextBox ID="dialshapeTextBox" runat="server" 
                                    Text='<%# Bind("dialshape") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Strap color</td>
                            <td>
                                <asp:TextBox ID="strapcolorTextBox" runat="server" 
                                    Text='<%# Bind("strapcolor") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Water resistant</td>
                            <td>
                                <asp:TextBox ID="waterresistantTextBox" runat="server" 
                                    Text='<%# Bind("waterresistant") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Display size</td>
                            <td>
                                <asp:TextBox ID="displaysizeTextBox" runat="server" 
                                    Text='<%# Bind("displaysize") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Resolution</td>
                            <td>
                                <asp:TextBox ID="resolutionTextBox" runat="server" 
                                    Text='<%# Bind("resolution") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                OS</td>
                            <td>
                                <asp:TextBox ID="osTextBox" runat="server" Text='<%# Bind("os") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                OS Version</td>
                            <td>
                                <asp:TextBox ID="osversionTextBox" runat="server" 
                                    Text='<%# Bind("osversion") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Expandable Memory</td>
                            <td>
                                <asp:TextBox ID="expmemTextBox" runat="server" Text='<%# Bind("expmem") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Internal Memory</td>
                            <td>
                                <asp:TextBox ID="intmemTextBox" runat="server" 
                                    Text='<%# Bind("intmem") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Bluetooth</td>
                            <td>
                                <asp:TextBox ID="bluetoothTextBox" runat="server" 
                                    Text='<%# Bind("bluetooth") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Bluetooth version</td>
                            <td>
                                <asp:TextBox ID="bluetoothversionTextBox" runat="server" 
                                    Text='<%# Bind("bluetoothversion") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Call function</td>
                            <td>
                                <asp:TextBox ID="callfunctionTextBox" runat="server" 
                                    Text='<%# Bind("callfunction") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                GPS</td>
                            <td>
                                <asp:TextBox ID="gpsTextBox" runat="server" Text='<%# Bind("gps") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                WiFi</td>
                            <td>
                                <asp:TextBox ID="wifiTextBox" runat="server" Text='<%# Bind("wifi") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Messaging</td>
                            <td>
                                <asp:TextBox ID="messagingTextBox" runat="server" 
                                    Text='<%# Bind("messaging") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Primary camera</td>
                            <td>
                                <asp:TextBox ID="primarycamTextBox" runat="server" 
                                    Text='<%# Bind("primarycam") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Other camera</td>
                            <td>
                                <asp:TextBox ID="othercamTextBox" runat="server" 
                                    Text='<%# Bind("othercam") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Microphone</td>
                            <td>
                                <asp:TextBox ID="microphoneTextBox" runat="server" 
                                    Text='<%# Bind("microphone") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Audioformat</td>
                            <td>
                                <asp:TextBox ID="audioformatTextBox" runat="server" 
                                    Text='<%# Bind("audioformat") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Videoformat</td>
                            <td>
                                <asp:TextBox ID="videoformatTextBox" runat="server" 
                                    Text='<%# Bind("videoformat") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Speaker</td>
                            <td>
                                <asp:TextBox ID="speakerTextBox" runat="server" Text='<%# Bind("speaker") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Date time display</td>
                            <td>
                                <asp:TextBox ID="datetimedisplayTextBox" runat="server" 
                                    Text='<%# Bind("datetimedisplay") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Alarm</td>
                            <td>
                                <asp:TextBox ID="alarmTextBox" runat="server" Text='<%# Bind("alarm") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Compass</td>
                            <td>
                                <asp:TextBox ID="compassTextBox" runat="server" Text='<%# Bind("compass") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Calender</td>
                            <td>
                                <asp:TextBox ID="calenderTextBox" runat="server" 
                                    Text='<%# Bind("calender") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Altimeter</td>
                            <td>
                                <asp:TextBox ID="altimeterTextBox" runat="server" 
                                    Text='<%# Bind("altimeter") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Chronograph</td>
                            <td>
                                <asp:TextBox ID="chronographTextBox" runat="server" 
                                    Text='<%# Bind("chronograph") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                sensors</td>
                            <td>
                                <asp:TextBox ID="sensorsTextBox" runat="server" Text='<%# Bind("sensors") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Other features</td>
                            <td>
                                <asp:TextBox ID="otherfeaturesTextBox" runat="server" 
                                    Text='<%# Bind("otherfeatures") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Items inside</td>
                            <td>
                                <asp:TextBox ID="itemsinsideTextBox" runat="server" 
                                    Text='<%# Bind("itemsinside") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Compatible OS</td>
                            <td>
                                <asp:TextBox ID="composTextBox" runat="server" Text='<%# Bind("compos") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Compatible Device</td>
                            <td>
                                <asp:TextBox ID="compdeviceTextBox" runat="server" 
                                    Text='<%# Bind("compdevice") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Price</td>
                            <td>
                                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Youtube link</td>
                            <td>
                                <asp:TextBox ID="youtubelinkTextBox" runat="server" 
                                    Text='<%# Bind("youtubelink") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Source</td>
                            <td>
                                <asp:TextBox ID="sourceTextBox" runat="server" Text='<%# Bind("source") %>' />
                            </td>
                        </tr>
                    </table>
                    
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
&nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" 
                    CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            
            <ItemTemplate>
            <table class="tableitem" width="100%">
                        <tr>
                            <td>
                                regno</td>
                            <td>
                                <asp:Label ID="regnoLabel1" runat="server" Text='<%# Eval("regno") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Brand</td>
                            <td>
                                <asp:Label ID="brandTextBox" runat="server" Text='<%# Bind("brand") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Model name</td>
                            <td>
                                <asp:Label ID="modelnameTextBox" runat="server" 
                                    Text='<%# Bind("modelname") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Title</td>
                            <td>
                                <asp:Label ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Dial shape</td>
                            <td>
                                <asp:Label ID="dialshapeTextBox" runat="server" 
                                    Text='<%# Bind("dialshape") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Strap color</td>
                            <td>
                                <asp:Label ID="strapcolorTextBox" runat="server" 
                                    Text='<%# Bind("strapcolor") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Water resistant</td>
                            <td>
                                <asp:Label ID="waterresistantTextBox" runat="server" 
                                    Text='<%# Bind("waterresistant") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Display size</td>
                            <td>
                                <asp:Label ID="displaysizeTextBox" runat="server" 
                                    Text='<%# Bind("displaysize") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Resolution</td>
                            <td>
                                <asp:Label ID="resolutionTextBox" runat="server" 
                                    Text='<%# Bind("resolution") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                OS</td>
                            <td>
                                <asp:Label ID="osTextBox" runat="server" Text='<%# Bind("os") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                OS Version</td>
                            <td>
                                <asp:Label ID="osversionTextBox" runat="server" 
                                    Text='<%# Bind("osversion") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Expandable Memory</td>
                            <td>
                                <asp:Label ID="expmemTextBox" runat="server" Text='<%# Bind("expmem") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Internal Memory</td>
                            <td>
                                <asp:Label ID="intmemTextBox" runat="server" 
                                    Text='<%# Bind("intmem") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Bluetooth</td>
                            <td>
                                <asp:Label ID="bluetoothTextBox" runat="server" 
                                    Text='<%# Bind("bluetooth") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Bluetooth version</td>
                            <td>
                                <asp:Label ID="bluetoothversionTextBox" runat="server" 
                                    Text='<%# Bind("bluetoothversion") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Call function</td>
                            <td>
                                <asp:Label ID="callfunctionTextBox" runat="server" 
                                    Text='<%# Bind("callfunction") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                GPS</td>
                            <td>
                                <asp:Label ID="gpsTextBox" runat="server" Text='<%# Bind("gps") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                WiFi</td>
                            <td>
                                <asp:Label ID="wifiTextBox" runat="server" Text='<%# Bind("wifi") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Messaging</td>
                            <td>
                                <asp:Label ID="messagingTextBox" runat="server" 
                                    Text='<%# Bind("messaging") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Primary camera</td>
                            <td>
                                <asp:Label ID="primarycamTextBox" runat="server" 
                                    Text='<%# Bind("primarycam") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Other camera</td>
                            <td>
                                <asp:Label ID="othercamTextBox" runat="server" 
                                    Text='<%# Bind("othercam") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Microphone</td>
                            <td>
                                <asp:Label ID="microphoneTextBox" runat="server" 
                                    Text='<%# Bind("microphone") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Audioformat</td>
                            <td>
                                <asp:Label ID="audioformatTextBox" runat="server" 
                                    Text='<%# Bind("audioformat") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Videoformat</td>
                            <td>
                                <asp:Label ID="videoformatTextBox" runat="server" 
                                    Text='<%# Bind("videoformat") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Speaker</td>
                            <td>
                                <asp:Label ID="speakerTextBox" runat="server" Text='<%# Bind("speaker") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Date time display</td>
                            <td>
                                <asp:Label ID="datetimedisplayTextBox" runat="server" 
                                    Text='<%# Bind("datetimedisplay") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Alarm</td>
                            <td>
                                <asp:Label ID="alarmTextBox" runat="server" Text='<%# Bind("alarm") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Compass</td>
                            <td>
                                <asp:Label ID="compassTextBox" runat="server" Text='<%# Bind("compass") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Calender</td>
                            <td>
                                <asp:Label ID="calenderTextBox" runat="server" 
                                    Text='<%# Bind("calender") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Altimeter</td>
                            <td>
                                <asp:Label ID="altimeterTextBox" runat="server" 
                                    Text='<%# Bind("altimeter") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Chronograph</td>
                            <td>
                                <asp:Label ID="chronographTextBox" runat="server" 
                                    Text='<%# Bind("chronograph") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                sensors</td>
                            <td>
                                <asp:Label ID="sensorsTextBox" runat="server" Text='<%# Bind("sensors") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Other features</td>
                            <td>
                                <asp:Label ID="otherfeaturesTextBox" runat="server" 
                                    Text='<%# Bind("otherfeatures") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Items inside</td>
                            <td>
                                <asp:Label ID="itemsinsideTextBox" runat="server" 
                                    Text='<%# Bind("itemsinside") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Compatible OS</td>
                            <td>
                                <asp:Label ID="composTextBox" runat="server" Text='<%# Bind("compos") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Compatible Device</td>
                            <td>
                                <asp:Label ID="compdeviceTextBox" runat="server" 
                                    Text='<%# Bind("compdevice") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Price</td>
                            <td>
                                <asp:Label ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Youtube link</td>
                            <td>
                                <asp:Label ID="youtubelinkTextBox" runat="server" 
                                    Text='<%# Bind("youtubelink") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Source</td>
                            <td>
                                <asp:Label ID="sourceTextBox" runat="server" Text='<%# Bind("source") %>' />
                            </td>
                        </tr>
                    </table>
                <br />
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
            DeleteCommand="DELETE FROM [smartwatch] WHERE [regno] = @regno" 
            InsertCommand="INSERT INTO [smartwatch] ([regno], [brand], [modelname], [title], [dialshape], [strapcolor], [waterresistant], [displaysize], [resolution], [os], [osversion], [expmem], [intmem], [bluetooth], [bluetoothversion], [callfunction], [gps], [wifi], [messaging], [primarycam], [othercam], [microphone], [audioformat], [videoformat], [speaker], [datetimedisplay], [alarm], [compass], [calender], [altimeter], [chronograph], [sensors], [otherfeatures], [itemsinside], [compos], [compdevice], [price], [pic], [youtubelink], [source], [verified]) VALUES (@regno, @brand, @modelname, @title, @dialshape, @strapcolor, @waterresistant, @displaysize, @resolution, @os, @osversion, @expmem, @intmem, @bluetooth, @bluetoothversion, @callfunction, @gps, @wifi, @messaging, @primarycam, @othercam, @microphone, @audioformat, @videoformat, @speaker, @datetimedisplay, @alarm, @compass, @calender, @altimeter, @chronograph, @sensors, @otherfeatures, @itemsinside, @compos, @compdevice, @price, @pic, @youtubelink, @source, @verified)" 
            SelectCommand="SELECT * FROM [smartwatch] WHERE ([regno] = @regno)" 
            UpdateCommand="UPDATE [smartwatch] SET [brand] = @brand, [modelname] = @modelname, [title] = @title, [dialshape] = @dialshape, [strapcolor] = @strapcolor, [waterresistant] = @waterresistant, [displaysize] = @displaysize, [resolution] = @resolution, [os] = @os, [osversion] = @osversion, [expmem] = @expmem, [intmem] = @intmem, [bluetooth] = @bluetooth, [bluetoothversion] = @bluetoothversion, [callfunction] = @callfunction, [gps] = @gps, [wifi] = @wifi, [messaging] = @messaging, [primarycam] = @primarycam, [othercam] = @othercam, [microphone] = @microphone, [audioformat] = @audioformat, [videoformat] = @videoformat, [speaker] = @speaker, [datetimedisplay] = @datetimedisplay, [alarm] = @alarm, [compass] = @compass, [calender] = @calender, [altimeter] = @altimeter, [chronograph] = @chronograph, [sensors] = @sensors, [otherfeatures] = @otherfeatures, [itemsinside] = @itemsinside, [compos] = @compos, [compdevice] = @compdevice, [price] = @price, [youtubelink] = @youtubelink, [source] = @source WHERE [regno] = @regno">
            <DeleteParameters>
                <asp:Parameter Name="regno" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="regno" Type="String" />
                <asp:Parameter Name="brand" Type="String" />
                <asp:Parameter Name="modelname" Type="String" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="dialshape" Type="String" />
                <asp:Parameter Name="strapcolor" Type="String" />
                <asp:Parameter Name="waterresistant" Type="String" />
                <asp:Parameter Name="displaysize" Type="String" />
                <asp:Parameter Name="resolution" Type="String" />
                <asp:Parameter Name="os" Type="String" />
                <asp:Parameter Name="osversion" Type="String" />
                <asp:Parameter Name="expmem" Type="String" />
                <asp:Parameter Name="intmem" Type="String" />
                <asp:Parameter Name="bluetooth" Type="String" />
                <asp:Parameter Name="bluetoothversion" Type="String" />
                <asp:Parameter Name="callfunction" Type="String" />
                <asp:Parameter Name="gps" Type="String" />
                <asp:Parameter Name="wifi" Type="String" />
                <asp:Parameter Name="messaging" Type="String" />
                <asp:Parameter Name="primarycam" Type="String" />
                <asp:Parameter Name="othercam" Type="String" />
                <asp:Parameter Name="microphone" Type="String" />
                <asp:Parameter Name="audioformat" Type="String" />
                <asp:Parameter Name="videoformat" Type="String" />
                <asp:Parameter Name="speaker" Type="String" />
                <asp:Parameter Name="datetimedisplay" Type="String" />
                <asp:Parameter Name="alarm" Type="String" />
                <asp:Parameter Name="compass" Type="String" />
                <asp:Parameter Name="calender" Type="String" />
                <asp:Parameter Name="altimeter" Type="String" />
                <asp:Parameter Name="chronograph" Type="String" />
                <asp:Parameter Name="sensors" Type="String" />
                <asp:Parameter Name="otherfeatures" Type="String" />
                <asp:Parameter Name="itemsinside" Type="String" />
                <asp:Parameter Name="compos" Type="String" />
                <asp:Parameter Name="compdevice" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="pic" Type="String" />
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
                <asp:Parameter Name="modelname" Type="String" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="dialshape" Type="String" />
                <asp:Parameter Name="strapcolor" Type="String" />
                <asp:Parameter Name="waterresistant" Type="String" />
                <asp:Parameter Name="displaysize" Type="String" />
                <asp:Parameter Name="resolution" Type="String" />
                <asp:Parameter Name="os" Type="String" />
                <asp:Parameter Name="osversion" Type="String" />
                <asp:Parameter Name="expmem" Type="String" />
                <asp:Parameter Name="intmem" Type="String" />
                <asp:Parameter Name="bluetooth" Type="String" />
                <asp:Parameter Name="bluetoothversion" Type="String" />
                <asp:Parameter Name="callfunction" Type="String" />
                <asp:Parameter Name="gps" Type="String" />
                <asp:Parameter Name="wifi" Type="String" />
                <asp:Parameter Name="messaging" Type="String" />
                <asp:Parameter Name="primarycam" Type="String" />
                <asp:Parameter Name="othercam" Type="String" />
                <asp:Parameter Name="microphone" Type="String" />
                <asp:Parameter Name="audioformat" Type="String" />
                <asp:Parameter Name="videoformat" Type="String" />
                <asp:Parameter Name="speaker" Type="String" />
                <asp:Parameter Name="datetimedisplay" Type="String" />
                <asp:Parameter Name="alarm" Type="String" />
                <asp:Parameter Name="compass" Type="String" />
                <asp:Parameter Name="calender" Type="String" />
                <asp:Parameter Name="altimeter" Type="String" />
                <asp:Parameter Name="chronograph" Type="String" />
                <asp:Parameter Name="sensors" Type="String" />
                <asp:Parameter Name="otherfeatures" Type="String" />
                <asp:Parameter Name="itemsinside" Type="String" />
                <asp:Parameter Name="compos" Type="String" />
                <asp:Parameter Name="compdevice" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="pic" Type="String" />
                <asp:Parameter Name="youtubelink" Type="String" />
                <asp:Parameter Name="source" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="regno" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

        
        <br />
        <br />

        
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
