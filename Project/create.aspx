<%@ Page Language="C#" AutoEventWireup="true" CodeFile="create.aspx.cs" Inherits="generic" %>

<!DOCTYPE HTML>
<!--
	Urban by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>Pollbook - Create a Poll</title>
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
								<h1>Create a Poll</h1>
                                <p>It's (somewhat) quick and easy.</p>
							</header>
                            <div class="6u 12u$">
                                <form id="createForm" runat="server">
                                    <table>
                                        <tr>
                                            <td>Title: </td>
                                            <td><asp:TextBox ID="txtTitle" runat="server"></asp:TextBox></td>
                                        </tr>                                        
                                        <tr>
                                            <td>Question 1:</td>
                                            <td><asp:TextBox ID="txtQ1" runat="server"></asp:TextBox></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td>Answer 1.1:</td>
                                            <td><asp:TextBox ID="txtA11" runat="server"></asp:TextBox></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td>Answer 1.2:</td>
                                            <td><asp:TextBox ID="txtA12" runat="server"></asp:TextBox></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td>Answer 1.3:</td>
                                            <td><asp:TextBox ID="txtA13" runat="server"></asp:TextBox></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td>Answer 1.4:</td>
                                            <td><asp:TextBox ID="txtA14" runat="server"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td>Question 2:</td>
                                            <td><asp:TextBox ID="txtQ2" runat="server"></asp:TextBox></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td>Answer 2.1:</td>
                                            <td><asp:TextBox ID="txtA21" runat="server"></asp:TextBox></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td>Answer 2.2:</td>
                                            <td><asp:TextBox ID="txtA22" runat="server"></asp:TextBox></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td>Answer 2.3:</td>
                                            <td><asp:TextBox ID="txtA23" runat="server"></asp:TextBox></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td>Answer 2.4:</td>
                                            <td><asp:TextBox ID="txtA24" runat="server"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td>Question 3:</td>
                                            <td><asp:TextBox ID="txtQ3" runat="server"></asp:TextBox></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td>Answer 3.1:</td>
                                            <td><asp:TextBox ID="txtA31" runat="server"></asp:TextBox></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td>Answer 3.2:</td>
                                            <td><asp:TextBox ID="txtA32" runat="server"></asp:TextBox></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td>Answer 3.3:</td>
                                            <td><asp:TextBox ID="txtA33" runat="server"></asp:TextBox></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td>Answer 3.4:</td>
                                            <td><asp:TextBox ID="txtA34" runat="server"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td>Question 4:</td>
                                            <td><asp:TextBox ID="txtQ4" runat="server"></asp:TextBox></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td>Answer 4.1:</td>
                                            <td><asp:TextBox ID="txtA41" runat="server"></asp:TextBox></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td>Answer 4.2:</td>
                                            <td><asp:TextBox ID="txtA42" runat="server"></asp:TextBox></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td>Answer 4.3:</td>
                                            <td><asp:TextBox ID="txtA43" runat="server"></asp:TextBox></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td>Answer 4.4:</td>
                                            <td><asp:TextBox ID="txtA44" runat="server"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td>Question 5:</td>
                                            <td><asp:TextBox ID="txtQ5" runat="server"></asp:TextBox></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td>Answer 5.1:</td>
                                            <td><asp:TextBox ID="txtA51" runat="server"></asp:TextBox></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td>Answer 5.2:</td>
                                            <td><asp:TextBox ID="txtA52" runat="server"></asp:TextBox></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td>Answer 5.3:</td>
                                            <td><asp:TextBox ID="txtA53" runat="server"></asp:TextBox></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td>Answer 5.4:</td>
                                            <td><asp:TextBox ID="txtA54" runat="server"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td>Question 6:</td>
                                            <td><asp:TextBox ID="txtQ6" runat="server"></asp:TextBox></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td>Answer 6.1:</td>
                                            <td><asp:TextBox ID="txtA61" runat="server"></asp:TextBox></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td>Answer 6.2:</td>
                                            <td><asp:TextBox ID="txtA62" runat="server"></asp:TextBox></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td>Answer 6.3:</td>
                                            <td><asp:TextBox ID="txtA63" runat="server"></asp:TextBox></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td>Answer 6.4:</td>
                                            <td><asp:TextBox ID="txtA64" runat="server"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td>Question 7:</td>
                                            <td><asp:TextBox ID="txtQ7" runat="server"></asp:TextBox></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td>Answer 7.1:</td>
                                            <td><asp:TextBox ID="txtA71" runat="server"></asp:TextBox></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td>Answer 7.2:</td>
                                            <td><asp:TextBox ID="txtA72" runat="server"></asp:TextBox></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td>Answer 7.3:</td>
                                            <td><asp:TextBox ID="txtA73" runat="server"></asp:TextBox></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td>Answer 7.4:</td>
                                            <td><asp:TextBox ID="txtA74" runat="server"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td>Question 8:</td>
                                            <td><asp:TextBox ID="txtQ8" runat="server"></asp:TextBox></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td>Answer 8.1:</td>
                                            <td><asp:TextBox ID="txtA81" runat="server"></asp:TextBox></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td>Answer 8.2:</td>
                                            <td><asp:TextBox ID="txtA82" runat="server"></asp:TextBox></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td>Answer 8.3:</td>
                                            <td><asp:TextBox ID="txtA83" runat="server"></asp:TextBox></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td>Answer 8.4:</td>
                                            <td><asp:TextBox ID="txtA84" runat="server"></asp:TextBox></td>
                                        </tr>

                                    </table>
                                    <asp:Button ID="btnCreate" runat="server" Text="Create Poll" OnClick="btnCreate_Click" />
                                </form>
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