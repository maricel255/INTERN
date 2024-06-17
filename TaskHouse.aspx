<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TaskHouse.aspx.cs" Inherits="INTERN.TaskHouse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <link href="TaskHouse.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 599px; width: 1524px;">
            <asp:Panel ID="pnl_TH_nav" runat="server" CssClass="pnl_TH_nav" Enabled="False" Width="100%"> </asp:Panel>
            <asp:Panel ID="pnl_TH_home" runat="server" CssClass="pnl_TH_home" Width="100%" BackColor="Red"></asp:Panel>
            <asp:Panel ID="pnl_TH_footer" runat="server" CssClass="pnl_TH_Footer" Enabled="False" Height="110px" Width="100%"></asp:Panel>
        </div>
    </form>
</body>
</html>
