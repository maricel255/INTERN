
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stu_loginform.aspx.cs" Inherits="INTERN.stu_loginform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Intern_login</title>
           <link href="Content/bootstrap.min.css" rel="stylesheet" />
           <script src="Scripts/bootstrap.min.js"></script>
           <link href="Intern_CSS.css"  type="text/css"  rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 74px;
            height: 69px;
        }
    </style>
    </head>
<body>
    <form id="internLoginForm" runat="server">
        <section class="section_intern_form">
            <div class="div_lblintern">
                <asp:Label ID="lbl_Intern" runat="server" Text="INTERN'S" Font-Names="Lucida Bright" Font-Size="80px" ForeColor="#E50001"></asp:Label>
             </div>
                <div class="div_lbltaskhouse">
                <asp:Label ID="lbl_taskhouse" runat="server" Text="TASK HOUSE" Font-Names="Lucida Bright" Font-Size="80px" ForeColor="#005200"></asp:Label>
             </div>
               <div class="div_logo">  
                   <%--</div>--%>
                <div class="div_pnl_login">
                    <asp:Panel ID="Pnl_login" runat="server" BackColor="White" BorderColor="#003366" BorderStyle="Solid" Height="328px" Width="565px" style="clip-path: polygon(20% 0%, 100% 0, 100% 100%, 0 100%, 0 20%) ; margin-top: 0px;" HorizontalAlign="Center" CssClass="Pnl_login">
                        <asp:Label ID="lbl_Stulogin" runat="server" Text="ADMIN LOG-IN" Font-Names="Lucida Bright" Font-Size="25pt" TabIndex="5" ForeColor="#003366"></asp:Label>
                    </asp:Panel>
                </div>
                   <div class="div_inside_stuLogin">
                                    <div class="div_ins_stuLogin">
                                              <asp:TextBox ID="txtbx_intern_username" runat="server" BorderStyle="Outset" Height="59px" Width="370px" Border-radius="10px" BorderColor="#003366" Columns="3" CssClass="txtbx_intern_username"></asp:TextBox>

                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                              <asp:TextBox ID="txtbx_intern_pass" runat="server" BorderStyle="Outset" Height="54px" Width="369px" Border-radius="10px" BorderColor="#003366" Columns="3" CssClass="txtbx_intern_username" TextMode="Password"></asp:TextBox>

                                        </div>
                       <asp:Image ID="img_user_logo" runat="server" Height="70px" ImageUrl="~/img/USER_ICON.png" Width="72px" />

                                    <img class="auto-style1" src="img/PASS_icon.png" id="img_stuPass" /></div>
                    



          
           
           
                   <asp:Image ID="ctu_logo" runat="server" ImageUrl="~/img/CTU_new_logo-removebg-preview.png" Height="423px" Width="440px" ImageAlign="Left" ViewStateMode="Enabled" />
               
        &nbsp;&nbsp;&nbsp;
               

          
           
           
            </div>
               
                   <div class="div_btn_intern_login">
                   &nbsp;<asp:Button ID="btn_Intern_login" runat="server" Text="Log-in" CssClass="btn_Intern_login" Font-Names="Lucida Bright" Font-Size="20pt" Height="53px" Width="194px" BorderColor="#FE9118" BorderWidth="2px" OnClick="btn_Intern_login_Click" />
                      </div>
           

          
           
           
        </section>
           
           
        <p>
            &nbsp;</p>
           
           
    </form>
</body>
</html>
