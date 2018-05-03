<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Assignment.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">


     <div id="left">


    <form id="form1" runat="server">
        <h3>My Account</h3>
        <br />
        <asp:PlaceHolder runat="server" ID="LoginStatus" Visible="false">
        <p>
        <asp:Literal runat="server" ID="StatusText" />
        </p>
        </asp:PlaceHolder>
        <br />
        <asp:PlaceHolder runat="server" ID="LoginForm" Visible="false">
            <p>Login to your account.</p>
            <br />
        <asp:Label ID="Label1" runat="server" Text="Username" CssClass="font"></asp:Label>
        <br />
        <asp:TextBox ID="txtLoginEmail" runat="server" CssClass="TextBox"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password" CssClass="font"></asp:Label>
        <br />
        <asp:TextBox ID="TxtLoginPassword" runat="server" TextMode="Password" CssClass="TextBox"></asp:TextBox>
        <br />
        <br />
            <br />
        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" CssClass="Button"  />
        <br />
        <br />
        <asp:Literal ID="litLoginError" runat="server"></asp:Literal>

        </asp:PlaceHolder>
        <asp:PlaceHolder runat="server" ID="AdminNAV" Visible="false">
            <h3>Admin Menu</h3>
            <br />
            <p>Product Management:</p>
           <menu>
           <p></p><a href="~/admin/add.aspx" runat="server" >To add Product</a>
               
           <p></p><a href="~/admin/List.aspx" runat="server" >Edit, Listing and Image upload</a>
           </menu>
            
        
        </asp:PlaceHolder>
        <br />
        
        
        <br />
        <asp:PlaceHolder runat="server" ID="LogoutButton" Visible="false">
            <div>
               <div>
                  <asp:Button runat="server" OnClick="SignOut" Text="Log out" CssClass="Button" />
               </div>
            </div>
         </asp:PlaceHolder>
        </form>
        <br />
        <br />
         <asp:PlaceHolder runat="server" ID="RegisterLink" Visible="True">
            <p>New User?</p><a class="User" href="Register.aspx">REGISTER NOW!</a>
            
         </asp:PlaceHolder>


    </div>






</asp:Content>
