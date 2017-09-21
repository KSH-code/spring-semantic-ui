<%@ page language="java" contentType="text/html;charset=utf-8"%>
<jsp:include page="./includes/header.jsp" flush="true">
	<jsp:param value="회원가입" name="title" />
</jsp:include>
<link href="/css/reset.css" rel="stylesheet">
<link href="/css/register.css?1" rel="stylesheet">
<div class="ui middle center">
	<form class="ui form segment" id="user_form" onsubmit="return false">
		<h4 class="ui dividing header">회원가입 정보</h4>
		<div class="field">
			<label for="user_email">이메일</label> <input type="text"
				name="user_email">
		</div>
		<div class="field">
			<label for="user_pw">비밀번호</label> <input type="password"
				name="user_pw">
		</div>
		<div class="field">
			<label for="user_name">닉네임</label> <input type="text"
				name="user_name">
		</div>
		<button class="ui big green labeled icon fluid button">
			<i class="signup icon"></i> Sign up
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
			},
			user_name : {
				identifier : 'user_name',
				rules : [ {
					type : 'minLength[2]',
					prompt : '{name}는 2 ~ 10 글자 입력 가능합니다.'
				}, {
					type : 'maxLength[10]',
					prompt : '{name}는 2 ~ 10 글자 입력 가능합니다.'
				} ]
			},
		},
		inline : true,
		on : 'blur', 
		onSuccess: function(){formSuccess(this)}
	})
	function ajax(form) {
		$.post(host+`/register`, $(form).serialize(), data=>{
			console.log(data)
		})
	}
</script>
<!-- onsubmit="return register(this)"-->
<jsp:include page="./includes/footer.jsp" flush="false" />
