<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="Assignment.admin.add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">

   
    <div id="admincontentleft">
        <h3>Add Product</h3>
        <br />
    <form id="form1" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="Product_ID" DefaultMode="Insert">
        <EditItemTemplate>
            Product_ID:
            <asp:Label ID="Product_IDLabel1" runat="server" Text='<%# Eval("Product_ID") %>' />
            <br />
            Product_Name:
            <asp:TextBox ID="Product_NameTextBox" runat="server" Text='<%# Bind("Product_Name") %>' />
            <br />
            Product_Info:
            <asp:TextBox ID="Product_InfoTextBox" runat="server" Text='<%# Bind("Product_Info") %>' />
            <br />
            Product_Price:
            <asp:TextBox ID="Product_PriceTextBox" runat="server" Text='<%# Bind("Product_Price") %>' />
            <br />
            Product_Quantity:
            <asp:TextBox ID="Product_QuantityTextBox" runat="server" Text='<%# Bind("Product_Quantity") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Product_ID:
            <asp:TextBox ID="Product_IDTextBox" runat="server" Text='<%# Bind("Product_ID") %>' />
            <br />
            Product_Name:
            <asp:TextBox ID="Product_NameTextBox" runat="server" Text='<%# Bind("Product_Name") %>' />
            <br />
            Product_Info:
            <asp:TextBox ID="Product_InfoTextBox" runat="server" Text='<%# Bind("Product_Info") %>' />
            <br />
            Product_Price:
            <asp:TextBox ID="Product_PriceTextBox" runat="server" Text='<%# Bind("Product_Price") %>' />
            <br />
            Product_Quantity:
            <asp:TextBox ID="Product_QuantityTextBox" runat="server" Text='<%# Bind("Product_Quantity") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Product_ID:
            <asp:Label ID="Product_IDLabel" runat="server" Text='<%# Eval("Product_ID") %>' />
            <br />
            Product_Name:
            <asp:Label ID="Product_NameLabel" runat="server" Text='<%# Bind("Product_Name") %>' />
            <br />

            Product_Info:
            <asp:Label ID="Product_InfoLabel" runat="server" Text='<%# Bind("Product_Info") %>' />
            <br />
            Product_Price:
            <asp:Label ID="Product_PriceLabel" runat="server" Text='<%# Bind("Product_Price") %>' />
            <br />
            Product_Quantity:
            <asp:Label ID="Product_QuantityLabel" runat="server" Text='<%# Bind("Product_Quantity") %>' />
            <br />

            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />


        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1624964_co5027_asg_aConnectionString %>" SelectCommand="SELECT * FROM [Product]" DeleteCommand="DELETE FROM [Product] WHERE [Product_ID] = @original_Product_ID AND (([Product_Name] = @original_Product_Name) OR ([Product_Name] IS NULL AND @original_Product_Name IS NULL)) AND (([Product_Info] = @original_Product_Info) OR ([Product_Info] IS NULL AND @original_Product_Info IS NULL)) AND (([Product_Price] = @original_Product_Price) OR ([Product_Price] IS NULL AND @original_Product_Price IS NULL)) AND (([Product_Quantity] = @original_Product_Quantity) OR ([Product_Quantity] IS NULL AND @original_Product_Quantity IS NULL))" InsertCommand="INSERT INTO [Product] ([Product_ID], [Product_Name], [Product_Info], [Product_Price], [Product_Quantity]) VALUES (@Product_ID, @Product_Name, @Product_Info, @Product_Price, @Product_Quantity)" UpdateCommand="UPDATE [Product] SET [Product_Name] = @Product_Name, [Product_Info] = @Product_Info, [Product_Price] = @Product_Price, [Product_Quantity] = @Product_Quantity WHERE [Product_ID] = @original_Product_ID AND (([Product_Name] = @original_Product_Name) OR ([Product_Name] IS NULL AND @original_Product_Name IS NULL)) AND (([Product_Info] = @original_Product_Info) OR ([Product_Info] IS NULL AND @original_Product_Info IS NULL)) AND (([Product_Price] = @original_Product_Price) OR ([Product_Price] IS NULL AND @original_Product_Price IS NULL)) AND (([Product_Quantity] = @original_Product_Quantity) OR ([Product_Quantity] IS NULL AND @original_Product_Quantity IS NULL))" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
        <DeleteParameters>
            <asp:Parameter Name="original_Product_ID" Type="Int32" />
            <asp:Parameter Name="original_Product_Name" Type="String" />
            <asp:Parameter Name="original_Product_Info" Type="String" />
            <asp:Parameter Name="original_Product_Price" Type="Decimal" />
            <asp:Parameter Name="original_Product_Quantity" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Product_ID" Type="Int32" />
            <asp:Parameter Name="Product_Name" Type="String" />
            <asp:Parameter Name="Product_Info" Type="String" />
            <asp:Parameter Name="Product_Price" Type="Decimal" />
            <asp:Parameter Name="Product_Quantity" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Product_Name" Type="String" />
            <asp:Parameter Name="Product_Info" Type="String" />
            <asp:Parameter Name="Product_Price" Type="Decimal" />
            <asp:Parameter Name="Product_Quantity" Type="Int32" />
            <asp:Parameter Name="original_Product_ID" Type="Int32" />
            <asp:Parameter Name="original_Product_Name" Type="String" />
            <asp:Parameter Name="original_Product_Info" Type="String" />
            <asp:Parameter Name="original_Product_Price" Type="Decimal" />
            <asp:Parameter Name="original_Product_Quantity" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


    <asp:Button ID="Back" runat="server" Text="Back to admin page" OnClick="Back_Click" CssClass="ButtonAdminBack" />
    <br />
        </form>
        </div>
</asp:Content>
