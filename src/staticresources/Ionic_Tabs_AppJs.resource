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
	
	.state('tab', {
		url: "/tab",
		abstract: true,
		templateUrl: "apex/Ionic_Tabs_Tab"
	})
    
    .state('tab.dashboard', {
		url: '/dashboard',
		views: {
			'tab-dashboard': {
				templateUrl: 'apex/Ionic_Tabs_Dashboard',
				controller: 'DashboardCtrl'
			}
		}
	})

	.state('tab.accounts', {
		url: '/accounts',
		views: {
			'tab-accounts': {
				templateUrl: 'apex/Ionic_Tabs_Accounts',
				controller: 'AccountListCtrl'
			}
		}
	})
	
	.state('tab.accounts-detail', {
		url: '/accounts/:accountId',
		views: {
			'tab-accounts': {
				templateUrl: 'apex/Ionic_Tabs_AccountDetail',
				controller: 'AccountDetailCtrl'
			}
		}
    })

	// if none of the above states are matched, use this as the fallback
	$urlRouterProvider.otherwise('/tab/dashboard');
});