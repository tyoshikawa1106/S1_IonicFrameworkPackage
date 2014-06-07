angular.module('starter', ['ionic', 'starter.controllers'])

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

    .state('app', {
		url: "/app",
		abstract: true,
		templateUrl: "apex/Ionic_Side_Menu",
		controller: 'AppCtrl'
	})

    .state('app.search', {
		url: "/search",
		views: {
			'menuContent' :{
                templateUrl: "apex/Ionic_Side_Search"
            }
        }
	})

    .state('app.browse', {
		url: "/browse",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Side_Browse"
			}
		}
	})
    
    .state('app.playlists', {
		url: "/playlists",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Side_Playlists",
				controller: 'PlaylistsCtrl'
			}
		}
    })

    .state('app.single', {
		url: "/playlists/:playlistId",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Side_Playlist",
				controller: 'PlaylistCtrl'
			}
		}
	});
	
    // if none of the above states are matched, use this as the fallback
	$urlRouterProvider.otherwise('/app/playlists');
});