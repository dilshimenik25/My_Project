<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="My_Project.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <link href="Style.css" rel="stylesheet" />

    <style>
        @import url('http://fonts.googleapis.com/family=Bitter|Crete+Round|Pacifico');
    </style>
</head>
<body>
     <form id="form1" runat="server">
   <section>
       <div class ="container">
           <div class="inner1">
               <h3>Sign In</h3>
               <asp:TextBox ID="Textname" placeholder="Username" runat="server"></asp:TextBox>
                
                <asp:TextBox ID="Textpassword" Placeholder="Password" TextMode="Password" runat="server" OnTextChanged="Textpassword_TextChanged"></asp:TextBox>

               <asp:Button ID="Button1" runat="server" CssClass="btn1" Text="Sign In"  OnClick="Button1_Click1" />
               <asp:Button ID="Button2" runat="server" CssClass="btn2" Text="Sign Up" OnClick="Button2_Click1" />
               
               <br />
               <br />
               
               <asp:LinkButton ID="LinkButton1" CssClass="link" runat="server">Forgot Password</asp:LinkButton>
               <asp:Label ID="lblErrorMessage" runat="server" Text="Incorrect User Details" ForeColor="red"></asp:Label>
           </div>
       </div>
   </section>
    </form>
</body>
</html>

    