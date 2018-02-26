<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Assignment.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Contact Us
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
    
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">
    <div id="main">
    <section id="content">
        <div id="left">
<form action="/action_page.php">
  <fieldset>
    <h3>Personal information:</h3>
    First name:<br>
    <input type="text" name="firstname" value="">
    <br>
    Last name:<br>
    <input type="text" name="lastname" value="">
    <br>
    Subject:<br>
    <input type="text" name="subject" value="">
    <br>
    Message: <br>
    <input type="text" name="message" value="">
    <br><br>
    <input type="submit" value="Submit">
            
  </fieldset>
</form>
</div>

        <div id="left">
        <h3>Location:</h3>

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

        </section>
        </div>
</asp:Content>
