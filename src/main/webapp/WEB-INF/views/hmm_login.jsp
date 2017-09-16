<!DOCTYPE html>
<html>
<head>
<title>Google+ JavaScript Quickstart</title>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<script type="text/javascript" src="hello.js"></script>
<script type="text/javascript" src="google_oauth.js"></script>
<meta name="google-signin-client_id"
	content="419809006981-bkqqk1p2e3bhevtice98fcc9efo5fhkp.apps.googleusercontent.com">

</head>
<body>
<button onclick="login()">Google LogIn</button>
<button onclick="logout()">Google Logout</button>

<!-- 
	<div class="g-signin2" data-onsuccess="onSignIn"></div>
	<div class="g-signiout2" data-onsuccess="signOut"></div>
	<script>
	function onSignIn(googleUser) {
		var profile = googleUser.getBasicProfile();
		console.log('Name: ' + profile.getName());
		console.log('Image URL: ' + profile.getImageUrl());
		console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
	}
</script> -->
</body>
</html>
