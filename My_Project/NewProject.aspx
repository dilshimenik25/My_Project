<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewProject.aspx.cs" Inherits="My_Project.NewProject" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon"  href="~/favicon.ico" type="image/x-icon" />           
      
    <title>New Page</title>
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
                   Topics
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
                  <asp:Button ID="Button3" runat="server" CssClass="plus" Text="New(+)" Height="35px" Width="55px" style="margin-left:750px" OnClick="Button3_Click"   />
     <div data-role ="header">
        <h1> Please fill the form comletely </h1>
        <br/><br />
    <table style="margin-right: auto; margin-top: auto; margin-bottom: auto;" class="auto-style3">
        <tr>
            <td class="auto-style2"  >
                <asp:Label ID="Label1" CssClass="auto-style6"  runat="server" Text="Project Name" Width="243px"></asp:Label></td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox2" CssClass="txt" Width="217px" Height="27px" runat="server" BorderWidth="2px" style="margin-left: 0%"></asp:TextBox></td>
            <td class="auto-style2">
                <asp:Label ID="Label13" CssClass="auto-style4" runat="server" Text="Project ID" Height="27px" Width="123px"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox14" CssClass="txt" Width="142px" Height="27px" runat="server" BorderWidth="2px" style="margin-left: 23%" ></asp:TextBox></td>
        </tr>
            <tr>
            <td class="auto-style2">
                <asp:Label ID="Label2" CssClass="auto-style6"  runat="server" Text="Task Name (+)" Height="27px" Width="239px"></asp:Label></td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox3" CssClass="txt" Width="142px" Height="27px" runat="server" BorderWidth="2px" style="margin-left: 0%" ></asp:TextBox></td>
         <td class="auto-style2">
                <asp:Label ID="Label7" CssClass="auto-style4" runat="server" Text="Dates" Height="27px" Width="123px"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox8" CssClass="txt" Width="142px" Height="27px" runat="server" BorderWidth="2px" style="margin-left: 23%" ></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label3" CssClass="auto-style6"  runat="server" Text="Task Name (+)" Height="27px" Width="241px"></asp:Label></td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox4" CssClass="txt" Width="142px" Height="27px" runat="server" BorderWidth="2px" style="margin-left: 0%"></asp:TextBox></td>
       <td class="auto-style2">
                <asp:Label ID="Label8" CssClass="auto-style4" runat="server" Text="Today Date" Height="27px" Width="123px"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox9" CssClass="txt" Width="142px" Height="27px" runat="server" BorderWidth="2px" style="margin-left: 23%" ></asp:TextBox></td>
        </tr>
        
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label4" CssClass="auto-style6"  runat="server" Text="Task Name (+)" Height="27px" Width="242px"></asp:Label></td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox5" CssClass="txt" Width="142px" Height="27px" BorderWidth="2px" runat="server" style="margin-left: 0%"></asp:TextBox></td>
        <td class="auto-style2">
                <asp:Label ID="Label9" CssClass="auto-style4" runat="server" Text="Expected Date" Height="27px" Width="123px"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox10" CssClass="txt" Width="142px" Height="27px" runat="server" BorderWidth="2px" style="margin-left: 23%" ></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label5" CssClass="auto-style6"  runat="server" Text="Task Name (+)" Height="27px" Width="236px"></asp:Label></td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox6" CssClass="txt" Width="142px" Height="27px" BorderWidth="2px" runat="server" style="margin-left: 0%"></asp:TextBox></td>
        <td class="auto-style2">
                <asp:Label ID="Label10" CssClass="auto-style4" runat="server" Text="Actual Date" Height="27px" Width="123px"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox11" CssClass="txt" Width="142px" Height="27px" runat="server" BorderWidth="2px" style="margin-left: 23%" ></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label6" CssClass="auto-style6"  runat="server" Text="Task Name (+)" Height="27px" Width="232px"></asp:Label></td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox7" CssClass="txt" Width="142px" Height="27px" BorderWidth="2px" runat="server" style="margin-left: 0%"></asp:TextBox></td>
        <td class="auto-style2">
                <asp:Label ID="Label11" CssClass="auto-style4" runat="server" Text="Group/Individual" Height="27px" Width="123px"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox12" CssClass="txt" Width="142px" Height="27px" runat="server" BorderWidth="2px" style="margin-left: 23%" ></asp:TextBox></td>
        </tr>
         <tr>
            <td class="auto-style8">
                <asp:Label ID="Label12" CssClass="auto-style6"  runat="server" Text="Comments (+)" Height="27px" Width="232px"></asp:Label></td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox13" CssClass="txt" Width="214px" Height="74px" BorderWidth="2px" runat="server" style="margin-left: 0%"></asp:TextBox></td>
        <td class="auto-style10">
            <asp:Button ID="Button1"  CssClass="auto-style11" runat="server" Text="Edit" Height="38px" Width="68px" style="margin-left: 70%"  />
                </td>
            <td class="auto-style10">
                <asp:Button ID="Button2" runat="server"  CssClass="auto-style7" Text="Update" Height="38px" Width="68px" />
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

    