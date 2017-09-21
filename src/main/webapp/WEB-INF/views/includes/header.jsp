
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<title><%=request.getParameter("title")%></title>

<link href="/css/reset.css?1" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/semantic-ui@2.2.13/dist/semantic.min.css">
	
<script src="https://code.jquery.com/jquery-3.1.1.min.js"
	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/semantic-ui@2.2.13/dist/semantic.min.js"></script>

<script src="/js/common.js?1"></script>
<link href="/css/common.css?2" rel="stylesheet">
</head>
<body>
	<div id="skip">
		<header class="ui stackable menu nav">
			<a class="ui button mobile_menu"
				href="javascript:mobileMenu('.mobile_menu','#skip>header>div')">
				<div class="ui big item black">Slide</div>
			</a>
			<div class="left menu">
				<a class="ui button color_black mobile"
					href="javascript:mobileMenu('.mobile_menu','#skip>header>div')">
					<div class="ui big item">Close</div>
				</a> <a class="ui button teal" href="/">
					<div class="ui big item">Home</div>
				</a>
			</div>
			<div class="right menu">
				<div class="right menu">
					<a class="ui green button" href="/register">
						<div class="ui big item">Sign-up</div>
					</a> <a class="ui primary button" href="/login">
						<div class="ui big item">Sign-in</div>
					</a>
				</div>
			</div>
		</header>
	</div>
	<div id="wrapper" class="ui container">