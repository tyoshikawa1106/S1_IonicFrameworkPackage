global with sharing class ChatterApiStartupControler {
    
    global ChatterApiStartupControler() {
        
    }
    
    @RemoteAction
    global static List<ConnectApi.FeedItem> getFeedItems() {
        return ConnectApi.ChatterFeeds.getFeedItemsFromFeed(null, ConnectApi.FeedType.News, 'me').items;
    }
}