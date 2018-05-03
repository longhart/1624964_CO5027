<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Assignment.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Smart Gadgets Wearable Co.
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


                <div id="left">
                   
                        <h3>Products Overview</h3>
                        <br />
                    <asp:Repeater ID="ProductList" runat="server" DataSourceID="SqlDataSource1">
                     <HeaderTemplate><ul></HeaderTemplate>
                       <ItemTemplate>
                        <li>

                            <div class="img">
                                <a href="<%#Eval("Product_ID","Product1.aspx?Id={0}") %>">
                                    <asp:Image runat="server" ImageUrl=<%#("images/ProductImages/")+Eval("Product_ID") + ".jpg"%>/>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1624964_co5027_asg_aConnectionString %>" SelectCommand="SELECT TOP 6 * FROM [Product] WHERE ([Product_Quantity] &gt;= @Product_Quantity) ORDER BY [Product_Quantity] ASC">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="1" Name="Product_Quantity" QueryStringField="ID" Type="Int32" />
            </SelectParameters>
                        </asp:SqlDataSource>
   </div>
    </form>

                
                <div id="right">
                    <h3>Top selling</h3>
                    <ul>
                        <li>
                            <asp:Repeater runat="server" DataSourceID="SqlDataSource2">
                                <HeaderTemplate><ul></HeaderTemplate>
                       <ItemTemplate>
                        <li>

                            <div class="img">
                                <a href="<%#Eval("Product_ID","Product1.aspx?Id={0}") %>">
                                <asp:Image runat="server" ImageUrl=<%#("images/ProductImages/")+Eval("Product_ID") + ".jpg"%>  />
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

                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_1624964_co5027_asg_aConnectionString %>" SelectCommand="SELECT TOP 3 * FROM [Product] WHERE ([Product_Quantity] &gt;= @Product_Quantity) ORDER BY [Product_Price] DESC">
                                <SelectParameters>
                                    <asp:QueryStringParameter DefaultValue="1" Name="Product_Quantity" QueryStringField="id" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </li>
                    </ul>
                </div>
          

</asp:Content>
