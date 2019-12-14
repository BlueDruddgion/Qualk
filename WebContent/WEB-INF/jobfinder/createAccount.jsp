<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
	<jsp:include page="_head.jsp"></jsp:include>
    <link rel="stylesheet" href="css/createAccount.css">
    
  </head>
  <body>
  <div class="site-wrap">
    
    <jsp:include page="_header.jsp"></jsp:include>
      
    <div style="height: 113px;"></div>
    <!-- <section class='register'>
        <div class='register-intro'>
            <div class='container register-container'>
                <div class='row register-row'>
                    <h1 class='intro-title'>Create your account</h1>
                </div>
            </div>
        </div>
    </section> -->


    <section class='register-body'>
        <div class='container register-contain'>
            <div class='row register-body-row'>
                <div class='register-body'>
                <form action="${ pageContext.request.contextPath }/createAccount" method="post">  <!-- red -->
                    <div class='script-container'>
                        <p class='script'>Want a job? Create an UserID and find one !</p>
                        <p class='script'>Already have UserID? <a href='${ pageContext.request.contextPath }/list-job'>Let's go and find your perfect job<span><i class="fa fa-chevron-right" aria-hidden="true"></i></span></a></p>
                    </div>
                    <div class='fill-info'>
                        <div class='about-info'>
                            <input class='fill-area name' type='text' placeholder='First Name' name='firstname' value=''>
                            <input class='fill-area name' type='text' placeholder='Last Name' name='lastname' value=''>
                        </div>
                        <p class='title'>Address</p>
                        <div class='place-info'>
                            
                            <input class='fill-area place' type='text' placeholder='Street' name='street'>
                            <input class='fill-area place' type='text' placeholder='District' name='district'>
                            <input class='fill-area place' type='text' placeholder='City' name='city'>
                        </div>

                        <p class='title'>Birthday</p>
                        <div class='birthday'>
                            <select class='birthday-day' id='day'>
                                <option value='1'>1</option>
                                <option value='2'>2</option>
                                <option value='3'>3</option>
                                <option value='4'>4</option>
                                <option value='5'>5</option>
                                <option value='6'>6</option>
                                <option value='7'>7</option>
                                <option value='8'>8</option>
                                <option value='9'>9</option>
                                <option value='10'>10</option>
                                <option value='11'>11</option>
                                <option value='12'>12</option>
                                <option value='13'>13</option>
                                <option value='14'>14</option>
                                <option value='15'>15</option>
                                <option value='16'>16</option>
                                <option value='17'>17</option>
                                <option value='18'>18</option>
                                <option value='19'>19</option>
                                <option value='20'>20</option>
                                <option value='21'>21</option>
                                <option value='22'>22</option>
                                <option value='23'>23</option>
                                <option value='24'>24</option>
                                <option value='25'>25</option>
                                <option value='26'>26</option>
                                <option value='27'>27</option>
                                <option value='28'>28</option>
                                <option value='29'>29</option>
                                <option value='30'>30</option>
                                <option value='31'>31</option>
                            </select>
                            <select class='birthday-month' id='month'>
                                <option value='1'>January</option>
                                <option value='2'>February</option>
                                <option value='3'>March</option>
                                <option value='4'>April</option>
                                <option value='5'>May</option>
                                <option value='6'>June</option>
                                <option value='7'>July</option>
                                <option value='8'>August</option>
                                <option value='9'>September</option>
                                <option value='10'>October</option>
                                <option value='11'>November</option>
                                <option value='12'>December</option>
                            </select>
                            <select class='birthday-year' id='year'>
                                    <option value="2020">2020</option>
                                    <option value="2019">2019</option>
                                    <option value="2018">2018</option>
                                    <option value="2017">2017</option>
                                    <option value="2016">2016</option>
                                    <option value="2015">2015</option>
                                    <option value="2014">2014</option>
                                    <option value="2013">2013</option>
                                    <option value="2012">2012</option>
                                    <option value="2011">2011</option>
                                    <option value="2010">2010</option>
                                    <option value="2009">2009</option>
                                    <option value="2008">2008</option>
                                    <option value="2007">2007</option>
                                    <option value="2006">2006</option>
                                    <option value="2005">2005</option>
                                    <option value="2004">2004</option>
                                    <option value="2003">2003</option>
                                    <option value="2002">2002</option>
                                    <option value="2001">2001</option>
                                    <option value="2000">2000</option>
                                    <option value="1999">1999</option>
                                    <option value="1998">1998</option>
                                    <option value="1997">1997</option>
                                    <option value="1996">1996</option>
                                    <option value="1995">1995</option>
                                    <option value="1994">1994</option>
                                    <option value="1993">1993</option>
                                    <option value="1992">1992</option>
                                    <option value="1991">1991</option>
                                    <option value="1990">1990</option>
                                    <option value="1989">1989</option>
                                    <option value="1988">1988</option>
                                    <option value="1987">1987</option>
                                    <option value="1986">1986</option>
                                    <option value="1985">1985</option>
                                    <option value="1984">1984</option>
                                    <option value="1983">1983</option>
                                    <option value="1982">1982</option>
                                    <option value="1981">1981</option>
                                    <option value="1980">1980</option>
                                    <option value="1979">1979</option>
                                    <option value="1978">1978</option>
                                    <option value="1977">1977</option>
                                    <option value="1976">1976</option>
                                    <option value="1975">1975</option>
                                    <option value="1974">1974</option>
                                    <option value="1973">1973</option>
                                    <option value="1972">1972</option>
                                    <option value="1971">1971</option>
                                    <option value="1970">1970</option>
                                    <option value="1969">1969</option>
                                    <option value="1968">1968</option>
                                    <option value="1967">1967</option>
                                    <option value="1966">1966</option>
                                    <option value="1965">1965</option>
                                    <option value="1964">1964</option>
                                    <option value="1963">1963</option>
                                    <option value="1962">1962</option>
                                    <option value="1961">1961</option>
                                    <option value="1960">1960</option>
                                    <option value="1959">1959</option>
                                    <option value="1958">1958</option>
                                    <option value="1957">1957</option>
                                    <option value="1956">1956</option>
                                    <option value="1955">1955</option>
                                    <option value="1954">1954</option>
                                    <option value="1953">1953</option>
                                    <option value="1952">1952</option>
                                    <option value="1951">1951</option>
                                    <option value="1950">1950</option>
                                    <option value="1949">1949</option>
                                    <option value="1948">1948</option>
                                    <option value="1947">1947</option>
                                    <option value="1946">1946</option>
                                    <option value="1945">1945</option>
                                    <option value="1944">1944</option>
                                    <option value="1943">1943</option>
                                    <option value="1942">1942</option>
                                    <option value="1941">1941</option>
                                    <option value="1940">1940</option>
                                    <option value="1939">1939</option>
                                    <option value="1938">1938</option>
                                    <option value="1937">1937</option>
                                    <option value="1936">1936</option>
                                    <option value="1935">1935</option>
                                    <option value="1934">1934</option>
                                    <option value="1933">1933</option>
                                    <option value="1932">1932</option>
                                    <option value="1931">1931</option>
                                    <option value="1930">1930</option>
                            </select>
                        </div>

                        <div class='separator'></div>
                        <div class='user-info'>
                            <input class='fill-area user' type='text' placeholder="Email" name='email'>
                            <p class= 'user-title'>This is will be your new UserID</p>
                            <input class='fill-area user' type='text' placeholder="UserID" name='userID'>
                            <input class='fill-area user' type='password' placeholder='Password' name='password'>
                            <input class='fill-area user' type='password' placeholder='Confirm Password' name='confirm-password'>
                        </div>
                    </div>
                    <div class='separator'></div>
                    <button type='submit' id='confirm-btn'>Confirm</button>
                </form>
                </div>
            </div>
        </div>
    </section>
	
	<jsp:include page="_footer.jsp"></jsp:include>
			
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