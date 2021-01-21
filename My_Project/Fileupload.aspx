<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fileupload.aspx.cs" Inherits="My_Project.Fileupload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>File Upload</title>
<link href="Style.css" rel="stylesheet" />
     
    <style>
        @import url('http://fonts.googleapis.com/family=Bitter|Crete+Round|Pacifico');
        .auto-style2 {
            border-style: solid;
            border-color: inherit;
            border-width: 1px;
            font-family: 'Crete Round';
            font-size: 1.3vw;
            background-color: #ff0000;
            color: white;
            margin-left: 85px;
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
        <h1>  Upload File </h1>
        <br/><br />
        
         <div>
             <table>
                 <tr>
                     <td>
                         <asp:FileUpload ID="FileUpload1" runat="server" Height="74px" Width="265px" />
                    </td>
                     <td>
                         <asp:Button ID="Button1" runat="server" Cssclass="auto-style2" Text="Upload File" Height="43px" OnClick="Button1_Click" Width="116px" Style-margin-right ="110%" />
                     </td>
                     
                 </tr>
                 
                 </table>
                 </div>
                
                <div>
                 <table>
                   <tr>
                     <td>
            
                         <asp:Label ID="Label1" runat="server" Font-bold="true"></asp:Label>
                     </td>
                     <td>
                     </td>
                 </tr>
                 </table>
                </div>
          <hr />
          <div style="font-family:'Arial Unicode MS'">
                 
                         <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" Width="469px" OnRowCommand="GridView1_RowCommand1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                             <AlternatingRowStyle BackColor="White" />
                             <Columns>
                                 <asp:TemplateField HeaderText="File">
                                     <ItemTemplate>
                                         <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Download" CommandArgument='<%# Eval("File") %>' Text='<%# Eval("File") %>'></asp:LinkButton>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:BoundField DataField="Size" HeaderText="Size" />
                                 <asp:BoundField DataField="Type" HeaderText="File Type" />
                             </Columns>
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
               </div>
               </div>
              </div>
   </section>
    </form>
</body>
</html>

    