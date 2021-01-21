<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="My_Project.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
    <link href="Style.css" rel="stylesheet" />

    <style>
        @import url('http://fonts.googleapis.com/family=Bitter|Crete+Round|Pacifico');
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <section>
       <div class ="container">
           <div class="inner2">
               <h3>Sign Up</h3>
               <asp:TextBox ID="Textname" placeholder="Username" runat="server"></asp:TextBox>
                <asp:TextBox ID="Textemail" placeholder="E-mail"  runat="server"></asp:TextBox>
                <asp:TextBox ID="Textpassword" Placeholder="Password" Name="psw" TextMode="Password" runat="server"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" ></asp:TextBox>
                <asp:TextBox ID="Textcops" placeholder="Re-Type Password" TextMode="Password" runat="server"></asp:TextBox>
           <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Sign Me Up" OnClick="Button1_Click" />
           </div>
       </div>
   </section>
    </form>
    
    <script>
        var myInput = document.getElementById("psw");
        var letter = document.getElementById("letter");
        var capital = document.getElementById("capital");
        var number = document.getElementById("number");
        var length = document.getElementById("length");

// When the user clicks on the password field, show the message box
myInput.onfocus = function() {
    document.getElementById("message").style.display = "block";
}

// When the user clicks outside of the password field, hide the message box
myInput.onblur = function() {
    document.getElementById("message").style.display = "none";
}

// When the user starts to type something inside the password field
myInput.onkeyup = function() {
  // Validate lowercase letters
  var lowerCaseLetters = /[a-z]/g;
  if(myInput.value.match(lowerCaseLetters)) {  
    letter.classList.remove("invalid");
    letter.classList.add("valid");
  } else {
    letter.classList.remove("valid");
    letter.classList.add("invalid");
  }
  
  // Validate capital letters
  var upperCaseLetters = /[A-Z]/g;
  if(myInput.value.match(upperCaseLetters)) {  
    capital.classList.remove("invalid");
    capital.classList.add("valid");
  } else {
    capital.classList.remove("valid");
    capital.classList.add("invalid");
  }

  // Validate numbers
  var numbers = /[0-9]/g;
  if(myInput.value.match(numbers)) {  
    number.classList.remove("invalid");
    number.classList.add("valid");
  } else {
    number.classList.remove("valid");
    number.classList.add("invalid");
  }
  
  // Validate length
  if(myInput.value.length >= 8) {
    length.classList.remove("invalid");
    length.classList.add("valid");
  } else {
    length.classList.remove("valid");
    length.classList.add("invalid");
  }
}
</script>
    
</body>
</html>
