<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="generic" %>

<!DOCTYPE HTML>
<!--
	Urban by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>Pollbook - Login</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />

        <script type="text/javascript">
            function validateForm() {
                var username = document.getElementById("txtUser").value;
                if (username=="") {
                    alert("Please enter a username.")
                    document.getElementById("txtUser").focus();
                    return false;
                }

                var password = document.getElementById("txtPass").value;
                if (password == "") {
                    alert("Please enter a password.")
                    document.getElementById("txtPass").focus();
                    return false;
                }
            }
        </script>
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
								<h1>Login</h1>
								<p>Users can publish polls as well as answer them. Guests can only answer polls.</p>
							</header>
                            <div class="row">
                                <div class="6u 12u$(medium)">
						    			<h3>Already have an account</h3>
							    		<form id="loginForm" runat="server">
                                            
                                            <table>
                                                <tr></tr>
                                                <tr>
                                                    <td>Username: </td>
                                                    <td><asp:TextBox ID="txtUser" runat="server"></asp:TextBox></td>
                                                </tr>
                                                <tr></tr>
                                                <tr>
                                                    <td>Password: </td>
                                                    <td><asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox></td>
                                                </tr>
                                            </table>
                                            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" OnClientClick="return validateForm();" />
							    		</form>
						    	</div>
						    	<div class="6u$ 12u$(medium)">
							    		<h3>Don't have an account yet?</h3>
							    		<p><a href="register.aspx" class="button big">Register Now!</a></p>
							    </div>
                            </div>
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