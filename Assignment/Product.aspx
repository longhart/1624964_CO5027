
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Assignment.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Product Page
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">
    
    
    
    
    <form id="form1" runat="server">

        <div id="seachingleft">
                    <asp:TextBox ID="TextSearch" runat="server" Text="" CssClass="TextBoxSearch"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="search" OnClick="Button1_Click" CssClass="ButtonSearch" />
                       </div>
                    <br />
                    <br />
                    <br />

    <div id="productcontentleft">
    
    <h3>Product List:</h3>
        <br />
    <asp:Repeater ID="ProductList" runat="server" DataSourceID="SqlDataSource1">
        <HeaderTemplate><ul></HeaderTemplate>
        <ItemTemplate>
            <li>
              <div class="img">
                  <a href="<%#Eval("Product_ID","Product1.aspx?Id={0}") %>">
                   <asp:Image runat="server" ImageUrl=<%#("images/ProductImages/")+Eval("Product_ID") + ".jpg"%> />
                      </a>
                   </div>
                   <div class="info">
                   <a class="title" href="<%#Eval("Product_ID","Product1.aspx?Id={0}") %>"> <%#Eval("Product_Name") %></a>     
                   <div class="price">               
                  <a class="st" href="<%#Eval("Product_ID","Product1.aspx?Id={0}") %>">$<%#string.Format("{0:n2}",Eval("Product_Price")) %></a></div>
              </div>
            </li>
        </ItemTemplate>
        <FooterTemplate></ul></FooterTemplate>
    </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1624964_co5027_asg_aConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
        </div>
    </form>
        
        
</asp:Content>
