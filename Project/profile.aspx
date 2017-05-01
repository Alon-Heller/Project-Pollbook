<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="generic" %>

<!DOCTYPE HTML>
<!--
	Urban by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>Pollbook - Profile</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body class="subpage">

		<!-- Header -->
			<header id="header">
                <div class="logo"><%=TopMessage %></div>
				<a href="#menu">Menu</a>
			</header>

		<!-- Nav -->
			<nav id="menu">
				<ul class="links">
					<li><a href="index.aspx">Home</a></li>
					<%=MenuButton %>
					<li><a href="browse.aspx">Browse Polls</a></li>
				</ul>
			</nav>

		<!-- Main -->
			<div id="main">

				<!-- Section -->
					<section class="wrapper">
						<div class="inner">
							<header class="align-center">
								<h1><%=removeEndingSpaces((string)Session["user"]) %>'s Profile</h1>
								<p>View your account details and your polls.</p>
							</header>
                            <div class="row">
						    	<div class="8u 12u$(medium)">
							    		<h3>Your Polls</h3>
                                        <table><%=PollTable %></table>
							    </div>
                                <div class="4u$ 12u$(medium)">
						    			<h3>Information</h3>
							    		<table>
                                            <tr>
                                                <td><strong>Username: </strong></td>
                                                <td><%=Session["user"] %></td>
                                            </tr>
                                            <tr>
                                                <td><strong>Email Address: </strong></td>
                                                <td><%=Session["email"] %></td>
                                            </tr>
                                            <tr>
                                                <td><strong>Full Name: </strong></td>
                                                <td><%=Session["fname"] %> <%=Session["lname"] %></td>
                                            </tr>
							    		</table>
						    	</div>
                            </div>
						</div>
					</section>

			</div>

		<!-- Footer -->
			<footer id="footer">
				<div class="copyright">
					<ul class="icons">
						<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
						<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
						<li><a href="#" class="icon fa-snapchat"><span class="label">Snapchat</span></a></li>
					</ul>
					<p>&copy; Untitled. All rights reserved. Design: <a href="https://templated.co">TEMPLATED</a>. Images: <a href="https://unsplash.com">Unsplash</a>.</p>
				</div>
			</footer>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>