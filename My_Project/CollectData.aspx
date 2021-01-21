<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CollectData.aspx.cs" Inherits="My_Project.CollectData" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"> <title>Collect Data Page</title>
<link href="Style.css" rel="stylesheet" />
     
    <style>
        @import url('http://fonts.googleapis.com/family=Bitter|Crete+Round|Pacifico');
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
        <h1> Chart Show </h1>
        <br/><br />
      
         <div>
             <table>
                 <tr>
                     <td>
             <asp:Chart ID="Chart1" runat="server" Width="384px" Height="324px">
             
 <Series>
     <asp:Series Name="Series1" ChartType="Bar" ChartArea="ChartArea1"></asp:Series>
</Series>
              <ChartAreas>
<asp:ChartArea Name="ChartArea1">
                  <AxisY Title="Count Of Tasks"></AxisY>
                  <AxisX Title="Project ID">
                  </AxisX>
    </asp:ChartArea>
</ChartAreas>
                 <Titles>
                     <asp:Title Name="Title1" Text="Count of tasks using the projects">
                     </asp:Title>
                 </Titles>
 </asp:Chart></td>
                     <td>
                         <asp:Chart ID="Chart3" runat="server" Width="400px" Height="244px">
             
 <Series>
     <asp:Series Name="Series3" ChartType="Line" ChartArea="ChartArea1"></asp:Series>
</Series>
              <ChartAreas>
<asp:ChartArea Name="ChartArea1">
                  <AxisY Title="Days"></AxisY>
                  <AxisX Title="Project ID">
                  </AxisX>
    </asp:ChartArea>
</ChartAreas>
                 <Titles>
                     <asp:Title Name="Title1" Text="Count of Days from the User">
                     </asp:Title>
                 </Titles>
 </asp:Chart></td>
                     </td>
                 </tr>
                 
                 </table>
             </div>
             <hr />
         <div>
             <table>
                 <tr>
                     <td>
             <asp:Chart ID="Chart2" runat="server" Width="502px" Height="213px">
             
                 <Titles><asp:Title Text="Count of Project "></asp:Title></Titles>
                 <Series>
                     <asp:Series Name="Series2" ChartType="Pie"></asp:Series>
                 </Series>
              <ChartAreas>
<asp:ChartArea Name="ChartArea2">
                  
                    
    </asp:ChartArea>
</ChartAreas>
 </asp:Chart></td>
                     <td>
                     </td>
                 </tr>
                 </table>
         </div>
    </div>
            </div>
       </div>
   </section>
    </form>
</body>
</html>

    