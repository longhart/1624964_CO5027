﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Assignment._21" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Smart Gadgets Wearable Co. | Search Page
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
    
        
        <h3> Search Result</h3>
        <br />
        <asp:Literal ID="litSearch" runat="server"></asp:Literal>

    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">

        <HeaderTemplate><ul></HeaderTemplate>
        <ItemTemplate>
            <li>
              <div class="img">
                  <a href="<%#Eval("Product_ID","Product1.aspx?Id={0}") %>">
                   <asp:Image runat="server" alt="Product Image" ImageUrl=<%#("images/ProductImages/")+Eval("Product_ID") + ".jpg"%> />
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

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1624964_co5027_asg_aConnectionString %>" SelectCommand="SELECT * FROM [Product] WHERE ([Product_Name] LIKE '%' + @Product_Name + '%')">
        <SelectParameters>
            <asp:QueryStringParameter Name="Product_Name" QueryStringField="find" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

        </div>
        </form>
        

</asp:Content>
