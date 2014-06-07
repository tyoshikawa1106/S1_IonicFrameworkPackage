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
		templateUrl: "apex/Ionic_Guide_Menu",
		controller: 'AppCtrl'
	})
    
    .state('app.top', {
		url: "/top",
		views: {
			'menuContent' :{
                templateUrl: "apex/Ionic_Guide_Top"
            }
        }
	})

    .state('app.header', {
		url: "/header",
		views: {
			'menuContent' :{
                templateUrl: "apex/Ionic_Guide_Header"
            }
        }
	})

    .state('app.subheader', {
		url: "/subheader",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_SubHeader"
			}
		}
	})
    
    .state('app.content', {
		url: "/content",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_Content"
			}
		}
	})
    
    .state('app.footer', {
		url: "/footer",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_Footer"
			}
		}
	})
    
    .state('app.footerbutton', {
		url: "/footerbutton",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_FooterButton"
			}
		}
	})
    
    .state('app.buttons', {
		url: "/buttons",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_Buttons"
			}
		}
	})
    
    .state('app.blockbuttons', {
		url: "/blockbuttons",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_BlockButtons"
			}
		}
	})
    
    .state('app.fullblockbuttons', {
		url: "/fullblockbuttons",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_FullBlockButtons"
			}
		}
	})
    
    .state('app.differentsizes', {
		url: "/differentsizes",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_DifferentSizes"
			}
		}
	})
    
    .state('app.outlinedbutton', {
		url: "/outlinedbutton",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_OutlinedButton"
			}
		}
	})
    
    .state('app.clearbuttons', {
		url: "/clearbuttons",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_ClearButtons"
			}
		}
	})
    
    .state('app.iconbuttons', {
		url: "/iconbuttons",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_IconButtons"
			}
		}
	})
    
    .state('app.buttonsinheaders', {
		url: "/buttonsinheaders",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_ButtonsInHeaders"
			}
		}
	})
    
    .state('app.clearbuttonsinheaders', {
		url: "/clearbuttonsinheaders",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_ClearButtonsInHeaders"
			}
		}
	})
    
    .state('app.buttonbar', {
		url: "/buttonbar",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_ButtonBar"
			}
		}
	})
    
    .state('app.list', {
		url: "/list",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_List"
			}
		}
	})
    
    .state('app.listdividers', {
		url: "/listdividers",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_ListDividers"
			}
		}
	})
    
    .state('app.listicons', {
		url: "/listicons",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_ListIcons"
			}
		}
	})
    
    .state('app.listbuttons', {
		url: "/listbuttons",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_ListButtons"
			}
		}
	})
    
    .state('app.itemavatars', {
		url: "/itemavatars",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_ItemAvatars"
			}
		}
	})
    
    .state('app.itemthumbnails', {
		url: "/itemthumbnails",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_ItemThumbnails"
			}
		}
	})
    
    .state('app.insetlists', {
		url: "/insetlists",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_InsetLists"
			}
		}
	})
    
    .state('app.cards', {
		url: "/cards",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_Cards"
			}
		}
	})
    
    .state('app.cardheadersandfooters', {
		url: "/cardheadersandfooters",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_CardHeadersAndFooters"
			}
		}
	})
    
    .state('app.cardlists', {
		url: "/cardlists",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_CardLists"
			}
		}
	})
    
    .state('app.cardimages', {
		url: "/cardimages",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_CardImages"
			}
		}
	})
    
    .state('app.cardshowcase', {
		url: "/cardshowcase",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_CardShowcase"
			}
		}
	})
    
    .state('app.inputtypes', {
		url: "/inputtypes",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_InputTypes"
			}
		}
	})
    
    .state('app.placeholderlabels', {
		url: "/placeholderlabels",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_PlaceholderLabels"
			}
		}
	})
    
    .state('app.inlinelabels', {
		url: "/inlinelabels",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_InlineLabels"
			}
		}
	})
    
    .state('app.stackedlabels', {
		url: "/stackedlabels",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_StackedLabels"
			}
		}
	})
    
    .state('app.insetforms', {
		url: "/insetforms",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_InsetForms"
			}
		}
	})
    
    .state('app.inputicons', {
		url: "/inputicons",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_InputIcons"
			}
		}
	})
    
    .state('app.headerinputs', {
		url: "/headerinputs",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_HeaderInputs"
			}
		}
	})
    
    .state('app.toggle', {
		url: "/toggle",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_Toggle"
			}
		}
	})
    
    .state('app.checkbox', {
		url: "/checkbox",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_Checkbox"
			}
		}
	})
    
    .state('app.radiobuttonlist', {
		url: "/radiobuttonlist",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_RadioButtonList"
			}
		}
	})
    
    .state('app.range', {
		url: "/range",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_Range"
			}
		}
	})
    
    .state('app.select', {
		url: "/select",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_Select"
			}
		}
	})
    
    .state('app.tabs', {
		url: "/tabs",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_Tabs"
			}
		}
	})
    
    .state('app.icononlytabs', {
		url: "/icononlytabs",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_IconOnlyTabs"
			}
		}
	})
    
    .state('app.topicontabs', {
		url: "/topicontabs",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_TopIconTabs"
			}
		}
	})
    
    .state('app.lefticontabs', {
		url: "/lefticontabs",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_LeftIconTabs"
			}
		}
	})
    
    .state('app.evenlyspacedcolumns', {
		url: "/evenlyspacedcolumns",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_EvenlySpacedColumns"
			}
		}
	})
    
    .state('app.explicitcolumnsizes', {
		url: "/explicitcolumnsizes",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_ExplicitColumnSizes"
			}
		}
	})
    
    .state('app.offsetcolumns', {
		url: "/offsetcolumns",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_OffsetColumns"
			}
		}
	})
    
    .state('app.verticallyaligncolumns', {
		url: "/verticallyaligncolumns",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_VerticallyAlignColumns"
			}
		}
	})
    
    .state('app.responsivegrid', {
		url: "/responsivegrid",
		views: {
			'menuContent' :{
				templateUrl: "apex/Ionic_Guide_ResponsiveGrid"
			}
		}
	})
	
    // if none of the above states are matched, use this as the fallback
	$urlRouterProvider.otherwise('/app/top');
});