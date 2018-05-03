<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="contactUS.aspx.cs" Inherits="Assignment.contactUS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Smart Gadgets Wearable Co. | Contact Page
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">


        
        <div id="left">
            <form id="form1" runat="server">
            
                <h3>Contact:</h3>
    

        <asp:ValidationSummary runat="server" ID="sumarry"></asp:ValidationSummary>
        <br />
        <p>To Contact us please fill in the field below.</p>
        <br />
        <asp:Label ID="lblEmail" runat="server" Text="Email" AssociatedControlID="txtEmail" CssClass="font"></asp:Label>
        <br />
        <asp:TextBox ID="txtEmail" runat="server" CssClass="TextBox"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ErrorMessage="Email is required" ForeColor="Red" ID="reqEmail" ControlToValidate="txtEmail" Display="None"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator runat="server" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ID="ValidEmail" ForeColor="Red" Display="None" ControlToValidate="txtEmail"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="lblSubject" runat="server" Text="Subject" AssociatedControlID="txtSubject" CssClass="font"></asp:Label>
        <br />
        <asp:TextBox ID="txtSubject" runat="server" CssClass="TextBox"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ErrorMessage="Subject is required" ID="reqSubject" ControlToValidate="txtSubject" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lblBody" runat="server" Text="Body" AssociatedControlID="txtBody" CssClass="font"></asp:Label>
        <br />
        <asp:TextBox ID="txtbody" runat="server" TextMode="MultiLine" CssClass="TextBoxBody"></asp:TextBox><asp:RequiredFieldValidator runat="server" ErrorMessage="Please input your message" ID="reqTxt" ControlToValidate="txtbody" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="btnsend" runat="server" Text="Submit" Onclick="btnsendemail_Click" CssClass="Button" />
        <br />
        <br />
                <br />
        <asp:Literal ID="litResult" runat="server"></asp:Literal>

        </form>
        
        
    

        
        <h3>Location:</h3>
            <br />
            <p>Location to the shop.</p>
            <br />

            <div id="googleMap" style="width:100%;height:400px;"></div>

<script>

function myMap() {
var mapProp= {
    center: new google.maps.LatLng(4.89967899, 114.89707255),
    zoom:15,
};
var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);


    // Animation Marker

marker = new google.maps.Marker({
    map: map,
    draggable: false,
    animation: google.maps.Animation.DROP,
    position: {lat: 4.89967899, lng: 114.89707255}
});
marker.addListener('click', toggleBounce);
    }
   

function toggleBounce() {
    if (marker.getAnimation() !== null) {
        marker.setAnimation(null);
    } else {
        marker.setAnimation(google.maps.Animation.BOUNCE);
    }
}



</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAJMph0GtqnlUDWxSm6-3cysInyHb0eevA&callback=myMap"></script>


</div>

     


</asp:Content>

