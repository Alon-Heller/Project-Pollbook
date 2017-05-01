<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="generic" %>

<!DOCTYPE HTML>
<!--
	Urban by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>Pollbook - Register</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />

        <script type="text/javascript">
            function validateForm() {
                var usernameRegex = /^[a-zA-Z0-9]+$/;
                var username = document.getElementById("txtUser").value;
                if (!usernameRegex.test(username) || username.length < 4 || username.length > 20) {
                    alert("Username is invalid. (Must have between 4 and 20 characters, and contain only numbers and letters)")
                    document.getElementById("txtUser").focus();
                    return false;
                }

                var password = document.getElementById("txtPass").value;
                if (!usernameRegex.test(password) || password.length < 4 || username.length > 20) {
                    alert("Password is invalid. (Must have between 4 and 20 characters, and contain only numbers and letters)")
                    document.getElementById("txtPass").focus();
                    return false;
                }

                var passwordConfirm = document.getElementById("txtPassConfirm").value;
                if (passwordConfirm != password) {
                    alert("Passwords do not match.")
                    document.getElementById("txtPassConfirm").focus();
                    return false;
                }

                var emailRegex = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
                var email = document.getElementById("txtEmail").value;
                if (!emailRegex.test(email) || email.length > 50) {
                    alert("Email Address is invalid. (Must be a valid email address, and have at most 50 characters)")
                    document.getElementById("txtEmail").focus();
                    return false;
                }

                var emailConfirm = document.getElementById("txtEmailConfirm").value;
                if (emailConfirm != email) {
                    alert("Email Addresses do not match.")
                    document.getElementById("txtEmailConfirm").focus();
                    return false;
                }

                var nameRegex = /^[a-zA-Z\s]*$/;
                var fname = document.getElementById("txtFname").value;
                if (!nameRegex.test(fname) || fname.length > 15) {
                    alert("First name is invalid. (Must contain only letters and spaces, and have at most 15 characters)")
                    document.getElementById("txtFname").focus();
                    return false;
                }

                var lname = document.getElementById("txtLname").value;
                if (!nameRegex.test(lname) || lname.length > 15) {
                    alert("Last name is invalid. (Must contain only letters and spaces, and have at most 15 characters)")
                    document.getElementById("txtLname").focus();
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
								<h1>Register</h1>
								<p>Users can publish polls as well as answer them. Guests can only answer polls.</p>
							</header>
                            <div class="6u 12u$">
                                <form id="registerForm" runat="server">
                                    <table>
                                        <tr>
                                            <td>Username: *</td>
                                            <td><asp:TextBox ID="txtUser" runat="server"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td>Password: *</td>
                                            <td><asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td>Confirm Password: *</td>
                                            <td><asp:TextBox ID="txtPassConfirm" runat="server" TextMode="Password"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td>Email Address: *</td>
                                            <td><asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td>Confirm Email Address: *</td>
                                            <td><asp:TextBox ID="txtEmailConfirm" runat="server" TextMode="Email"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td>First Name: </td>
                                            <td><asp:TextBox ID="txtFname" runat="server"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td>Last Name: </td>
                                            <td><asp:TextBox ID="txtLname" runat="server"></asp:TextBox></td>
                                        </tr>
                                    </table>
                                    <p>* = Required fields</p>
                                    <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" OnClientClick="return validateForm();" />
                                </form>
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