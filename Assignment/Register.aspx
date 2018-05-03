<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Assignment.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Smart Gadgets Wearable Co. | Register Page
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">
    
    <div id="left">
    
    <form id="form1" runat="server">
        <h3>Register Account</h3>
        <br />
        <p>Register your account.</p>
        <br / />
        <asp:Label ID="Label1" runat="server" Text="Username" CssClass="font"></asp:Label>
        <br />
        <asp:TextBox ID="txtregEmail" runat="server" CssClass="TextBox"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password" CssClass="font"></asp:Label>
        <br />
        <asp:TextBox ID="TxtRegPassword" runat="server" TextMode="Password" CssClass="TextBox"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="btnReg" runat="server" Text="Register" OnClick="btnReg_Click" CssClass="Button" />
        <br />
        <br />
        <br />
        <asp:Literal ID="litRegisterError" runat="server"></asp:Literal>
    </form>

        </div>
</asp:Content>
