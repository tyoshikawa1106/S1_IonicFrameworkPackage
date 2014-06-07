angular.module('sfdc1.account_services', [])

.factory('Accounts', function($q, $rootScope) {

	var accounts;
	var accountRO = new SObjectModel.Account();

	function query(queryContstraints) {
	
		var deferred = $q.defer();
		accountRO.retrieve(queryContstraints, function(error, records) {
			if (error) {
				deferred.reject(error);
			} else {
				accounts = toJson(records);
				deferred.resolve(accounts);
			}
		});
		
		return deferred.promise;
	}

	function save(accountDetails) {
	
		var deferred = $q.defer();
		var accountRO = new SObjectModel.Account(accountDetails);
		accountRO.create(function(error) {
			if (error) {
				deferred.reject(error);
			} else {
				var acc = toJson([accountRO]);
				accounts.push(acc);
				deferred.resolve();
			}
		});

		return deferred.promise;
	}

	function toJson(records) {
		return records.map(function(r) {
			return r['_props'];
		});
	}

	return {
		all: function() {
			var queryContstraints = {
				limit: 50
			};
			return query(queryContstraints);
		},
		allCached: function() {
			return accounts;
		},
		get: function(accountId) {
			for (var i = 0; i < accounts.length; i++) {
				var account = accounts[i];
				if (account.Id === accountId) {
					return account;
				}
			}
		},
		findByName: function(searchKey) {
			var queryContstraints = {
				where: {
					Name: {
						like: '%' + searchKey + '%'
					}
				},
				limit: 1
			};
	
			return query(queryContstraints);
		},
		save: function(accountDetails) {
			return save(accountDetails);
		}
	}
})