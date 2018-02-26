<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Assignment.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">

<div id="main"><!-- Defining submain content section -->
            <section id="content"><!-- Defining the content section #2 -->
                <div id="left">
                    <h3>Products</h3>
                    <ul>
                        <li>
                            <div class="img"><a href="#"><img alt="" src="/images/post1.jpg"></a></div>
                            <div class="info">
                                <a class="title" href="#">Apple Watch Series 3</a>
                                <div class="price">
                                    <span class="st">Our price:</span><strong>$550.00</strong>
                                </div>
                                <div class="actions">
                                    <a href="#">Details</a>
                                    <a href="#">Add to cart</a>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="img"><a href="#"><img alt="" src="images/post2.jpg"></a></div>
                            <div class="info">
                                <a class="title" href="#">Samsung Gear S3</a>
                                <div class="price">
                                    <span class="st">Our price:</span><strong>$250.00</strong>
                                </div>
                                <div class="actions">
                                    <a href="#">Details</a>
                                    <a href="#">Add to cart</a>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="img"><a href="#"><img alt="" src="images/post3.jpg"></a></div>
                            <div class="info">
                                <a class="title" href="#">Ticwatch E</a>
                                <div class="price">
                                    <span class="st">Our price:</span><strong>$350.00</strong>
                                </div>
                                <div class="actions">
                                    <a href="#">Details</a>
                                    <a href="#">Add to cart</a>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="img"><a href="#"><img alt="" src="images/post4.jpg"></a></div>
                            <div class="info">
                                <a class="title" href="#">Product 4</a>
                                <div class="price">
                                    <span class="st">Our price:</span><strong>$550.00</strong>
                                </div>
                                <div class="actions">
                                    <a href="#">Details</a>
                                    <a href="#">Add to cart</a>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="img"><a href="#"><img alt="" src="images/post5.jpg"></a></div>
                            <div class="info">
                                <a class="title" href="#">Product 5</a>
                                <div class="price">
                                    <span class="st">Our price:</span><strong>$250.00</strong>
                                </div>
                                <div class="actions">
                                    <a href="#">Details</a>
                                    <a href="#">Add to cart</a>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="img"><a href="#"><img alt="" src="images/post6.jpg"></a></div>
                            <div class="info">
                                <a class="title" href="#">Product 6</a>
                                <div class="price">
                                    <span class="st">Our price:</span><strong>$350.00</strong>
                                </div>
                                <div class="actions">
                                    <a href="#">Details</a>
                                    <a href="#">Add to cart</a>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </section>
        </div>
</asp:Content>
