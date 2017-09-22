<%@ page language="java" contentType="text/html;charset=utf-8"%>
<jsp:include page="./includes/header.jsp" flush="true">
	<jsp:param value="로그인" name="title" />
</jsp:include>
<link href="/css/login.css?1" rel="stylesheet">
<div class="ui middle center">
	<form class="ui form segment" id="user_form" onsubmit="return false">
		<h4 class="ui dividing header">로그인</h4>
		<div class="field">
			<label for="user_email">이메일</label> <input type="text"
				name="user_email">
		</div>
		<div class="field">
			<label for="user_pw">비밀번호</label> <input type="password"
				name="user_pw">
		</div>
		<button class="ui primary primary labeled icon fluid button">
			<i class="user outline icon"></i> Sign in
		</button>
	</form>
</div>
<script>
	$('#user_form').form({
		fields : {
			user_email : {
				identifier : 'user_email',
				rules : [ {
					type : 'email',
					prompt : '{name} 형식을 맞춰주세요.'

				}, {
					type : 'maxLength[30]',
					prompt : '{name} 최대 30글자 입력 가능합니다.'
				} ]
			},
			user_pw : {
				identifier : 'user_pw',
				rules : [ {
					type : 'minLength[6]',
					prompt : '{name}는 6 ~ 20 글자 입력 가능합니다.'
				}, {
					type : 'maxLength[20]',
					prompt : '{name}는 6 ~ 20 글자 입력 가능합니다.'
				} ]
			}
		},
		inline : true,
		on : 'blur',
		onSuccess : function() {
			formSuccess(this)
		}
	})
	function ajax(form) {
		post('/login', $(form).serialize(), function(data) {
			switch (data.return_type) {
			case 1:
				alert('성공');
				history.back();
				break;
			default:
				alert('이메일이나 비밀번호를 확인해 주세요.');
				break;
			}
		});
	}
</script>
<!-- onsubmit="return register(this)"-->
<jsp:include page="./includes/footer.jsp" flush="false" />
