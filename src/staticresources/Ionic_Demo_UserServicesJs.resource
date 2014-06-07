angular.module('sfdc1.user_services', [])

.factory('Users', function($q, $rootScope) {

	var users;
	var userRO = new SObjectModel.User();
	
	function query(queryContstraints) {
	
		var deferred = $q.defer();
		userRO.retrieve(queryContstraints, function(error, records) {
			if (error) {
				deferred.reject(error);
			} else {
				users = toJson(records);
				deferred.resolve(users);
			}
		});
		
		return deferred.promise;
	}

	function save(userDetails) {
	
		var deferred = $q.defer();
		var userRO = new SObjectModel.User(userDetails);
		userRO.create(function(error) {
			if (error) {
				deferred.reject(error);
			} else {
				var user = toJson([userRO]);
				user.push(user);
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
				limit: 10
			};
			return query(queryContstraints);
		},
		allCached: function() {
			return users;
		},
		get: function(userId) {
			for (var i = 0; i < users.length; i++) {
				var user = users[i];
				if (user.Id === userId) {
					return user;
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

		save: function(userDetails) {
			return save(userDetails);
		}
	}
})