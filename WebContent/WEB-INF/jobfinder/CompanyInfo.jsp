<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
	<jsp:include page="_head.jsp"></jsp:include>
    <link rel="stylesheet" href="css/companyInfoStyle.css">
    
  </head>
  <body>
    <div class="site-wrap">
    	<jsp:include page="_header.jsp"></jsp:include>
        
    <div style="height: 113px;"></div>
    <div class="unit-5 overlay" style="background-image: url('images/hero_1.jpg');">
        <div class="container text-center">
            <h2 class="mb-0">Company Info</h2>
            <p class="mb-0 unit-6"><a href="${ pageContext.request.contextPath }/">Home</a> <span class="sep">></span> <span>Company Info</span></p>
        </div>
    </div>
    <section class='company-info'>
        <div class='container company-container'>
            <div class='row company-row'>
                <img class='background-img' src='images/kyrie-img.jpg'>
                <div class='intro-container'>
                    <div class='row card-row'>
                        <div class='col-md-3 avatar-col'>
                            <img class='avatar' src='https://cdn.itviec.com/employers/nextop-co-ltd/logo/w170/kKyKWApkns1bEBfH1wipimdL/nextop-co-ltd-logo.jpg'>
                        </div>
                        <div class='col-md-7 info'>
                            <h1 class='company-name'>NEXTOP CO.,LTD</h1>
                            <div class='list-info'>
                                <div class='info-item'><i class="fa fa-map-marker" aria-hidden="true"></i><span>Cau Giay, Ha Noi</span></div>
                                <div class='info-item-detail'>
                                    <div class='info-item'><i class="fa fa-cog" aria-hidden="true"></i><span>Product</span></div>
                                    <div class='info-item'><i class="fa fa-users" aria-hidden="true"></i><span>51-100</span></div>
                                    <div class='info-item'><img class='icon-img' src='images/japan-flag-icon-16.png'><span>Japan</span></div>
                                </div>
                                <div class='info-item'><i class="fa fa-calendar" aria-hidden="true"></i><span>Monday - Friday</span></div>
                                <div class='info-item'><i class="fa fa-clock-o" aria-hidden="true"></i><span>Extra salary for OT</span></div>
                            </div>
                        </div>
                        <div class='col-md-2 button-col'>
                            <a href='javascript:void(0)'><button class='btn'>Add review</button></a>
                            <a href='javascript:void(0)'><button class='btn'>Report</button></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class='row body-row'>
                <div class='col-md-8 body-col'>
                    <div class='body-container'>
                        <div class='overview-col'>
                                <h2 class='overview'>Overview</h2>
                                <h3 class='title'><a href='javascript:void(0)'>NEXTOP Co., Ltd</a> is a Japanese company</h3>
                                <p class='script'>
                                        NEXTOP Co., Ltd is a solution provider of financial systems of Forex, CFD and its white label systems for over 10 years and focuses on developing crypto currency exchange in next years.
                                </p>
                                <p class='script'>
                                        Headquartered in Tokyo, Japan; we have grown rapidly with continual expansion of 02 software development centers in Hanoi, Vietnam and in Dalian, China consisting of professional advisors, IT experts, engineers and developers.
                                </p>
                                <p class='script'>
                                        With the strategy of speed-oriented, we are seeking for the talented people who willing to take new challenges to drive the company becoming the No.1 in Asia in the financial system consultancy.
                                </p>
                                <div class='separator'></div>
                                <h2 class='overview'>Our key skills</h2>
                                <div class='list-skill'>
                                    <p class='skill-item'>iOS</p>
                                    <p class='skill-item'>C#</p>
                                    <p class='skill-item'>Business</p>
                                    <p class='skill-item'>Java</p>
                                    <p class='skill-item'>OOP</p>
                                    <p class='skill-item'>Project Manager</p>
                                </div> 
                        </div>
                        <div class='separator'></div>
                        <div class='job-col'>
                            <h2 class='overview'>Available Jobs</h2>
                            <c:forEach var="form" items="${ formList }">
                            <div class="card">
                                <div class="row ">
                                    <div class="col-md-3">
                                        <img src="https://cdn.itviec.com/employers/nextop-co-ltd/logo/w170/kKyKWApkns1bEBfH1wipimdL/nextop-co-ltd-logo.jpg" class="w-100">
                                    </div>
                                    <div class="col-md-7 px-3">
                                        <div class="card-block px-3">
                                            <a href='${ pageContext.request.contextPath }/job-info'><h4 class="card-title">${ form.title }</h4></a>
    
                                            <p class="card-text"><i class="fa fa-usd" aria-hidden="true"></i><span id='salary'>${ form.salary }</span></p>
                                            <p class="card-text">${ form.content }</p>
                                            <div class='related'>
                                                <a href='javascript:void(0)'><p class='related-item' id='first'>${ form.position }</p></a>
                                                <a href='javascript:void(0)'><p class='related-item'>${ form.requirement }</p></a>
                                                <a href='javascript:void(0)'><p class='related-item'>${ form.contact }</p></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class='col-md-2'>
                                        <div class='noti'>Hot job</div>
                                        <div class='post-time'>${ form.date }</div>
                                    </div>
                                </div>
                            </div>
                            </c:forEach>
        
                        </div>
                        <div class='separator'></div>
                        <div class='advantage'>
                            <h2 class='overview'>Why You'll Love Working Here</h2>
                            <ol>
                                <li>Office hour: 9am ~ 5pm, Monday to Friday</li>
                                <li>Two months of bonus per year</li>
                                <li>Performance review every 6 months</li>
                            </ol>
                            <div class='separator'></div>
                            <h2 class='overview'>Remuneration</h2>
                            <ul>
                                <li>Salary: Competitive with lucrative add-ons (based on skills and experience);</li>
                                <li>Working hours: 9:00 ~ 17:00 (5 days per week);</li>
                                <li>Excellent Overtime compensation policy;</li>
                                <li>Bonus : Twice a year (equivalent to 2 months salary);</li>
                                <li>Insurance package as regulated by Labor Law;</li>
                                <li>Salary Review: 2 times/year based on employee's performance and contribution;</li>
                                <li>Other benefits as per stated in Vietnamese Labor Law;</li>
                            </ul>
                            <p class='attention'>We would accept application/CV in English only.</p>
                        </div>
                        <div class='separator'></div>
                        <div class='container galary'>
                            <h2 class='overview'>More images about us</h2>
                            <!-- Full-width images with number text -->
                            <div class="mySlides">
                                <div class="numbertext">1 / 3</div>
                                <img src="images/img_1.jpg" style="width:100%">
                            </div>
    
                            <div class="mySlides">
                            <div class="numbertext">2 / 3</div>
                                <img src="images/img_2.jpg" style="width:100%">
                            </div>
    
                            <div class="mySlides">
                            <div class="numbertext">3 / 3</div>
                                <img src="images/img_3.jpg" style="width:100%">
                            </div>
                            
                                <!-- Next and previous buttons -->
                            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                            <a class="next" onclick="plusSlides(1)">&#10095;</a>
    
                            <div class="row thumnail">
                                <div class="column">
                                    <img class="demo cursor" src="images/img_1.jpg" style="width:100%" onclick="currentSlide(1)" alt="The Woods">
                                </div>
                                <div class="column">
                                    <img class="demo cursor" src="images/img_2.jpg" style="width:100%" onclick="currentSlide(2)" alt="Cinque Terre">
                                </div>
                                <div class="column">
                                    <img class="demo cursor" src="images/img_3.jpg" style="width:100%" onclick="currentSlide(3)" alt="Mountains and fjords">
                                </div>
                            </div>
                        </div>
                        <!-- <div class='separator'></div>
                        <div class='location'>
                            <h2 class='overview'>Location</h2>
                            <div class='container location-container'>
                                <iframe allowfullscreen class='map' src='www.google.com/maps/place/Keangnam+Hanoi+Landmark+Tower/' style='width:100%'></iframe>
                                <iframe allowfullscreen="" class="map" data-target="employers--location.map" frameborder="0" height="400px" src="https://www.google.com/maps/embed/v1/place?key=AIzaSyAMccvlWFDk8E9b5Bk6YdPh1ZUht-JPcqU&amp;q=Keangnam+Hanoi+Landmark+Tower%2C+Cau+Giay%2C+Ha+Noi" style="border:0" width="100%"></iframe>
                            </div>
                        </div> -->
                    </div>
                </div>
                <div class='col-md-4 review-col'>
                    <div class='review-container'>
                        <h2 class='overview'>Review</h2>
                        <div class='review'>
                            <h3 class='review-title'>This place is awesome</h3>
                            <div class='star-review'>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                            </div>
                            <p class='review-detail'></p>
                        </div>
                        <div class='separator'></div>
                    </div>
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


      // Use for gallery
        var slideIndex = 1;
        showSlides(slideIndex);

        // Next/previous controls
        function plusSlides(n) {
        showSlides(slideIndex += n);
        }

        // Thumbnail image controls
        function currentSlide(n) {
        showSlides(slideIndex = n);
        }

        function showSlides(n) {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("demo");
        var captionText = document.getElementById("caption");
        if (n > slides.length) {slideIndex = 1}
        if (n < 1) {slideIndex = slides.length}
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex-1].style.display = "block";
        dots[slideIndex-1].className += " active";
        captionText.innerHTML = dots[slideIndex-1].alt;
        }
    </script>
  </body>
</html>