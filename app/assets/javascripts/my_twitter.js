$(document).ready(function() {
	var path = window.location.pathname;

	if (path == '/users/login' || 
			path == '/users/sign_up' || 
			path == '/users/password/new') {
		$('header').css({
			height: 110
		});
	}
});