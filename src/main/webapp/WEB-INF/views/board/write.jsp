<%@ page language="java" contentType="text/html;charset=utf-8"%>
<jsp:include page="../includes/header.jsp" flush="true">
	<jsp:param value="글 쓰기" name="title" />
</jsp:include>

<div class="ui middle center">
	<form class="ui form segment" id="board_form" onsubmit="return false">
		<h4 class="ui dividing header">글 작성</h4>
		<div class="fields">
			<div class="ui fluid twelve wide">
				<label for="title">제목</label> <input type="text" name="title"
					id="title" class="twelve wide field" placeholder="제목을입력해주세요.">
			</div>
			<div class="ui fluid two wide">
				<select>
					<option value="">게시글 타입 선택</option>
					<option value="1">자유 게시판</option>
					<option value="2">개발 게시판</option>
					<option value="3">디자인 게시판</option>
				</select>
			</div>
		</div>
		<div class="field">
			<label for="content">내용 </label>
			<textarea name="content" id="content" rows="10"
				placeholder="내용을 입력해주세요."></textarea>
		</div>
		<button class="ui primary primary labeled icon fluid button">
			<i class="write outline icon"></i> 작성하기
		</button>
	</form>
</div>
<script>
	$('#board_form').form({
		fields : {
			title : {
				identifier : 'title',
				rules : [ {
					type : 'email',
					prompt : '{name} 형식을 맞춰주세요.'

				}, {
					type : 'maxLength[30]',
					prompt : '{name} 최대 30글자 입력 가능합니다.'
				} ]
			},
			content : {
				identifier : 'content',
				rules : [ {
					type : 'minLength[6]',
					prompt : '{name}는 6 ~ 20 글자 입력 가능합니다.'
				}, {
					type : 'maxLength[20]',
					prompt : '{name}는 6 ~ 20 글자 입력 가능합니다.'
				} ]
			},,
			inline : true,
			on : 'blur',
			onSuccess : function() {
				formSuccess(this)
			}
		})
		function ajax(form) {
			post('/board/write', $(form).serialize(), function(data) {
				switch (data.return_type) {
				case 1:
					alert("성공 하셨습니다");
					location.href = '/';
					break;
				default:
					alert("중복된 이메일 입니다.");
					break;
				}
			});
		}
</script>
<jsp:include page="../includes/footer.jsp" flush="false" />
