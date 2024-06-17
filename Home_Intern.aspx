<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home_Intern.aspx.cs" Inherits="INTERN.Home_Intern" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"><title>
Home_Intern</title>
     <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Intern.js"></script>
     <script type="text/javascript">
         function updateCurrentTime() {
             // Get current time
             var currentTime = new Date();
             var hours = currentTime.getHours();
             var minutes = currentTime.getMinutes();
             var seconds = currentTime.getSeconds();

             // Add leading zeros if necessary
             hours = (hours < 10 ? "0" : "") + hours;
             minutes = (minutes < 10 ? "0" : "") + minutes;
             seconds = (seconds < 10 ? "0" : "") + seconds;

             // Update time in the label
             document.getElementById('<%= lbl_Curr_time.ClientID %>').innerText = hours + ":" + minutes + ":" + seconds;
         }

         // Update time every second
         setInterval(updateCurrentTime, 1000);
     </script>
    <link href="Intern_CSS.css"  type="text/css"  rel="stylesheet" />
    <style type="text/css">
        #Form_Home_intern {
            height: 99px;
            width: 1450px;
            margin-left: 40px;
        }
        .div__Home_intern_SideDashboard {
            height: 572px;
            width: 315px;
        }
        .pnl_Home_intern_SideDashboard {}
        .div_image {
            height: 230px;
            width: 234px;
        }
    </style>
</head>
<body class="body_intern">

    <form id="Form_Home_intern" runat="server">  
                                                  

        <div class="div_Home_intern_Navbar" id="div_Home_intern_Navbar">

            <asp:Panel ID="Pnl_Home_intern_Navbar" runat="server" Height="98px" CssClass="Pnl_Home_intern_Navbar" Width="100%" ForeColor="#003366">
               
                    <asp:Label ID="lbl_nav_intern" runat="server" CssClass="lbl_nav_intern" Font-Bold="True" Font-Names="Lucida Bright" Font-Size="X-Large" ForeColor="Red" style="top: 18px; left: 157px" Text="INTERN'S"></asp:Label>
                <asp:Label ID="LBL_NAV_TASk" runat="server" CssClass="LBL_NAV_TASk" Font-Bold="True" Font-Names="Lucida Bright" Font-Size="X-Large" ForeColor="Green" Text="TASK HOUSE"></asp:Label>
                    <asp:Button ID="btn_home" runat="server" BorderStyle="None" CssClass="btn_home" OnClick="btn_home_Click" />
               
            </asp:Panel>  
                                                      
            <asp:Button ID="btn_log_out" runat="server" Text="Log-out" CssClass="btn_log_out" BackColor="White" Height="45px" />
           
            <asp:Panel ID="pnl_Home_intern_SideDashboard" runat="server" BackColor="Green" CssClass="pnl_Home_intern_SideDashboard" Height="408%" HorizontalAlign="Left" Width="499px">
                     <asp:Image ID="img_intern_prof_pic" runat="server" BorderColor="#003366" BorderStyle="Solid" BorderWidth="5px" CssClass="img_intern_prof_pic" Height="132px" ImageUrl="~/img/sample_intern_profile.jpg" TabIndex="6" Width="131px" />
                     <div class="div_underline">
                         </div>
                     <asp:Label ID="lbl_intern_fullname0" runat="server" CssClass="lbl_intern_fullname" Font-Names="Lucida Fax" Font-Size="X-Large" ForeColor="White" style="top: 189px; left: 187px" Text="Last name, First name"></asp:Label>
                     <asp:Label ID="lbl_intern_postion" runat="server" CssClass="lbl_intern_postion" Font-Names="Lucida Fax" Font-Size="Medium" ForeColor="White" style="top: 241px; left: 192px; width: 61px" Text="INTERN"></asp:Label>
                <asp:Button ID="btn_intern_break" runat="server" CssClass="btn_intern_break" Font-Names="Lucida Fax" Text="Break" ForeColor="White" Width="135px" BorderColor="#FF920C" />

                <asp:Button ID="btn_backtoWork" runat="server" Text="Back to work" CssClass="btn_backtoWork" ForeColor="White" Width="135px" BorderColor="#FF920C" />

                <asp:Button ID="btn_Dashboard" runat="server" Text="Dashboard" CssClass="btn_Dashboard" BackColor="Green" BorderColor="Green" BorderStyle="None" OnClick="btn_Dashboard_Click" OnClientClick="OpenPanel()" TabIndex="8"  />
                  <div class="div_underline1"> </div>
                <asp:Button ID="btn_requests" runat="server" Text="Requests" CssClass="btn_requests" BackColor="Green" BorderStyle="None" Font-Names="Lucida Bright" Font-Size="X-Large" ForeColor="White" OnClick="btn_requests_Click" Height="45px" />

                     <asp:Button ID="myAccount" runat="server" CssClass="btn_myAccount" OnClick="myAccount_Click" Text="My Account" BackColor="Green" BorderStyle="None" Font-Names="Lucida Bright" Font-Size="X-Large" ForeColor="White" />

            </asp:Panel>
            
            <asp:Panel ID="pnl_intern_homeView" runat="server" CssClass="pnl_intern_homeView" Font-Size="XX-Large" ForeColor="Red" BackColor="#EEEEEE">
                <asp:Panel ID="pnl_announ_board" runat="server" BackColor="White" BorderColor="Red" BorderStyle="Solid" CssClass="pnl_announ_board" Width="99%">
                 <asp:Label ID="lbl_under_annBoard" runat="server" CssClass="lbl_under_annBoard" Font-Names="Lucida Fax" Font-Size="Large" ForeColor="#003366" Text="This announcements from CTU-COT admin"></asp:Label>
                    <asp:Image ID="img_ctu" runat="server" CssClass="img_ctu" ImageUrl="~/img/CTU_new_logo-removebg-preview.png" />
                    <asp:Label ID="lbl_Ann_board" runat="server" CssClass="lbl_Ann_board" Font-Names="Lucida Fax" ForeColor="#003366" Text="ANNOUNCEMENT BOARD"></asp:Label>
                    <asp:Image ID="img_ctu1" runat="server" CssClass="img_ctu1" ImageUrl="~/img/CTU_new_logo-removebg-preview.png" />
                    <asp:Panel ID="pnl_line_annboard" runat="server" BackColor="#FF920C" CssClass="pnl_line_annboard" style="top: 71px; left: 723px; width: 451px; height: 14px">
                    </asp:Panel>
                  <asp:Label ID="lbl_Ann_text" runat="server" Text="Text" ForeColor="#003366" CssClass="lbl_Ann_text" Font-Names="Lucida Fax"></asp:Label>  

                                                                    
                </asp:Panel>
                <asp:Panel ID="pnl_TimeClock" runat="server" CssClass="pnl_TimeClock" BorderWidth="2px" BorderColor="#003366">
                    <asp:Label ID="lbl_TimeClock" runat="server" Text="Online Time Clock" CssClass="lbl_TimeClock"></asp:Label>
                    <asp:Label ID="lbl_Curr_dayoftheWeek" runat="server" CssClass="lbl_Curr_dayoftheWeek" ForeColor="#003366"></asp:Label>
                    <asp:Label ID="lbl_Curr_time" runat="server" Text="" CssClass="lbl_Curr_time"></asp:Label>
                    <asp:Button ID="btn_Login" runat="server" Text="Log in" CssClass="btn_Login" ForeColor="White" />
                    <asp:Button ID="btn_logout" runat="server" Text="Log out" CssClass="btn_logout" ForeColor="White" />
                    <asp:TextBox ID="txt_Intern_Task" runat="server" CssClass="txt_Intern_Task"></asp:TextBox>
                </asp:Panel>
                           <asp:Image ID="Image2" ImageUrl="~/img/CTU_new_logo_CROP.png" runat="server" CssClass="img_buttom_right_logo" BorderStyle="None" />

            </asp:Panel>
            <asp:Image ID="img_home_profile" runat="server" CssClass="img_home_profile" />

        </div>
        <asp:Panel ID="pnl_personal_profil" runat="server" CssClass="pnl_personal_profil">
                   <asp:Image ID="Image3" runat="server" BorderColor="#003366" BorderStyle="Solid" BorderWidth="5px" CssClass="img_intern_prof_pic_personal_Prof" ImageUrl="~/img/sample_intern_profile.jpg" TabIndex="9" />
                    <asp:Label ID="lbl_perPro_Name" runat="server" CssClass="lbl_perPro_Name" Font-Names="Lucida Fax"  ForeColor="#003366" style="top: 186px; left: 429px" Text="Last name, First name"></asp:Label>
                   <asp:Label ID="lbl_perPro_Name_form" runat="server" CssClass="lbl_perPro_Name_form" Font-Names="Lucida Fax"  ForeColor="#003366" style="top: 256px; left: 429px" Text="ID Number: "></asp:Label>
                    <asp:Label ID="Label9" runat="server" CssClass="lbl_perPro_Name_form" Font-Names="Lucida Fax"  ForeColor="#003366" style="top: 300px; left: 429px" Text="Date of Birth:" Font-Size="20px"></asp:Label>


                   <!-- FORM  -->
                   <asp:Label ID="Label1" runat="server" CssClass="lbl_perPro_Name_form" Font-Names="Lucida Fax"  ForeColor="#003366" style="top: 465px; left: 458px" Text="Course & Section "></asp:Label>
                   <asp:Label ID="Label2" runat="server" CssClass="lbl_perPro_Name_form" Font-Names="Lucida Fax"  ForeColor="#003366" style="top: 518px; left: 458px" Text="Email "></asp:Label>
                   <asp:Label ID="Label3" runat="server" CssClass="lbl_perPro_Name_form" Font-Names="Lucida Fax"  ForeColor="#003366" style="top: 570px; left: 458px" Text="Gender "></asp:Label>
                   <asp:Label ID="Label4" runat="server" CssClass="lbl_perPro_Name_form" Font-Names="Lucida Fax"  ForeColor="#003366" style="top: 620px; left: 458px" Text="Company Intern Facilitator "></asp:Label>
                   <asp:Label ID="Label5" runat="server" CssClass="lbl_perPro_Name_form" Font-Names="Lucida Fax"  ForeColor="#003366" style="top: 670px; left: 458px" Text="Shift "></asp:Label>
                   <asp:Label ID="Label6" runat="server" CssClass="lbl_perPro_Name_form" Font-Names="Lucida Fax"  ForeColor="#003366" style="top: 720px; left: 458px" Text="Company Assigned "></asp:Label>
                   <asp:Label ID="Label7" runat="server" CssClass="lbl_perPro_Name_form" Font-Names="Lucida Fax"  ForeColor="#003366" style="top: 770px; left: 458px" Text="Hours Required "></asp:Label>
                   <asp:Label ID="Label8" runat="server" CssClass="lbl_perPro_Name_form" Font-Names="Lucida Fax"  ForeColor="#003366" style="top: 820px; left: 458px" Text="Date Start "></asp:Label>

                      <!--ansers is from the database  -->
                      <asp:Label ID="db_cs" runat="server" CssClass="lbl_perPro_Name_form" Font-Names="Lucida Fax"  ForeColor="#003366" style="top: 465px; left: 1000px" Text=": "></asp:Label>
                      <asp:Label ID="db_emai" runat="server" CssClass="lbl_perPro_Name_form" Font-Names="Lucida Fax"  ForeColor="#003366" style="top: 518px; left: 1000px" Text=": "></asp:Label>
                      <asp:Label ID="db_gender" runat="server" CssClass="lbl_perPro_Name_form" Font-Names="Lucida Fax"  ForeColor="#003366" style="top: 570px; left: 1000px" Text=": "></asp:Label>
                      <asp:Label ID="db_CIF" runat="server" CssClass="lbl_perPro_Name_form" Font-Names="Lucida Fax"  ForeColor="#003366" style="top: 620px; left: 1000px" Text=": "></asp:Label>
                      <asp:Label ID="db_shift" runat="server" CssClass="lbl_perPro_Name_form" Font-Names="Lucida Fax"  ForeColor="#003366" style="top: 670px; left: 1000px" Text=": "></asp:Label>
                      <asp:Label ID="db_com" runat="server" CssClass="lbl_perPro_Name_form" Font-Names="Lucida Fax"  ForeColor="#003366" style="top: 720px; left: 1000px" Text=": "></asp:Label>
                      <asp:Label ID="db_hours" runat="server" CssClass="lbl_perPro_Name_form" Font-Names="Lucida Fax"  ForeColor="#003366" style="top: 770px; left: 1000px" Text=": "></asp:Label>
                      <asp:Label ID="db_dateS" runat="server" CssClass="lbl_perPro_Name_form" Font-Names="Lucida Fax"  ForeColor="#003366" style="top: 820px; left: 1000px" Text=": "></asp:Label>





                    <div class="div_underline2"> </div>
                  <asp:Image ID="Image1" ImageUrl="~/img/CTU_new_logo_CROP.png" runat="server" CssClass="img_buttom_right_logo" BorderStyle="None" />
                   <div class="div_underline4"> </div>
        </asp:Panel>

        <asp:Panel ID="pnl_request" runat="server" CssClass="pnl_request" BackColor="#FF920C">
            <asp:GridView ID="Grid_myatt_DB" runat="server" CssClass="Grid_myatt_DB" BorderWidth="1px" BorderStyle="Solid" TabIndex="5"></asp:GridView>
               <asp:Label ID="lbl_panel" runat="server" Font-Names="Lucida Fax"  ForeColor="White" style="top: 670px; left: 458px" Text="This panel is for REQUEST BUTTON " Font-Size="50px" CssClass="lbl_panel"></asp:Label>


        </asp:Panel>

     
    </form>
   
</body>
              
</html>
