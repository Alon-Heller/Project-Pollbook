<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fillpoll.aspx.cs" Inherits="generic" %>

<!DOCTYPE HTML>
<!--
	Urban by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>Pollbook - Poll: <%=PollTitle %></title>
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
                                <p><%=Creator %>'s Poll</p>
							</header>
                            <div class="6u 12u$">
                                <form id="createForm" runat="server">
                                    <table>
                                        <tr></tr>                                     
                                        <tr>
                                            <td>Question 1:</td>
                                            <td><%=Questions[1-1] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><asp:RadioButton ID="rbA11" Text="1" runat="server" GroupName="Q1"  /></td>
                                            <td><%=Answers[1-1,0] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><asp:RadioButton ID="rbA12" Text="2" runat="server" GroupName="Q1" /></td>
                                            <td><%=Answers[1-1,1] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><asp:RadioButton ID="rbA13" Text="3" runat="server" GroupName="Q1" /></td>
                                            <td><%=Answers[1-1,2] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><asp:RadioButton ID="rbA14" Text="4" runat="server" GroupName="Q1" /></td>
                                            <td><%=Answers[1-1,3] %></td>
                                        </tr>
                                        <tr>
                                            <td>Question 2:</td>
                                            <td><%=Questions[2-1] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><asp:RadioButton ID="rbA21" Text="1" runat="server" GroupName="Q2"  /></td>
                                            <td><%=Answers[2-1,0] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><asp:RadioButton ID="rbA22" Text="2" runat="server" GroupName="Q2" /></td>
                                            <td><%=Answers[2-1,1] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><asp:RadioButton ID="rbA23" Text="3" runat="server" GroupName="Q2" /></td>
                                            <td><%=Answers[2-1,2] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><asp:RadioButton ID="rbA24" Text="4" runat="server" GroupName="Q2" /></td>
                                            <td><%=Answers[2-1,3] %></td>
                                        </tr>
                                        <tr>
                                            <td>Question 3:</td>
                                            <td><%=Questions[3-1] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><asp:RadioButton ID="rbA31" Text="1" runat="server" GroupName="Q3"  /></td>
                                            <td><%=Answers[3-1,0] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><asp:RadioButton ID="rbA32" Text="2" runat="server" GroupName="Q3" /></td>
                                            <td><%=Answers[3-1,1] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><asp:RadioButton ID="rbA33" Text="3" runat="server" GroupName="Q3" /></td>
                                            <td><%=Answers[3-1,2] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><asp:RadioButton ID="rbA34" Text="4" runat="server" GroupName="Q3" /></td>
                                            <td><%=Answers[3-1,3] %></td>
                                        </tr>
                                        <tr>
                                            <td>Question 4:</td>
                                            <td><%=Questions[4-1] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><asp:RadioButton ID="rbA41" Text="1" runat="server" GroupName="Q4"  /></td>
                                            <td><%=Answers[4-1,0] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><asp:RadioButton ID="rbA42" Text="2" runat="server" GroupName="Q4" /></td>
                                            <td><%=Answers[4-1,1] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><asp:RadioButton ID="rbA43" Text="3" runat="server" GroupName="Q4" /></td>
                                            <td><%=Answers[4-1,2] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><asp:RadioButton ID="rbA44" Text="4" runat="server" GroupName="Q4" /></td>
                                            <td><%=Answers[4-1,3] %></td>
                                        </tr>
                                        <tr>
                                            <td>Question 5:</td>
                                            <td><%=Questions[5-1] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><asp:RadioButton ID="rbA51" Text="1" runat="server" GroupName="Q5"  /></td>
                                            <td><%=Answers[5-1,0] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><asp:RadioButton ID="rbA52" Text="2" runat="server" GroupName="Q5" /></td>
                                            <td><%=Answers[5-1,1] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><asp:RadioButton ID="rbA53" Text="3" runat="server" GroupName="Q5" /></td>
                                            <td><%=Answers[5-1,2] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><asp:RadioButton ID="rbA54" Text="4" runat="server" GroupName="Q5" /></td>
                                            <td><%=Answers[5-1,3] %></td>
                                        </tr>
                                        <tr>
                                            <td>Question 6:</td>
                                            <td><%=Questions[6-1] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><asp:RadioButton ID="rbA61" Text="1" runat="server" GroupName="Q6"  /></td>
                                            <td><%=Answers[6-1,0] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><asp:RadioButton ID="rbA62" Text="2" runat="server" GroupName="Q6" /></td>
                                            <td><%=Answers[6-1,1] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><asp:RadioButton ID="rbA63" Text="3" runat="server" GroupName="Q6" /></td>
                                            <td><%=Answers[6-1,2] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><asp:RadioButton ID="rbA64" Text="4" runat="server" GroupName="Q6" /></td>
                                            <td><%=Answers[6-1,3] %></td>
                                        </tr>
                                        <tr>
                                            <td>Question 7:</td>
                                            <td><%=Questions[7-1] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><asp:RadioButton ID="rbA71" Text="1" runat="server" GroupName="Q7"  /></td>
                                            <td><%=Answers[7-1,0] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><asp:RadioButton ID="rbA72" Text="2" runat="server" GroupName="Q7" /></td>
                                            <td><%=Answers[7-1,1] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><asp:RadioButton ID="rbA73" Text="3" runat="server" GroupName="Q7" /></td>
                                            <td><%=Answers[7-1,2] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><asp:RadioButton ID="rbA74" Text="4" runat="server" GroupName="Q7" /></td>
                                            <td><%=Answers[7-1,3] %></td>
                                        </tr>
                                        <tr>
                                            <td>Question 8:</td>
                                            <td><%=Questions[8-1] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><asp:RadioButton ID="rbA81" Text="1" runat="server" GroupName="Q8"  /></td>
                                            <td><%=Answers[8-1,0] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><asp:RadioButton ID="rbA82" Text="2" runat="server" GroupName="Q8" /></td>
                                            <td><%=Answers[8-1,1] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><asp:RadioButton ID="rbA83" Text="3" runat="server" GroupName="Q8" /></td>
                                            <td><%=Answers[8-1,2] %></td>
                                        </tr><tr></tr>
                                        <tr>
                                            <td><asp:RadioButton ID="rbA84" Text="4" runat="server" GroupName="Q8" /></td>
                                            <td><%=Answers[8-1,3] %></td>
                                        </tr>

                                    </table>
                                    <asp:Button ID="btnSubmit" runat="server" Text="Submit Poll" OnClick="btnSubmit_Click" />
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