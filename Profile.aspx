<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="WebApplication21.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to Acccountant Connect</title>
    <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Style the header */
header {
  background-color:lightskyblue;
  height: 170px;
  padding: 5px;
  text-align: center;
  font-size: 35px;
  color: white;
}

/* Create two columns/boxes that floats next to each other */
nav {
  float: left;
  width: 30%;
  height: 500px; /* only for demonstration, should be removed */
  background: #ccc;
  padding: 20px;
}

/* Style the list inside the menu */
nav ul {
  list-style-type: none;
  padding: 0;
}

article {
  float: left;
  padding: 20px;
  width: 70%;
  background-color: #f1f1f1;
  height: 500px; /* only for demonstration, should be removed */
}

.round_image {
    border-radius:50%;
}

/* Clear floats after the columns */
section:after {
  content: "";
  display: table;
  clear: both;
}

/* Style the footer */
footer {
  background-color: #777;
  padding: 10px;
  text-align: center;
  color: white;
}



/* Responsive layout - makes the two columns/boxes stack on top of each other instead of next to each other, on small screens */
@media (max-width: 600px) {
  nav, article {
    width: 100%;
    height: auto;
  }
}
    .auto-style1 {
        font-size: x-large;
    }
    .auto-style2 {
        font-size: xx-large;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
<header>
  <h2 class="auto-style2">Accountant Connect</h2>
    <p><span class="auto-style1">Connecting various accountants all over the world</span></p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
       
</header>

<section>
  <nav>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image1" CssClass="round_image"  style="border-radius:50%" BorderStyle="Solid" ImageUrl="~/logo.jpg" Width="200px" Height="200px" runat="server"/>
    <ul>
        <li>
            <asp:Button ID="Button" runat="server" Text="Account" Height="36px"  Width="124px" />
            </br>
            </br>
            <asp:Button ID="Button2" runat="server" Text="Logout" Height="35px"  Width="120px" />
        </li>
       
    </ul>
      <p>
          &nbsp;</p>
  </nav>
 
  <article>
     
      <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
  </article>
</section>
</form>
</body>
</html>
