angular.module('sfdc1.controllers', [])

.controller('AccountsCtrl', function($scope, Accounts, $location, $rootScope) {
	Accounts.all().then(function(accounts) {
		$scope.accounts = accounts;
	});
})

.controller('AccountDetailCtrl', function($scope, $stateParams, Accounts) {
	$scope.account = Accounts.get($stateParams.accountId);
})