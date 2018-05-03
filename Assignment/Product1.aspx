<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product1.aspx.cs" Inherits="Assignment.Product1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">

    <div id="productcontentleft">
    <form id="form1" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Product_ID" DataSourceID="SqlDataSource1" Width="949px">
        
        
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
            <h3>Product Info</h3>
            <br />
            <div class="img">
                <a href="<%#Eval("Product_ID","Product1.aspx?Id={0}") %>">
                   <asp:Image runat="server" ImageUrl=<%#("images/ProductImages/")+Eval("Product_ID") + ".jpg"%> />
                    </a>
            </div>
            <br />
            <asp:Label ID="Product_NameLabel" runat="server" Text='<%# Bind("Product_Name") %>' />
            <br />
            <br />
            <asp:Label ID="Product_InfoLabel" runat="server" Text='<%# Bind("Product_Info") %>' />
            <br />
            <br />
            Price:
            <asp:Label ID="Product_PriceLabel" runat="server" Text='<%# Bind("Product_Price") %>' />
            <br />
            Stock:
            <asp:Label ID="Product_QuantityLabel" runat="server" Text='<%# Bind("Product_Quantity") %>' />
            <br />

        </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1624964_co5027_asg_aConnectionString %>" SelectCommand="SELECT * FROM [Product] WHERE ([Product_ID] = @Product_ID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Product_ID" QueryStringField="Id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:DropDownList ID="DDLQuantity" runat="server" DataTextField="Product_Quantity" CssClass="Button" >
            <asp:ListItem Selected="True"></asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="btnPurchase" runat="server" Text="Buy Now" OnClick="btnPurchase_Click" CssClass="ButtonAdminBack"></asp:Button>
        <br />
    </form>
        </div>
</asp:Content>
