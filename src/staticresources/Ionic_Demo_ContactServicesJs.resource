angular.module('sfdc1.contact_services', [])

.factory('Contacts', function($q, $rootScope) {

	var contacts;
	var contactRO = new SObjectModel.Contact();
	
	function query(queryContstraints) {
	
		var deferred = $q.defer();
		contactRO.retrieve(queryContstraints, function(error, records) {
			if (error) {
				deferred.reject(error);
			} else {
				contacts = toJson(records);
				deferred.resolve(contacts);
			}
		});
		
		return deferred.promise;
	}

	function save(contactDetails) {
	
		var deferred = $q.defer();
		var contactRO = new SObjectModel.Contact(contactDetails);
		contactRO.create(function(error) {
			if (error) {
				deferred.reject(error);
			} else {
				var contact = toJson([contactRO]);
				contact.push(contact);
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
			return contacts;
		},
		get: function(contactId) {
			for (var i = 0; i < contacts.length; i++) {
				var contact = contacts[i];
				if (contact.Id === contactId) {
					return contact;
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

		save: function(contactDetails) {
			return save(contactDetails);
		}
	}
})