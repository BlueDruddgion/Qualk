<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<header class="header">
	<div class="header-block header-block-collapse d-lg-none d-xl-none">
		<button class="collapse-btn" id="sidebar-collapse-btn">
			<i class="fa fa-bars"></i>
		</button>
	</div>
	<div class="header-block header-block-search">
		<form role="search">
			<div class="input-container">
				<i class="fa fa-search"></i> <input type="search"
					placeholder="Search">
				<div class="underline"></div>
			</div>
		</form>
	</div>
	<div class="header-block header-block-buttons"></div>
	<div class="header-block header-block-nav">
		<ul class="nav-profile">
			<li class="profile dropdown"><a class="nav-link dropdown-toggle"
				data-toggle="dropdown" href="#" role="button" aria-haspopup="true"
				aria-expanded="false">
					<div class="img"
						style="background-image: url('https://avatars3.githubusercontent.com/u/3959008?v=3&s=40')">
					</div> <span class="name"> Admin </span>
			</a>
				<div class="dropdown-menu profile-dropdown-menu"
					aria-labelledby="dropdownMenu1">
					<a class="dropdown-item" href="login.html"> <i
						class="fa fa-power-off icon"></i> Logout
					</a>
				</div></li>
		</ul>
	</div>
</header>
<aside class="sidebar">
	<div class="sidebar-container">
		<div class="sidebar-header">
			<a href="index.html" style="text-decoration: none;">
				<div class="brand">
					<div class="logo">
						<span class="l l1"></span> <span class="l l2"></span> <span
							class="l l3"></span> <span class="l l4"></span> <span
							class="l l5"></span>
					</div>
					<span style="padding-left: 10px"> <b>LAKH </b>
					</span>

				</div>
			</a>

		</div>
		<nav class="menu">
			<ul class="sidebar-menu metismenu" id="sidebar-menu">
				<li class="active"><a href="index.html"> <i
						class="fa fa-home"></i> Trang Chủ
				</a></li>
				<li><a href=""> <i class="fa fa-th-large"></i> Quản Lý
						Người Dùng <i class="fa arrow"></i>
				</a>
					<ul class="sidebar-nav">
						<li><a href="teacher-list.html"> Giáo Viên </a></li>
						<li><a href="rescruiment-list.html"> Bài Tuyển Dụng </a></li>
						<li>
					</ul></li>

			</ul>
		</nav>
	</div>
</aside>
