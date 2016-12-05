package model
{
	import flash.filesystem.File;
	import flash.net.SharedObject;
	
	import mx.core.FlexGlobals;

	public class StoredData
	{
		
		private static var sharedObjectName:String = "craigslistSharedObject";
//		private static var searchName:String =	"searchProject";
//		private static var searchName:String =	"androidProject";
		private static var searchName:String =	"piano";
		
		private static var deletedItems:String = "deletedItems";
		private static var favoriteItems:String = "favoriteItems";
		private static var searchItems:String = "searchResultItems";
		
		private static var mySO:SharedObject;
		
		public static function readStoredData():void{
			mySO = SharedObject.getLocal(sharedObjectName); 
			
			var deleted:String = searchName + "_" + deletedItems;
			var deletedListString:String = mySO.data[deleted];
			var deletedList:XMLList = new XMLList(deletedListString);
			ApplicationData.deletedItems.source = deletedList;
			
			var favorite:String = searchName + "_" + favoriteItems;
			var favoriteListString:String = mySO.data[favorite];
			var favoriteList:XMLList = new XMLList(favoriteListString);
			ApplicationData.favoriteItems.source = favoriteList;
			
			var search:String = searchName + "_" + searchItems;
			var searchListString:String = mySO.data[search];
			var searchList:XMLList = new XMLList(searchListString);
			ApplicationData.searchResultItems.source = searchList;
			
			// mySO.data[searchName];
			
		}
		
		public static function saveResults():void {
			mySO.data[searchName] = searchName;
			
			var deleted:String = searchName + "_" + deletedItems;
			var deletedList:XMLList = ApplicationData.deletedItems.source;
			var deletedListString:String = deletedList.toString();
			mySO.data[deleted] = deletedListString;		
			
			var favorite:String = searchName + "_" + favoriteItems;
			var favoriteList:XMLList = ApplicationData.favoriteItems.source;
			var favoriteListString:String = favoriteList.toString();
			mySO.data[favorite] = favoriteListString;
			
			var search:String = searchName + "_" + searchItems;
			var searchList:XMLList = ApplicationData.searchResultItems.source;
			var searchListString:String = searchList.toString();
			mySO.data[search] = searchListString;
			
			mySO.flush();
			
			// afrer saving results we will close the application
			(FlexGlobals.topLevelApplication as DesktopCraigslistSearch).closeApplication();
		}
		


		
		private function deleteLSO():void {
			// Deletes the SharedObject from the client machine.
			// Next time they log in, they will be a 'first-timer'.
			mySO.clear();
		}		
	}
}