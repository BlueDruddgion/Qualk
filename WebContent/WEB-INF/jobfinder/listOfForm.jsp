<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Job Finder &mdash; Colorlib Website Template</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700|Work+Sans:300,400,700" rel="stylesheet">
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/mediaelement@4.2.7/build/mediaelementplayer.min.css">
    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">  
    <link rel="stylesheet" href="css/aos.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/listJobStyle.css">
    
  </head>
  <body>
    <div class="site-wrap">

        <div class="site-mobile-menu">
          <div class="site-mobile-menu-header">
            <div class="site-mobile-menu-close mt-3">
              <span class="icon-close2 js-menu-toggle"></span>
            </div>
          </div>
          <div class="site-mobile-menu-body"></div>
        </div> <!-- .site-mobile-menu -->
        
        
        <div class="site-navbar-wrap js-site-navbar bg-white">
          
          <div class="container">
            <div class="site-navbar bg-light">
              <div class="py-1">
                <div class="row align-items-center">
                  <div class="col-2">
                    <h2 class="mb-0 site-logo"><a href="index.html">Job<strong class="font-weight-bold">Finder</strong> </a></h2>
                  </div>
                  <div class="col-10">
                    <nav class="site-navigation text-right" role="navigation">
                      <div class="container">
                        <div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>
    
                        <ul class="site-menu js-clone-nav d-none d-lg-block">
                          <li><a href="categories.html">For Candidates</a></li>
                          <li class="has-children">
                            <a href="category.html">For Employees</a>
                            <ul class="dropdown arrow-top">
                              <li><a href="category.html">Category</a></li>
                              <li><a href="#">Browse Candidates</a></li>
                              <li><a href="new-post.html">Post a Job</a></li>
                              <li><a href="#">Employeer Profile</a></li>
                              <li class="has-children">
                                <a href="#">More Links</a>
                                <ul class="dropdown">
                                  <li><a href="#">Browse Candidates</a></li>
                                  <li><a href="#">Post a Job</a></li>
                                  <li><a href="#">Employeer Profile</a></li>
                                </ul>
                              </li>
    
                            </ul>
                          </li>
                          <li><a href="contact.html">Contact</a></li>
                          <li><a href="new-post.html"><span class="bg-primary text-white py-3 px-4 rounded"><span class="icon-plus mr-3"></span>Post New Job</span></a></li>
                        </ul>
                      </div>
                    </nav>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
    
        <div style="height: 113px;"></div>
        <div class="unit-5 overlay" style="background-image: url('images/hero_1.jpg');">
            <div class="container text-center">
                <h2 class="mb-0">Form Lists</h2>
                <p class="mb-0 unit-6"><a href="index.html">Home</a> <span class="sep">></span> <span><a href='#'>For Employers</a></span><span class="sep">></span> <span>Form Lists</span></p></p>
            </div>
        </div>

        <section class='list-job'>
            <div class='container list-job-container'>
                <div class='row search-engine'>
                    <form action='#'>
                        <input class='search-input' type='text' placeholder="Use keyword such as Form Title, Skill, Location">
                        <div class='location'>
                            <select>
                                <option value='HaNoi'>Hà Nội</option>
                                <option value='HCM'>Hồ Chí Minh</option>
                                <option value='DaNang'>Đà Nẵng</option>
                                <option value='other'>Other</option>
                            </select>
                          </div>
                          <button class='search' type='submit'>Search</button>
                    </form>                
                </div>
                <div class='separator' id='for-search'></div>
                <div class='row job-list'>
                    <div class='col-md-9 list-col'>
                        <h2 class='title'>Your company has 10 recruitment forms</h2>
                        <c:forEach var="form" items="${ formList }">
                        <div class='list'>
                            <div class="card">
                                <div class="row ">
                                    <div class="col-md-3">
                                        <img src="https://cdn.itviec.com/employers/nextop-co-ltd/logo/w170/kKyKWApkns1bEBfH1wipimdL/nextop-co-ltd-logo.jpg" class="w-100">
                                    </div>
                                    <div class="col-md-7 px-3">
                                        <div class="card-block px-3">
                                            <a href='file:///Users/teomoney1999/Downloads/jobfinder/job-info.html'><h4 class="card-title">${ form.title }</h4></a>
        
                                            <p class="card-text"><i class="fa fa-usd" aria-hidden="true"></i><span id='salary'>${ form.salary }</span></p>
                                            <p class="card-text" id='script'>${ form.content }</p>
                                            <div class='related'>
                                                <a href='#'><p class='related-item' id='first'>${ form.position }</p></a>
                                                <a href='#'><p class='related-item'>${ form.requirement }</p></a>
                                                <a href='#'><p class='related-item'>${ form.contact }</p></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class='col-md-2'>
                                        <div class='noti'>Hot job</div>
                                        <div class='loca'>${ form.locationID }</div>
                                        <div class='post-time'>${ form.date }</div>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    	</c:forEach>
                    </div>
                    <div class='col-md-3 spotlight'>
                        <h2 class='title' id='spotlight'>Company Spotlight</h2>
                        <a href='#'><div class='spotlight-card'>
                            <img src='images/apexLogo.jpg' style='width:100%'>
                            <div class='spotlight-container container'>
                                <h3 class='company-name'>Apax English</h3>
                                <p class='company-intro'>Apax English là sự kết hợp của Công ty Cổ phần tập đoàn giáo dục EGROUP và Tập đoàn giáo dục Chungdahm Learning nổi tiếng có hơn 200 trung tâm đào tạo trên khắp thế giới</p>
                                <h4 class='job-title'>Available Jobs</h4>
                                <div class='available-jobs'>
                                   
                                    <a href='#'><div class='job'>Fulltime teacher</div></a>
                                   
                                    <a href='#'><div class='job'>Teacher assistant</div></a>
                                   
                                    <a href='#'><div class='job' id='last-job'>Partime teacher</div></a>
                                    <a href='#'><div class='clicked'>Click here for more</div></a>
                                </div>s                                
                            </div>
                        </div></a>
                    </div>
                </div>
            </div>
           
        </section>
       
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
    
      <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&libraries=places&callback=initAutocomplete"
          async defer></script>
    
    </body>
    </html>
      
      
    
    
    
    
        
    
