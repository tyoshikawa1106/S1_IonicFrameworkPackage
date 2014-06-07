angular.module('sfdc1.services', [])

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
		get: function(accountId) {
			for (var i = 0; i < accounts.length; i++) {
				var account = accounts[i];
				if (account.Id === accountId) {
					return account;
				}
			}
		}
	}
})