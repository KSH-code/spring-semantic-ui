<%@ page language="java" contentType="text/html;charset=utf-8"%>
<jsp:include page="./includes/header.jsp" flush="true">
	<jsp:param value="메인" name="title" />
</jsp:include>
<link href="/css/index.css?2" rel="stylesheet">
<div class="ui two column stackable grid container board">
	<div class="column">
		<h3 class="ui top attached header grey">개발 게시판</h3>
		<div class="ui divider"></div>
		<div class="ui cards">
			<a class="card block">
				<div class="content">
					<div class="header">Elliot Fu</div>
					<div class="name color_a">김성훈</div>
					<div class="description">Elliot Fu is a film-maker from New
						York.</div>
				</div>
			</a> <a class="card block">
				<div class="content">
					<div class="header">Veronika Ossi</div>
					<div class="name color_a">김성훈</div>
					<div class="description">Veronika Ossi is a set designer
						living in New York who enjoys kittens, music, and partying.</div>
				</div>
			</a> <a class="card block">
				<div class="content">
					<div class="header">Jenny Hess</div>
					<div class="name color_a">김성훈</div>
					<div class="description">Jenny is a student studying Media
						Management at the New School</div>
				</div>
		</div>
		</a>
	</div>
	<div class="column">
		<h3 class="ui top attached header grey">디자인 게시판</h3>
		<div class="ui divider"></div>
		<div class="ui cards">
			<a class="card block">
				<div class="content">
					<div class="header">Elliot Fu</div>
					<div class="name color_a">김성훈</div>
					<div class="description">Elliot Fu is a film-maker from New
						York.</div>
				</div>
			</a> <a class="card block">
				<div class="content">
					<div class="header">Veronika Ossi</div>
					<div class="name color_a">김성훈</div>
					<div class="description">Veronika Ossi is a set designer
						living in New York who enjoys kittens, music, and partying.</div>
				</div>
			</a> <a class="card block">
				<div class="content">
					<div class="header">Jenny Hess</div>
					<div class="name color_a">김성훈</div>
					<div class="description">Jenny is a student studying Media
						Management at the New School</div>
				</div>
			</a>
		</div>
	</div>
</div>
<div class="ui one column stackable grid container board">
	<div class="column">
		<h3 class="ui top attached header grey">자유 게시판</h3>
		<div class="ui divider"></div>
		<div class="ui cards">
			<a class="card block">
				<div class="content">
					<div class="header">Elliot Fu</div>
					<div class="name color_a">김성훈</div>
					<div class="description">Elliot Fu is a film-maker from New
						York.</div>
				</div>
			</a> <a class="card block">
				<div class="content">
					<div class="header">Veronika Ossi</div>
					<div class="name color_a">김성훈</div>
					<div class="description">Veronika Ossi is a set designer
						living in New York who enjoys kittens, music, and partying.</div>
				</div>
			</a> <a class="card block">
				<div class="content">
					<div class="header">Jenny Hess</div>
					<div class="name color_a">김성훈</div>
					<div class="description">Jenny is a student studying Media
						Management at the New School</div>
				</div>
			</a>
		</div>
	</div>
</div>
<jsp:include page="./includes/footer.jsp" flush="false" />
