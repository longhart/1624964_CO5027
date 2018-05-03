<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="Assignment.admin.List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Admin | List Page
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">
    
    <div id="productcontentleft">
    <form id="form1" runat="server">
        <h3>Welcome to the List Page</h3>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Product_ID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="Black" BorderStyle="Dotted" CellSpacing="-1" GridLines="None">
            <Columns>
                <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" ReadOnly="True" SortExpression="Product_ID" />
                <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" SortExpression="Product_Name" />
                <asp:BoundField DataField="Product_Info" HeaderText="Product_Info" SortExpression="Product_Info" />
                <asp:BoundField DataField="Product_Price" HeaderText="Product_Price" SortExpression="Product_Price" />
                <asp:BoundField DataField="Product_Quantity" HeaderText="Product_Quantity" SortExpression="Product_Quantity" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" >
                <ControlStyle CssClass="Button" />
                </asp:CommandField>
                <asp:HyperLinkField DataNavigateUrlFields="Product_ID" DataNavigateUrlFormatString="UploadImage.aspx?Id={0}" Text="Update Image" />
                <asp:ImageField AlternateText="Product Image" DataImageUrlField="Product_ID" DataImageUrlFormatString="~/images/ProductImages/{0}.jpg" HeaderText="Product Image">
                    <ControlStyle Height="80px" Width="80px" />
                </asp:ImageField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1624964_co5027_asg_aConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [Product_ID] = @original_Product_ID AND (([Product_Name] = @original_Product_Name) OR ([Product_Name] IS NULL AND @original_Product_Name IS NULL)) AND (([Product_Info] = @original_Product_Info) OR ([Product_Info] IS NULL AND @original_Product_Info IS NULL)) AND (([Product_Price] = @original_Product_Price) OR ([Product_Price] IS NULL AND @original_Product_Price IS NULL)) AND (([Product_Quantity] = @original_Product_Quantity) OR ([Product_Quantity] IS NULL AND @original_Product_Quantity IS NULL))" InsertCommand="INSERT INTO [Product] ([Product_ID], [Product_Name], [Product_Info], [Product_Price], [Product_Quantity]) VALUES (@Product_ID, @Product_Name, @Product_Info, @Product_Price, @Product_Quantity)" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [Product_Name] = @Product_Name, [Product_Info] = @Product_Info, [Product_Price] = @Product_Price, [Product_Quantity] = @Product_Quantity WHERE [Product_ID] = @original_Product_ID AND (([Product_Name] = @original_Product_Name) OR ([Product_Name] IS NULL AND @original_Product_Name IS NULL)) AND (([Product_Info] = @original_Product_Info) OR ([Product_Info] IS NULL AND @original_Product_Info IS NULL)) AND (([Product_Price] = @original_Product_Price) OR ([Product_Price] IS NULL AND @original_Product_Price IS NULL)) AND (([Product_Quantity] = @original_Product_Quantity) OR ([Product_Quantity] IS NULL AND @original_Product_Quantity IS NULL))" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
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
