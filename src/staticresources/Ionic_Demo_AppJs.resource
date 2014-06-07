angular.module('sfdc1', ['ionic', 'sfdc1.controllers', 'sfdc1.account_services', 'sfdc1.contact_services', 'sfdc1.user_services'])

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
	
	// Page:Ionic_Tabs
	.state('tab', {
		url: "/tab",
		abstract: true,
		templateUrl: "apex/Ionic_Demo_Tabs"
	})

	// Page:Ionic_AccountList
	.state('tab.accounts', {
		url: '/accounts',
		views: {
			'tab-accounts': {
				templateUrl: 'apex/Ionic_Demo_AccountList',
				controller: 'AccountListCtrl'
			}
		}
	})
	
	// Page:Ionic_AccountDetail
	.state('tab.accounts-detail', {
		url: '/accounts/:accountId',
		views: {
			'tab-accounts': {
				templateUrl: 'apex/Ionic_Demo_AccountDetail',
				controller: 'AccountDetailCtrl'
			}
		}
    })
    
    // Ionic_AccountNew
	.state('tab.new-account', {
		url: '/new/account',
		views: {
			'tab-accounts': {
				templateUrl: 'apex/Ionic_Demo_AccountNew',
				controller: 'AccountNewCtrl'
			}
		}
    })
	
	// Page:Ionic_ContactList
	.state('tab.contacts', {
		url: '/contacts',
		views: {
			'tab-contacts': {
				templateUrl: 'apex/Ionic_Demo_ContactList',
				controller: 'ContactListCtrl'
			}
		}
	})
	
	// Page:Ionic_ContactDetail
	.state('tab.contacts-detail', {
		url: '/contacts/:contactId',
		views: {
			'tab-contacts': {
				templateUrl: 'apex/Ionic_Demo_ContactDetail',
				controller: 'ContactDetailCtrl'
			}
		}
    })
	
	// Page:Ionic_UserList
	.state('tab.users', {
		url: '/users',
		views: {
			'tab-users': {
				templateUrl: 'apex/Ionic_Demo_UserList',
				controller: 'UserListCtrl'
			}
		}
	})
	
	// Page:Ionic_UserDetail
	.state('tab.users-detail', {
		url: '/users/:userId',
		views: {
			'tab-users': {
				templateUrl: 'apex/Ionic_Demo_UserDetail',
				controller: 'UserDetailCtrl'
			}
		}
    })

	// if none of the above states are matched, use this as the fallback
	$urlRouterProvider.otherwise('/tab/accounts');
});