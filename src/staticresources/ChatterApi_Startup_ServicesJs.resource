angular.module('sfdc1.services', [])

.factory('FeedItems', function($q, $rootScope) {
    
    var feedItems;
    
    function query(queryContstraints) {
	
		var deferred = $q.defer();
		ChatterApiStartupControler.getFeedItems(function(result, event){
            feedItems = result;
            deferred.resolve(feedItems);
		});
		
		return deferred.promise;
	}
    
    return {
		all: function() {
            return query();
        }
    }
})