<%@ page language="java" contentType="text/html;charset=utf-8"%>
<!doctype html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"
	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	crossorigin="anonymous"></script>
<script src="/js/common.js?1"></script>
<script>
	get('/logout', {}, function(data) {
		console.log(data);
		if (data.return_type == 1) {
			location.href = '/';
		}
	});
</script>
</head>
</html>