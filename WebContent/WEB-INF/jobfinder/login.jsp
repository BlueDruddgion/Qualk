<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
	
    <jsp:include page="_head.jsp"></jsp:include>
    <link rel="stylesheet" href="css/loginStyle.css">
    
  </head>
  
<<<<<<< HEAD
  <div class="site-wrap">
	
	<jsp:include page="_header.jsp"></jsp:include>
=======
    <div style="height: 113px;"></div>

>>>>>>> teomoney
    
    <section class='login-form-section'> 
      <div class="container login-form-container"> 
        <div class="row login-form-row">
<<<<<<< HEAD
          <h2 class='login-title'>Login to <a href='${ pageContext.request.contextPath }/home'>QUALK</a></h2>
          
          <form action='${ pageContext.request.contextPath }/login' method='POST'>
=======
          <h2 class='login-title'>Login to <a href='#'>QUALK</a></h2>
          <form action='${pageContext.request.contextPath}/login' method='POST'>

              <!-- <div class='input-form' id='user-first'>
                  <input class='input'  type='text' placeholder='UserID' name='username'>
                  <button type='submit' id='firstSubmit' class='submit-btn'><i class="fa fa-arrow-circle-right" aria-hidden="true"></i></button>
                  
                </div> -->
>>>>>>> teomoney
            <div class='input-form' id='user' >
              <input class='input'  type='text' placeholder='UserID' name='username' value="${ user.userName }">
            </div>
            <div class='input-form' id='pass' >
              <input class='input' type='password' placeholder='Password' name='password' value="${ user.password }">
              <button type='submit' class='submit-btn' value='Submit' ><i class="fa fa-arrow-circle-right" aria-hidden="true"></i></button>
            </div>
            <p style="color: red;">${ errorString }</p>
            <div class='remember-btn'>
              <input id='remember-checkbox' type='checkbox' name='remenberMe' value='Y'><span id='remember-me'>Remember-me</span>
            </div>
          </form>
          <div id='separator'></div>
          <div class='not-sign-in'>
              <a href='${ pageContext.request.contextPath }/login' class='option'>Forgot UserID or Password</a>
              <div class='option'>Don't have a UserID?<span><a href='${ pageContext.request.contextPath }/createAccount' class='option'> Create your now</a></span>
          </div>

        </div>

	</div>
      </div>

    </section>

<<<<<<< HEAD
	<jsp:include page="_footer.jsp"></jsp:include>
=======
    <footer class="site-footer">
      <div class="container">
        

        <div class="row">
          <div class="col-md-4">
            <h3 class="footer-heading mb-4 text-white">About</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat quos rem ullam, placeat amet.</p>
            <p><a href="#" class="btn btn-primary pill text-white px-4">Read More</a></p>
          </div>
          <div class="col-md-6">
            <div class="row">
              <div class="col-md-6">
                <h3 class="footer-heading mb-4 text-white">Quick Menu</h3>
                  <ul class="list-unstyled">
                    <li><a href="javascript:void(0)">About</a></li>
                    <li><a href="javascript:void(0)">Services</a></li>
                    <li><a href="javascript:void(0)">Approach</a></li>
                    <li><a href="javascript:void(0)">Sustainability</a></li>
                    <li><a href="javascript:void(0)">News</a></li>
                    <li><a href="javascript:void(0)">Careers</a></li>
                  </ul>
              </div>
              <div class="col-md-6">
                <h3 class="footer-heading mb-4 text-white">Categories</h3>
                  <ul class="list-unstyled">
                    <li><a href="javascript:void(0)">Full Time</a></li>
                    <li><a href="javascript:void(0)">Freelance</a></li>
                    <li><a href="javascript:void(0)">Temporary</a></li>
                    <li><a href="javascript:void(0)">Internship</a></li>
                  </ul>
              </div>
            </div>
          </div>

          
          <div class="col-md-2">
            <div class="col-md-12"><h3 class="footer-heading mb-4 text-white">Social Icons</h3></div>
              <div class="col-md-12">
                <p>
                  <a href="#" class="pb-2 pr-2 pl-0"><span class="icon-facebook"></span></a>
                  <a href="#" class="p-2"><span class="icon-twitter"></span></a>
                  <a href="#" class="p-2"><span class="icon-instagram"></span></a>
                  <a href="#" class="p-2"><span class="icon-vimeo"></span></a>

                </p>
              </div>
          </div>
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy; <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>document.write(new Date().getFullYear());</script> All Rights Reserved | This template is made with <i class="icon-heart text-warning" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
          </div>
          
        </div>
      </div>
    </footer>
>>>>>>> teomoney
</div>


  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
    // Use when user enter userID
    function loginForm(){
        var firstInputForm = $('#user-first');
        var user = $('#user');
        var pass = $('#pass');
        var firstSubmit = $('button#firstSubmit');
        var clicked = false;

        // while (!clicked){
        //     firstInputForm.show();
        //     user.hide();
        //     pass.hide();
        //     if ($('#firstSubmit').click()){
        //       clicked = true; 
        //       firstInputForm.hide();
        //       user.show();
        //       pass.slideDown(3000);
        //     }
        // }
        $(function(){
            firstSubmit.click(function(){
                firstInputForm.hide(); 
                user.show();
                pass.slideDown(3000);
            });
        });
        console.log('SUCCESS');


    }
       
       



  
</script>
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