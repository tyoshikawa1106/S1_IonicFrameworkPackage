angular.module('sfdc1.controllers', [])

.controller('ChatterApiStartupCtrl', function($scope, FeedItems, $location, $rootScope) {
    FeedItems.all().then(function(feedItems) {
		$scope.feedItems = feedItems;
	});
})