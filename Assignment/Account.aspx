<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="Assignment.Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">

        <div id="main">
    <section id="content">
        <div id="left">
<form action="/action_page.php">
  <fieldset>
    <h3>Members Login</h3>
    User name<br>
    <input type="text" name="firstname" value="">
    <br>
    Password<br>
    <input type="text" name="lastname" value="">
    <br>
    <input type="submit" value="LOG IN">
    <input type="submit" value="RESET">
    
    </fieldset>
    </form>

            <p>New User?</p><a class="User" href="Register.aspx">REGISTER NOW!</a>
    <p>Forgot Username or Password?</p><a class="User" href="Forgot.aspx">CLICK HERE</a>
  
</div>
</section>
            </div>

</asp:Content>
