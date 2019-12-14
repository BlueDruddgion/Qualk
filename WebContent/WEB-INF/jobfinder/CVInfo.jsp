<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
  
	<jsp:include page="_head.jsp"></jsp:include>
    <link rel="stylesheet" href="css/cvStyle.css">
    <link rel="stylesheet" href="css/CVInfoStyle.css">
    
  </head>
  <body>
  
  <div class="site-wrap">
  	 
  	 <jsp:include page='_header.jsp'></jsp:include>
  	 <div style="height: 113px;"></div>
  	 
     <section class='cv-header'>
        <div class='container cv-header-container'>
            <div class='row cv-header-row'>
                <div class='cv-header-info'>
                    <h1 class='header-title'>Quoc Anh Truong</h1>
                    <p class='header-info'>Your UserID is teomoney1999</p>
                </div>
                
                <a class='sign-out' href='${ pageContext.request.contextPath }/home'><button type='submit' class='signout-btn active'>Sign Out</button></a>
    
            </div>
        </div>
    </section>

    <section class='cv'>
        <div class='container section-container'>
            <div class='row cv-row'>
                <div class='col-md-3 title'>
                    <h1 class='title-name'>Info</h1>
                </div>
                <div class='col-md-4 info'>
                    <div class='info-part'>
                        <h2 class='info-key'>UserID</h2>
                        <p class='info-value'>teomoney1999</p>
                    </div>
                    <div class='info-part'>
                        <h2 class='info-key'>Full Name</h2>
                        <p class='info-value'>Truong Quoc Anh</p>
                    </div>
                    <div class='info-part'>
                        <h2 class='info-key'>Birthday</h2>
                        <p class='info-value'>25/02/1999</p>
                    </div>
                    <div class='info-part'>
                        <h2 class='info-key'>Address</h2>
                        <p class='info-value'>Yen Hoa, Cau Giay, Ha Noi</p>
                    </div>
                    
                </div>
                <div class='col-md-4 trust-reach'>
                    <div class='info-part'>
                        <h2 class='info-key'>Email</h2>
                        <p class='info-value'>teomoney1999@gmail.com</p>
                    </div>
                    <div class='info-part'>
                        <h2 class='info-key'>Phone</h2>
                        <p class='info-value'>0394521885</p>
                    </div>
                </div>
                <div class='col-md-1 edit-button'>
                    <button class='change-btn'>Edit</button>
                </div>
            </div>
            <div class='separator'></div>
        </div>
        
        <div class='container section-container'>
            <div class='row cv-row'>
                <div class='col-md-3 title'>
                    <h1 class='title-name'>Specialize</h1>
                </div>
                <div class='col-md-4 info'>
                    <div class='info-part'>
                        <h2 class='info-key'>Degree</h2>
                        <p class='info-value'>None</p>
                    </div>
                    <div class='info-part'>
                        <h2 class='info-key'>Experience</h2>
                        <p class='info-value'>2 years</p>
                    </div>
                </div>
                <div class='col-md-4 trust-reach'>
                    <h2 class='info-key'>Expected Salary</h2>
                    <p class='info-value'>100000000$</p>
                </div>
                <div class='col-md-1 edit-button'>
                    <button class='change-btn'>Edit</button>
                </div>
            </div>
            <div class='separator'></div>
        </div>
        
        <div class='container section-container'>
            <div class='row cv-row'>
                <div class='col-md-3 title'>
                    <h1 class='title-name'>Status</h1>
                </div>
                <div class='col-md-9 info'>
                    <h2 class='info-key'>Available</h2>
                    <p class='info-value'>
                        Yes
                    </p>
                    <h2 class='info-key'>Creative Area</h2>
                    <p class='info-value'>
                        <a href='javascript:void(0)'><button class='upload-btn'>Upload your CV info</button></a>
                    </p>
                    <h2 class='info-key'>Cover letter</h2>
                    <p class='info-value'>
                        <textarea class='text-area' rows="10" cols="50" placeholder='Detail and specific example will make your application stronger'></textarea>
                    </p>
                </div>
            </div>

        </div>
    </section>
	
	<jsp:include page='_footer.jsp'></jsp:include>
	    
  </div>


    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/jquery-migrate-3.0.1.min.js"></script>
    <script src="js/jquery-ui.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.stellar.min.js"></script>
    <script src="js/jquery.countdown.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/bootstrap-datepicker.min.js"></script>
    <script src="js/aos.js"></script>
  
    
    <script src="js/mediaelement-and-player.min.js"></script>
  
    <script src="js/main.js"></script>
      
  
    <script>
        document.addEventListener('DOMContentLoaded', function() {
                  var mediaElements = document.querySelectorAll('video, audio'), total = mediaElements.length;
  
                  for (var i = 0; i < total; i++) {
                      new MediaElementPlayer(mediaElements[i], {
                          pluginPath: 'https://cdn.jsdelivr.net/npm/mediaelement@4.2.7/build/',
                          shimScriptAccess: 'always',
                          success: function () {
                              var target = document.body.querySelectorAll('.player'), targetTotal = target.length;
                              for (var j = 0; j < targetTotal; j++) {
                                  target[j].style.visibility = 'visible';
                              }
                    }
                  });
                  }
              });
      </script>
  
  
      <script>
        // This example displays an address form, using the autocomplete feature
        // of the Google Places API to help users fill in the information.
  
        // This example requires the Places library. Include the libraries=places
        // parameter when you first load the API. For example:
        // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">
  
        var placeSearch, autocomplete;
        var componentForm = {
          street_number: 'short_name',
          route: 'long_name',
          locality: 'long_name',
          administrative_area_level_1: 'short_name',
          country: 'long_name',
          postal_code: 'short_name'
        };
  
        function initAutocomplete() {
          // Create the autocomplete object, restricting the search to geographical
          // location types.
          autocomplete = new google.maps.places.Autocomplete(
              /** @type {!HTMLInputElement} */(document.getElementById('autocomplete')),
              {types: ['geocode']});
  
          // When the user selects an address from the dropdown, populate the address
          // fields in the form.
          autocomplete.addListener('place_changed', fillInAddress);
        }
  
        function fillInAddress() {
          // Get the place details from the autocomplete object.
          var place = autocomplete.getPlace();
  
          for (var component in componentForm) {
            document.getElementById(component).value = '';
            document.getElementById(component).disabled = false;
          }
  
          // Get each component of the address from the place details
          // and fill the corresponding field on the form.
          for (var i = 0; i < place.address_components.length; i++) {
            var addressType = place.address_components[i].types[0];
            if (componentForm[addressType]) {
              var val = place.address_components[i][componentForm[addressType]];
              document.getElementById(addressType).value = val;
            }
          }
        }
  
        // Bias the autocomplete object to the user's geographical location,
        // as supplied by the browser's 'navigator.geolocation' object.
        function geolocate() {
          if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function(position) {
              var geolocation = {
                lat: position.coords.latitude,
                lng: position.coords.longitude
              };
              var circle = new google.maps.Circle({
                center: geolocation,
                radius: position.coords.accuracy
              });
              autocomplete.setBounds(circle.getBounds());
            });
          }
        }
      </script>
    </body>
  </html>