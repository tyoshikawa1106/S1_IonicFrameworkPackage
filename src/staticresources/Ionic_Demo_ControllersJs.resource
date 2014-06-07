angular.module('sfdc1.controllers', [])

// AccountListCtrl
.controller('AccountListCtrl', function($scope, Accounts, $location, $rootScope) {
	Accounts.all().then(function(accounts) {
		$scope.accounts = accounts;
	});
})

// AccountDetailCtrl
.controller('AccountDetailCtrl', function($scope, $stateParams, Accounts) {
	$scope.account = Accounts.get($stateParams.accountId);
})

.controller('AccountNewCtrl', function($scope, $stateParams, Accounts, $location) {
	$scope.noError = true;

	$scope.save = function() {
		Accounts.save({
			Name: $scope.Name,
			AccountNumber: $scope.AccountNumber
		}).then(function() {
			$scope.noError = true;
			$location.path('/tab/accounts');
		}, function(error) {
			$scope.noError = false;
			$scope.error = error.message;
		});
	};
})

// ContactListCtrl
.controller('ContactListCtrl', function($scope, Contacts, $location, $rootScope) {
	Contacts.all().then(function(contacts) {
		$scope.contacts = contacts;
	});
})

// ContactDetailCtrl
.controller('ContactDetailCtrl', function($scope, $stateParams, Contacts) {
	$scope.contact = Contacts.get($stateParams.contactId);
})

// UserListCtrl
.controller('UserListCtrl', function($scope, Users, $location, $rootScope) {
	Users.all().then(function(users) {
		$scope.users = users;
	});
})

// UserCtrl
.controller('UserDetailCtrl', function($scope, $stateParams, Users) {
	$scope.user = Users.get($stateParams.userId);
})
