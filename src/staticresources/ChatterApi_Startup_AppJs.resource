angular.module('sfdc1', ['ionic', 'sfdc1.controllers', 'sfdc1.services'])

.run(function($ionicPlatform) {
	$ionicPlatform.ready(function() {
		if(window.StatusBar) {
			StatusBar.styleDefault();
		}
	});
})
