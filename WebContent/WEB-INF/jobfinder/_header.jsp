<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<div class="site-navbar-wrap js-site-navbar bg-white">
      
      <div class="container">
        <div class="site-navbar bg-light">
          <div class="py-1">
            <div class="row align-items-center">
              <div class="col-2">
                <h2 class="mb-0 site-logo"><a href="${ pageContext.request.contextPath }/home">Job<strong class="font-weight-bold">Finder</strong> </a></h2>
              </div>
              <div class="col-10">
                <nav class="site-navigation text-right" role="navigation">
                  <div class="container">
                    <div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3"><a href="javascript:void(0)" class="site-menu-toggle js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>

                    <ul class="site-menu js-clone-nav d-none d-lg-block">
                      <li><a href="${ pageContext.request.contextPath }/categories">For Candidates</a></li>
                      <li class="has-children">
                        <a href="javascript:void(0)">For Employees</a>
                        <ul class="dropdown arrow-top">
                          <%-- <li><a href="${ pageContext.request.contextPath }/categories">Category</a></li>
                          <li><a href="${ pageContext.request.contextPath }/teacherList">Browse Candidates</a></li> --%>
                          <%-- <li><a href="${ pageContext.request.contextPath }/new-post">Post a Job</a></li> --%>
                          <li><a href="${ pageContext.request.contextPath }/blog">Blog</a></li>
                          <li><a href="${ pageContext.request.contextPath }/createAccount">Create New Account</a></li>
                          <li><a href="${ pageContext.request.contextPath }/listOfForm">Job List</a></li>
                          <li><a href="${ pageContext.request.contextPath }/companyInfo">Employeer Profile</a></li>
                        </ul>
                      </li>
                      <li><a href="${ pageContext.request.contextPath }/contact">Contact</a></li>
                      <%-- <li><a href="${ pageContext.request.contextPath }/new-post"><span class="bg-primary text-white py-3 px-4 rounded"><span class="icon-plus mr-3"></span>Post New Job</span></a></li> --%>
                      <li id='login-zone'>
                        <a href='${ pageContext.request.contextPath }/CVInfo'>
                          <div class="login-area">
                              <i class="fa fa-user-circle-o" aria-hidden="true"></i>
                            <div class="login-body">
                              <h5 class="login-title">${ user.userName }</h5>
                            </div>
                          </div>
                        </a>
                      </li>
                    </ul>
                  </div>
                </nav>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div style="height: 118px;"></div>

</html>