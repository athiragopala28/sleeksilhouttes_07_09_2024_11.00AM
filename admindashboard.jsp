<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	HttpSession httpsession = request.getSession(false);
	if (session != null) {
		String userEmail = (String) session.getAttribute("email");
		String userRole = (String) session.getAttribute("role");

		if (userEmail != null && userRole != null) {
			// Set the content type of the response
			/*  response.setContentType("text/html");
			
			 // Write the response content
			 response.getWriter().println("<html><body>");
			 response.getWriter().println("<h1>Welcome to the Dashboard</h1>");
			 response.getWriter().println("<p>Email: " + userEmail + "</p>");
			 response.getWriter().println("<p>Role: " + userRole + "</p>");
			 response.getWriter().println("</body></html>"); */
		} else {
			// Redirect to login page if user is not logged in
			response.sendRedirect("login.jsp");
		}
	} else {
		// Redirect to login page if session is null
		response.sendRedirect("login.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<style>
.navbar-brand {
	flex-grow: 1;
	font-size: 1.5rem;
	text-align: left;
}

.navbar-nav .nav-item {
	margin-right: 10px;
}

.icon-color {
	color: #000000;
}

.btn-black {
	color: #000000;
	border-color: #000000;
	background-color: #ffffff;
}

.btn-black:hover {
	color: #000000;
	background-color: #f0f0f0;
	border-color: #000000;
}

.btn-search {
	color: #000000;
	border-color: #000000;
	background-color: #ffffff;
}

.btn-search:hover {
	color: #000000;
	background-color: #f0f0f0;
	border-color: #000000;
}

.form-control {
	border-color: #4caf50;
}

footer {
	background-color: #f8f9fa;
	padding: 40px 0;
	color: #6c757d;
	border-top: 1px solid #dee2e6;
}

.footer-content {
	display: flex;
	justify-content: space-between;
	gap: 20px;
	flex-wrap: wrap;
}

.footer-section {
	flex: 1;
	min-width: 200px;
}

.footer-section h5 {
	font-weight: bold;
	margin-bottom: 15px;
}

.footer-section ul {
	list-style: none;
	padding: 0;
}

.footer-section ul li {
	margin-bottom: 10px;
}

.footer-section a {
	color: #6c757d;
	text-decoration: none;
}

.footer-section a:hover {
	text-decoration: underline;
}

.social-icons a {
	color: #000000;
	font-size: 20px;
	margin-right: 10px;
}

.social-icons a:hover {
	color: #007bff; /* Change color on hover */
}
</style>
<body>
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Sleek Silhouettes</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">

					<!-- Category Dropdown -->
					<li class="nav-item dropdown">
						<button class="btn btn-outline-black btn-black dropdown-toggle"
							type="button" id="categoryDropdown" data-bs-toggle="dropdown"
							aria-expanded="false">Collections</button>
						<ul class="dropdown-menu" aria-labelledby="categoryDropdown">
							<li><a class="dropdown-item" href="addcollections.jsp">Add
									Collections</a></li>
							<li><a class="dropdown-item" href="viewcollections.jsp">View
									Collections</a></li>
						</ul>
					</li>
					<!-- Category Dropdown -->
					<li class="nav-item dropdown">
						<button class="btn btn-outline-black btn-black dropdown-toggle"
							type="button" id="categoryDropdown" data-bs-toggle="dropdown"
							aria-expanded="false">Materials</button>
						<ul class="dropdown-menu" aria-labelledby="categoryDropdown">
							<li><a class="dropdown-item" href="addmaterial.jsp">Add
									Material</a></li>
							<li><a class="dropdown-item" href="viewmaterial.jsp">View
									Material</a></li>
						</ul>
					</li>
					
					<!-- Category Dropdown -->
					<li class="nav-item dropdown">
						<button class="btn btn-outline-black btn-black dropdown-toggle"
							type="button" id="categoryDropdown" data-bs-toggle="dropdown"
							aria-expanded="false">Product</button>
						<ul class="dropdown-menu" aria-labelledby="categoryDropdown">
							<li><a class="dropdown-item" href="addproduct.jsp">Add
									Product</a></li>
							<li><a class="dropdown-item" href="viewProduct.jsp">View
									Product</a></li>
						</ul>
					</li>
					<li class="nav-item dropdown">
						<button class="btn btn-outline-black btn-black dropdown-toggle"
							type="button" id="categoryDropdown" data-bs-toggle="dropdown"
							aria-expanded="false">Customers</button>
						<ul class="dropdown-menu" aria-labelledby="categoryDropdown">
							<li><a class="dropdown-item" href="viewusers.jsp">View
									Users</a></li>
							<!-- Add more items here if needed -->
						</ul>
					</li>

				</ul>
				<form class="d-flex me-3" role="search">
					<input class="form-control me-2" type="search"
						placeholder="Sleek Silhouettes" aria-label="Sleek Silhouettes">
					<button class="btn btn-search" type="submit">Search</button>
				</form>
				<a href="logout.jsp">
					<button type="button" class="btn btn-black">LogOut</button>
				</a>

			</div>
		</div>
	</nav>


	<style>
.dashboard-card {
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	text-align: center;
	padding: 20px;
	margin: 20px 0;
}

.dashboard-card h5 {
	font-size: 1.5rem;
	margin-bottom: 15px;
}

.dashboard-card p {
	font-size: 1.25rem;
	color: #007bff;
}
</style>
</head>
<body>
	<!-- Navbar code here (as already provided) -->

	<div class="container my-5">
		<div class="row">
			<!-- Registered Users Card -->
			<div class="col-md-3">
				<div class="dashboard-card bg-light">
					<h5>Registered Users</h5>
					<p><%=10%></p>
				</div>
			</div>
			<!-- Total Categories Card -->
			<div class="col-md-3">
				<div class="dashboard-card bg-light">
					<h5>Total Categories</h5>
					<p><%=20%></p>
				</div>
			</div>
			<!-- Total Products Card -->
			<div class="col-md-3">
				<div class="dashboard-card bg-light">
					<h5>Total Products</h5>
					<p><%=30%></p>
				</div>
			</div>
			<!-- Orders Placed Card -->
			<div class="col-md-3">
				<div class="dashboard-card bg-light">
					<h5>Orders Placed</h5>
					<p><%=60%></p>
				</div>
			</div>
		</div>
	</div>


	<style>
.navbar-brand {
	flex-grow: 1;
	font-size: 1.5rem;
	text-align: left;
}

.navbar-nav .nav-item {
	margin-right: 10px;
}

.icon-color {
	color: #000000;
}

.btn-black {
	color: #000000;
	border-color: #000000;
	background-color: #ffffff;
}

.btn-black:hover {
	color: #000000;
	background-color: #f0f0f0;
	border-color: #000000;
}

.btn-search {
	color: #000000;
	border-color: #000000;
	background-color: #ffffff;
}

.btn-search:hover {
	color: #000000;
	background-color: #f0f0f0;
	border-color: #000000;
}

.form-control {
	border-color: #4caf50;
}

footer {
	background-color: #001f3f; /* Navy blue */
	padding: 40px 0;
	color: #ffffff; /* White text color for contrast */
	border-top: 1px solid #dee2e6;
}

.footer-content {
	display: flex;
	justify-content: space-between;
	gap: 20px;
	flex-wrap: wrap;
}

.footer-section {
	flex: 1;
	min-width: 200px;
}

.footer-section h5 {
	font-weight: bold;
	margin-bottom: 15px;
}

.footer-section ul {
	list-style: none;
	padding: 0;
}

.footer-section ul li {
	margin-bottom: 10px;
}

.footer-section a {
	color: #ffffff; /* White link color */
	text-decoration: none;
}

.footer-section a:hover {
	text-decoration: underline;
}

.social-icons a {
	color: #ffffff; /* White icon color */
	font-size: 20px;
	margin-right: 10px;
}

.social-icons a:hover {
	color: #adb5bd; /* Light gray on hover */
}
</style>

	</footer>

	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"></script>
</body>
</html>