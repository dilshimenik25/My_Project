<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Worker.aspx.cs" Inherits="My_Project.Worker" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon"  href="~/favicon.ico" type="image/x-icon" />           
      
    <title>Worker Page</title>
    <link href="Style.css" rel="stylesheet" />
     <style>
        @import url('http://fonts.googleapis.com/family=Bitter|Crete+Round|Pacifico');
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
    <section>
       <div class ="container1">
           <div class="innerx" >
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
               <a href="Employee.aspx" class="aa"> User Profile Page</a>
               <br />
               <br />
               <a href="Login.aspx" class="aa">Exit Page</a>
               &nbsp;</div>
           <div class="inner1">
               <asp:Button ID="Button3" runat="server" CssClass="plus" Text="+" Height="35px" Width="35px" OnClick="Button3_Click" />
               <h3>Worker Details</h3>
               
               <asp:TextBox ID="Textid" placeholder="Employee ID"  runat="server"></asp:TextBox>
               <asp:TextBox ID="Textposition" placeholder="Position"  runat="server"></asp:TextBox>
               <asp:TextBox ID="Textdivision" placeholder="Division" runat="server"></asp:TextBox>
               <asp:TextBox ID="Textdate1" placeholder="Joined Date   ( mm/ dd/ yyyy)" runat="server"></asp:TextBox>
                
             
               <br />
               <br />
               
               <asp:Button ID="Button1" runat="server" CssClass="btns" Text="Submit" Height="30px" OnClick="Button1_Click" />
                &nbsp;&nbsp;
               <asp:Button ID="Button2" runat="server" CssClass="btns" Text="Refresh" Height="30px" OnClick="Button2_Click"/>
              
               
               
           </div>
       </div>
   </section>
    </form>
</body>
</html>
