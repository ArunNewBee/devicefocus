<%@ Page Language="C#" AutoEventWireup="true" CodeFile="laptopitems.aspx.cs" Inherits="admin_laptopitems" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
            RepeatColumns="10" RepeatDirection="Horizontal" Width="100%">
            <ItemTemplate>
            <a href='<%# Eval("regno","laptopedit.aspx?strReg={0}") %>'> 
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("pic") %>' style="width:100%;" />
                <br />
                <asp:Label ID="altnameLabel" runat="server" Text='<%# Eval("title") %>' />
                </a>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [regno], [pic], [title] FROM [laptop]">
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
