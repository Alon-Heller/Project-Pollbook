<%@ Page Language="C#" AutoEventWireup="true" CodeFile="results.aspx.cs" Inherits="generic" %>

<!DOCTYPE HTML>
<!--
	Urban by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>Pollbook - Results: <%=PollTitle %></title>
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
								<h1><%=PollTitle %></h1>
                                <p>Poll Results (<%=Count %> entries)</p>
							</header>
                            <div class="6u 12u$">
                                    <table>
                                        <tr></tr>                                     
                                        <tr>
                                            <td>Question 1:</td>
                                            <td><%=Questions[1-1] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><%=Amounts[1-1,0] %></td>
                                            <td><%=Answers[1-1,0] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><%=Amounts[1-1,1] %></td>
                                            <td><%=Answers[1-1,1] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><%=Amounts[1-1,2] %></td>
                                            <td><%=Answers[1-1,2] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><%=Amounts[1-1,3] %></td>
                                            <td><%=Answers[1-1,3] %></td>
                                        </tr>
                                        <tr>
                                            <td>Question 2:</td>
                                            <td><%=Questions[2-1] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><%=Amounts[2-1,0] %></td>
                                            <td><%=Answers[2-1,0] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><%=Amounts[2-1,1] %></td>
                                            <td><%=Answers[2-1,1] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><%=Amounts[2-1,2] %></td>
                                            <td><%=Answers[2-1,2] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><%=Amounts[2-1,3] %></td>
                                            <td><%=Answers[2-1,3] %></td>
                                        </tr>
                                        <tr>
                                            <td>Question 3:</td>
                                            <td><%=Questions[3-1] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><%=Amounts[3-1,0] %></td>
                                            <td><%=Answers[3-1,0] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><%=Amounts[3-1,1] %></td>
                                            <td><%=Answers[3-1,1] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><%=Amounts[3-1,2] %></td>
                                            <td><%=Answers[3-1,2] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><%=Amounts[3-1,3] %></td>
                                            <td><%=Answers[3-1,3] %></td>
                                        </tr>
                                        <tr>
                                            <td>Question 4:</td>
                                            <td><%=Questions[4-1] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><%=Amounts[4-1,0] %></td>
                                            <td><%=Answers[4-1,0] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><%=Amounts[4-1,1] %></td>
                                            <td><%=Answers[4-1,1] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><%=Amounts[4-1,2] %></td>
                                            <td><%=Answers[4-1,2] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><%=Amounts[4-1,3] %></td>
                                            <td><%=Answers[4-1,3] %></td>
                                        </tr>
                                        <tr>
                                            <td>Question 5:</td>
                                            <td><%=Questions[5-1] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><%=Amounts[5-1,0] %></td>
                                            <td><%=Answers[5-1,0] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><%=Amounts[5-1,1] %></td>
                                            <td><%=Answers[5-1,1] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><%=Amounts[5-1,2] %></td>
                                            <td><%=Answers[5-1,2] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><%=Amounts[5-1,3] %></td>
                                            <td><%=Answers[5-1,3] %></td>
                                        </tr>
                                        <tr>
                                            <td>Question 6:</td>
                                            <td><%=Questions[6-1] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><%=Amounts[6-1,0] %></td>
                                            <td><%=Answers[6-1,0] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><%=Amounts[6-1,1] %></td>
                                            <td><%=Answers[6-1,1] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><%=Amounts[6-1,2] %></td>
                                            <td><%=Answers[6-1,2] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><%=Amounts[6-1,3] %></td>
                                            <td><%=Answers[6-1,3] %></td>
                                        </tr>
                                        <tr>
                                            <td>Question 7:</td>
                                            <td><%=Questions[7-1] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><%=Amounts[7-1,0] %></td>
                                            <td><%=Answers[7-1,0] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><%=Amounts[7-1,1] %></td>
                                            <td><%=Answers[7-1,1] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><%=Amounts[7-1,2] %></td>
                                            <td><%=Answers[7-1,2] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><%=Amounts[7-1,3] %></td>
                                            <td><%=Answers[7-1,3] %></td>
                                        </tr>                               
                                        <tr>
                                            <td>Question 8:</td>
                                            <td><%=Questions[8-1] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><%=Amounts[8-1,0] %></td>
                                            <td><%=Answers[8-1,0] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><%=Amounts[8-1,1] %></td>
                                            <td><%=Answers[8-1,1] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><%=Amounts[8-1,2] %></td>
                                            <td><%=Answers[8-1,2] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><%=Amounts[8-1,3] %></td>
                                            <td><%=Answers[8-1,3] %></td>
                                        </tr>

                                    </table>
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