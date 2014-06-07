angular.module('sfdc1', ['ionic', 'sfdc1.controllers', 'sfdc1.services'])

.run(function($ionicPlatform) {
	$ionicPlatform.ready(function() {
		if(window.StatusBar) {
			// org.apache.cordova.statusbar required
			StatusBar.styleDefault();
		}
	});
})

.config(function($stateProvider, $urlRouterProvider) {

	$stateProvider

	.state('accounts', {
		url: '/accounts',
		views: {
			'blank-accounts': {
				templateUrl: 'apex/Ionic_Blank_Accounts',
				controller: 'AccountsCtrl'
			}
		}
	})

	// if none of the above states are matched, use this as the fallback
	$urlRouterProvider.otherwise('/accounts');
});