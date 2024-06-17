<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home_admin.aspx.cs" Inherits="INTERN.Home_admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home_admin</title>
    <link href="Intern_CSS.css" rel="stylesheet" />
</head>

<body>
    <form id="form_admin" runat="server">
       <asp:Panel ID="pnl_header" runat="server" BackColor="#FF6699" Height="35px" CssClass="pnl_header">

           <asp:ImageButton ID="img_admin_logout" runat="server" CssClass="img_admin_logout" ImageUrl="~/img/logout_ICON.png" />
       </asp:Panel>
       <asp:Panel ID="pnl_sidenav_admin" runat="server" CssClass="pnl_sidenav_admin" BackColor="#FF3300">
           <asp:Image ID="img_profile" runat="server" CssClass="img_profile" ImageUrl="~/img/sample_intern_profile.jpg" />
       </asp:Panel>
          
    </form>
</body>

</html>
