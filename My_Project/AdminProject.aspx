<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminProject.aspx.cs" Inherits="My_Project.AdminProject" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Project Page</title>
<link href="Style.css" rel="stylesheet" />
     
    <style>
        @import url('http://fonts.googleapis.com/family=Bitter|Crete+Round|Pacifico');
        
        .auto-style1 {
            width: 290px;
        }
        
        .auto-style2 {
            left: 80%;
            width: 173px;
        }
        .auto-style3 {
            width: 301px;
            height: 213px;
            margin-left: 0px;
        }
        
        .auto-style4 {
            font-family: 'Crete Round';
            font-size: 1.5vw;
            margin-top: 5%;
            margin-left: 13%;
            color: black;
            left: 0;
            text-align: left;
        }
        
        .auto-style5 {
            width: 19px;
        }
        .auto-style6 {
            font-family: 'Crete Round';
            font-size: 1.5vw;
            margin-top: 5%;
            margin-left: 21%;
            color: black;
            left: 0;
            text-align: left;
            margin-right: 0;
        }
        
        .auto-style7 {
            border-style: solid;
            border-color: inherit;
            border-width: 1px;
            font-family: 'Crete Round';
            font-size: 1.3vw;
            background-color: #ff0000;
            color: white;
        }
        
        .auto-style8 {
            left: 80%;
            width: 173px;
            height: 121px;
        }
        .auto-style9 {
            width: 19px;
            height: 121px;
        }
        .auto-style10 {
            height: 121px;
        }
        
        .auto-style11 {
            border-style: solid;
            border-color: inherit;
            border-width: 1px;
            font-family: 'Crete Round';
            font-size: 1.3vw;
            background-color: #ff0000;
            color: white;
            margin-top: 27;
        }
        
    </style>
</head>
<body>
    <form id="form2" runat="server">
   <section>
       <div class ="container2">
           <div class="inner1" >
               <br />
               <span>
                  My App
               </span>
               <br />
               <br />
               <br />
               <br />
               <a href="Home.aspx" class="aa">Home Page</a>
                <br />
               <br />
               <a href="Catogary.aspx" class="aa">Catogary Page</a>
               <br />
               <br />
               <a href="CollectData.aspx" class="aa">Graph Page</a>
                <br />
               <br />
               <a href="Fileupload.aspx" class="aa">Upload & Download File</a>
                <br />
               <br />
               <a href="Employee.aspx" class="aa">User Profile Page</a>
                <br />
               <br />
               <a href="Login.aspx" class="aa">Exit Page</a>
           </div>
            <div class="inner2" >
                <asp:TextBox ID="TextBox1" Width="150px" Height="5%"  runat="server"></asp:TextBox>
                <hr />
     <div data-role ="header">
        <h1> Please fill the form comletely </h1>
        <br/><br />
    <table style="margin-right: auto; margin-top: auto; margin-bottom: auto;" class="auto-style3">
        <tr>
            <td class="auto-style2"  >
                <asp:Label ID="Label1" CssClass="auto-style6"  runat="server" Text="Project ID" Width="243px"></asp:Label></td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox2" CssClass="txt" Width="174px" Height="27px" runat="server" BorderWidth="2px" style="margin-left: 0%"></asp:TextBox></td>
       <td class="auto-style12">
                <asp:Label ID="Label13" CssClass="auto-style4" runat="server" Text="Project Name" Height="27px" Width="123px"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox14" CssClass="txt" Width="174px" Height="27px" runat="server" BorderWidth="2px" style="margin-left: 23%" ></asp:TextBox></td>
        </tr>
        
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label3" CssClass="lbl" runat="server" Text="Used Technology/ies" Height="27px" Width="241px"></asp:Label></td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox4" CssClass="txt" Width="173px" Height="47px" runat="server" BorderWidth="2px" style="margin-left: 0%"></asp:TextBox></td>
       <td class="auto-style12">
                <asp:Label ID="Label8" CssClass="auto-style4" runat="server" Text="Group/Individual" Height="27px" Width="123px"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox9" CssClass="txt" Width="174px" Height="27px" runat="server" BorderWidth="2px" style="margin-left: 23%" ></asp:TextBox></td>
        </tr>
        <tr>
      
        
       <td class="auto-style12">
                <asp:Label ID="Label6" CssClass="auto-style4" runat="server" Text="Count of Tasks" Height="27px" Width="244px"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox7" CssClass="txt" Width="174px" Height="27px" runat="server" BorderWidth="2px" style=" margin-left: 0;" ></asp:TextBox></td>
        </tr>
        
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label4" CssClass="lbl" runat="server" Text="Start Date" Height="27px" Width="242px"></asp:Label></td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox5" CssClass="txt" Width="173px" Height="27px" BorderWidth="2px" runat="server" style="margin-left: 0%"></asp:TextBox></td>
        <td class="auto-style12">
                <asp:Label ID="Label9" CssClass="auto-style4" runat="server" Text="Value Days" Height="27px" Width="123px"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox10" CssClass="txt" Width="175px" Height="27px" runat="server" BorderWidth="2px" style="margin-left: 23%" ></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label5" CssClass="lbl" runat="server" Text="Expected Date" Height="27px" Width="236px"></asp:Label></td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox6" CssClass="txt" Width="173px" Height="27px" BorderWidth="2px" runat="server" style="margin-left: 0%"></asp:TextBox></td>
        <td class="auto-style12">
                <asp:Label ID="Label10" CssClass="auto-style4" runat="server" Text="Actual Date" Height="27px" Width="123px"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox11" CssClass="txt" Width="174px" Height="27px" runat="server" BorderWidth="2px" style="margin-left: 23%" ></asp:TextBox></td>
        </tr>
            
         <tr>
            <td class="auto-style8">
                <asp:Label ID="Label12" CssClass="lbl" runat="server" Text="Results (+)" Height="27px" Width="232px"></asp:Label></td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox13" CssClass="txt" Width="174px" Height="34px" BorderWidth="2px" runat="server" style="margin-left: 0%; margin-top: 10%;"></asp:TextBox></td>
        <td class="auto-style13">
            <asp:Button ID="Button1"  CssClass="auto-style11" runat="server" Text="Search" Height="38px" Width="68px" style="margin-left: 70%" OnClick="Button1_Click"   />
                </td>
            <td class="auto-style10">
                <asp:Button ID="Button2" runat="server"  CssClass="auto-style7" Text="Update" Height="38px" Width="68px" OnClick="Button2_Click" />
               </td>
        </tr>
            
       
       
    </table>
    </div>
            </div>
       </div>
   </section>
    </form>
</body>
</html>

    