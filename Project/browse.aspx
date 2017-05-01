<%@ Page Language="C#" AutoEventWireup="true" CodeFile="browse.aspx.cs" Inherits="generic" %>

<!DOCTYPE HTML>
<!--
	Urban by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>Pollbook - Browse polls</title>
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
								<h1>Browse All Polls</h1>
								<p>Contribute to the community by answering polls.</p>
                            </header>
                            <form ID="formSearch" runat="server">
                                <div class="row">
						    	    <div class="3u 12u$(medium)"><h4>Search by Title:</h4></div>
                                    <div class="2u 12u$(medium)"><asp:TextBox ID="txtTitle" runat="server"></asp:TextBox></div>
                                    <div class="3u 12u$(medium)"><h4>Search by Author:</h4></div>
                                    <div class="2u 12u$(medium)"><asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox></div>
                                    <div class="2u$ 12u$(medium)"><asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click"></asp:Button></div>
                                </div>
                            </form>

                            <table><%=PollTable %></table>
						</div>
					</section>

			</div>

		<!-- Footer -->
			<footer id="footer">
				<div class="copyright">
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