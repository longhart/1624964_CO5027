<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="Assignment.admin.UploadImage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Admin | Upload Image
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">
    <div id="admincontentleft">
    
    <form id="form1" runat="server">
        <h3>Upload Image for Products</h3>
        <br />
        <br />
        <asp:FormView runat="server" DataKeyNames="Product_ID" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                Product_ID:
                <asp:Label ID="Product_IDLabel1" runat="server" Text='<%# Eval("Product_ID") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Product_ID:
                <asp:TextBox ID="Product_IDTextBox" runat="server" Text='<%# Bind("Product_ID") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Current Image for Product ID:
                <asp:Label ID="Product_IDLabel" runat="server" Text='<%# Eval("Product_ID") %>' />
                <p></p>
                <asp:Image runat="server" alt="Product Image" ImageUrl=<%#("~/images/ProductImages/")+Eval("Product_ID") + ".jpg"%> />
                <br />

            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1624964_co5027_asg_aConnectionString %>" SelectCommand="SELECT [Product_ID] FROM [Product] WHERE ([Product_ID] = @Product_ID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Product_ID" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <!--<asp:Image runat="server" ImageUrl=<%#("/images/ProductImages/")+Eval("Product_ID") + ".jpg"%> />-->
        <br />
        <br />
        <asp:FileUpload ID="imageFileUploadControl" runat="server" />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" CssClass="Button" />
        <br />
        <br />
        <asp:Literal ID="LitUpload" runat="server"></asp:Literal>
        <br />
        <br />
        <asp:Button ID="Back2" runat="server" Text="Back to List Page" OnClick="Back_List" CssClass="ButtonAdminBack" />
        <asp:Button ID="Back" runat="server" Text="Back to Admin Page" OnClick="Back_Click" CssClass="ButtonAdminBack" />
        
        <br />
        <br />
    </form>
        </div>
</asp:Content>
