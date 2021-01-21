<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Catogary.aspx.cs" Inherits="My_Project.Catogary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Catogary Page</title>
<link href="Style.css" rel="stylesheet" />
    
     
    <style>
        @import url('http://fonts.googleapis.com/family=Bitter|Crete+Round|Pacifico');
      
       
      
        .auto-style5 {
            border-style: solid;
            border-color: inherit;
            border-width: 1px;
            font-family: 'Crete Round';
            font-size: 1.3vw;
            background-color: #ff0000;
            color: white;
        }
      
       
      
        .auto-style10 {
            height: 64px;
        }
      
       
      
        .auto-style13 {
            height: 64px;
            width: 128px;
        }
      
       
      
        .auto-style14 {
            margin-right: 58;
        }
      
       
      
        .auto-style19 {
            border-style: solid;
            border-color: inherit;
            border-width: 1px;
            font-family: 'Crete Round';
            font-size: 1.3vw;
            background-color: #ff0000;
            color: white;
            margin-left: 0;
        }
      
       
      
        .auto-style23 {
            margin-left: 94%;
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
        <h1> Catogary Page </h1>
        <br/><br />
        
           <h1> Projects </h1>
         <div>
             <table >
                 <tr>
                     <td >
                         <asp:TextBox ID="TextBox2" runat="server"  Width="119px" Height="27px" placeholder="Project ID" style-margin-left="50%" CssClass="auto-style23"></asp:TextBox>
                       
                         </td>
                   
                      </tr>
                 </table>
            
             <table>
                 <tr>
                    
                     <td class="auto-style13">
                         <asp:Button ID="Button1" runat="server" Text="Search" Cssclass="auto-style19"  Style-margin-left="80%" Height="36px" Width="75px" OnClick="Button1_Click"/>
                     </td>
                     <td class="auto-style10">
                         <asp:Button ID="Button2" runat="server" Text="Delete" Cssclass="auto-style5"  Style-margin-right="30%" Height="36px" Width="80px" OnClick="Button2_Click" />
                     </td>
                     <td class="auto-style13">
                         <asp:Button ID="Button3" runat="server" Text="Update" Cssclass="auto-style5"  Style-margin-right="30%" Height="36px" Width="80px" OnClick="Button3_Click" />
                     </td>
                 </tr>
                 
                 </table>
                 </div>
                
                <div>
                  <asp:GridView ID="GridView1" runat="server" CellPadding="4" CssClass="auto-style14" ForeColor="#333333" GridLines="None" Width="815px" Height="157px">
                      <AlternatingRowStyle BackColor="White" />
                      <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                      <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                      <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                      <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                      <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                      <SortedAscendingCellStyle BackColor="#FDF5AC" />
                      <SortedAscendingHeaderStyle BackColor="#4D0000" />
                      <SortedDescendingCellStyle BackColor="#FCF6C0" />
                      <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                </div>
            
                     <br/><br />

        <hr />
         <h1> Tasks </h1>
         <div>
             <table >
                 <tr>
                     <td >
                         <asp:TextBox ID="TextBox3" runat="server"  Width="119px" Height="27px" placeholder="Project ID" style-margin-left="50%" CssClass="auto-style23"></asp:TextBox>
                       
                         </td>
                   
                      </tr>
                 </table>
            
             <table>
                 <tr>
                    
                     <td class="auto-style13">
                         <asp:Button ID="Button4" runat="server" Text="Search" Cssclass="auto-style19"  Style-margin-left="80%" Height="36px" Width="75px" OnClick="Button4_Click" />
                     </td>
                     <td class="auto-style10">
                         <asp:Button ID="Button5" runat="server" Text="Delete" Cssclass="auto-style5"  Style-margin-right="30%" Height="36px" Width="80px" OnClick="Button5_Click" />
                     </td>
                     <td class="auto-style13">
                         <asp:Button ID="Button6" runat="server" Text="Update" Cssclass="auto-style5"  Style-margin-right="30%" Height="36px" Width="80px" OnClick="Button6_Click" />
                     </td>
                 </tr>
                 
                 </table>     
                    
               
               </div>
         <div>
                  <asp:GridView ID="GridView2" runat="server" CellPadding="4" CssClass="auto-style14" ForeColor="#333333" GridLines="None" Width="815px" Height="190px">
                      <AlternatingRowStyle BackColor="White" />
                      <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                      <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                      <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                      <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                      <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                      <SortedAscendingCellStyle BackColor="#FDF5AC" />
                      <SortedAscendingHeaderStyle BackColor="#4D0000" />
                      <SortedDescendingCellStyle BackColor="#FCF6C0" />
                      <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                </div>
            
                     <br/><br />
         <hr />

         <h1>Report</h1>
         <asp:Button ID="Button7" runat="server" Text="Summary" Cssclass="auto-style5" Style-margin-left="50%" Height="36px" Width="80px" />
                     
               </div>
              </div>
   </section>
       
    </form>
</body>
</html>

    