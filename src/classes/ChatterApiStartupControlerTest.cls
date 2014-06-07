@isTest
private class ChatterApiStartupControlerTest {

    static testMethod void ChatterApiStartupControlerTest() {
        
        Test.startTest();
        
        ChatterApiStartupControler cls = new ChatterApiStartupControler();
        
        Test.stopTest();
    }
    
    static testMethod void getFeedItemsTest() {
        
        ConnectApi.FeedItemPage testPage = new ConnectApi.FeedItemPage();
        List<ConnectApi.FeedItem> testItemList = new List<ConnectApi.FeedItem>();
        testItemList.add(new ConnectApi.FeedItem());
        testItemList.add(new ConnectApi.FeedItem());
        testPage.items = testItemList;
        
        // Set the test data
        ConnectApi.ChatterFeeds.setTestGetFeedItemsFromFeed(null, 
                   ConnectApi.FeedType.News, 'me', testPage);
        
        Test.startTest();
        
        List<ConnectApi.FeedItem> results = ChatterApiStartupControler.getFeedItems();
        
        Test.stopTest();
    }
}