<header>
	<nav class="navbar navbar-expand-md navbar-dark"
		style="background-color: aquamarine;">
		<div>
			<b><h3 style="color: tomato">Todo App</h3></b>
		</div>

		<ul class="navbar-nav navbar-collapse justify-content-end">
			<li><a href="<%=request.getContextPath()%>/login"
				class="nav-link"
				style="color: tomato; box-shadow: 2px 2px 2px 2px black"><b>Login</b></a></li>
				&nbsp;&nbsp;
			<li><a href="<%=request.getContextPath()%>/register"
				class="nav-link"
				style="color: tomato; box-shadow: 2px 2px 2px 2px black">Signup</a></li>
		</ul>
	</nav>
</header>