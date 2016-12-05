package model
{
	import controller.ApplicationDispatcher;

	import flash.filesystem.File;
	import flash.net.SharedObject;

	import mx.controls.Alert;
	import mx.core.FlexGlobals;

	public class StoredData
	{
		// we will create the separated files for searches and for every search as well
		// we will read only one search on time

		// this is the name for the searches
		private static var searches:String = "storedSearches";

		// we have different shred objects for every search 
		private static var sharedObjectName:String;

		private static var deletedItems:String = "deletedItems";

		private static var favoriteItems:String = "favoriteItems";

		private static var searchItems:String = "searchResultItems";

		public static function readSearches():String
		{

			var activeSearchTitle:String = "";
			// looking for saved searches
			// we use the same name for sharedObject and for it's "search" property 
			var searchesSO:SharedObject = SharedObject.getLocal(searches);
			var searchesString:String = searchesSO.data[searches];
			var searchesList:XMLList = new XMLList(searchesString);
			ApplicationData.availableSearches.source = searchesList;

			// now looking for the last active search
			// we will return the first one which "is_selected" == "yes"
			for each (var node:XML in ApplicationData.availableSearches)
			{
				if (node.is_selected == "yes")
				{
					activeSearchTitle = node.title;
					break;
				}
			}

			return activeSearchTitle;
		}

		public static function readStoredData(activeSearchTitle:String):int
		{

			var activeSearchID:String = ApplicationDispatcher.getSearchID(activeSearchTitle);

			var activeSearchSO:SharedObject = SharedObject.getLocal(activeSearchID);

			var deletedListString:String = activeSearchSO.data[deletedItems];
			var deletedList:XMLList = new XMLList(deletedListString);
			ApplicationData.deletedItems.source = deletedList;

			var favoriteListString:String = activeSearchSO.data[favoriteItems];
			var favoriteList:XMLList = new XMLList(favoriteListString);
			ApplicationData.favoriteItems.source = favoriteList;

			var searchListString:String = activeSearchSO.data[searchItems];
			var searchList:XMLList = new XMLList(searchListString);
			ApplicationData.searchResultItems.source = searchList;

			return ApplicationData.searchResultItems.length;

		}

		public static function saveResultsAndExit():void
		{

			saveSearches();
			saveResults();

			// afrer saving results we will close the application
			(FlexGlobals.topLevelApplication as DesktopCraigslistMultySearch).closeApplication();
		}

		public static function saveSearches():void
		{

			var searchesSO:SharedObject = SharedObject.getLocal(searches);
			var searchesList:XMLList = ApplicationData.availableSearches.source;
			var searchesListString:String = searchesList.toString();

			searchesSO.data[searches] = searchesListString;
			searchesSO.flush();
		}

		public static function saveResults():void
		{

			var activeSearchTitle:String = ApplicationData.currentSearchTitle;
			var activeSearchID:String = ApplicationDispatcher.getSearchID(activeSearchTitle);

			var activeSearchSO:SharedObject = SharedObject.getLocal(activeSearchID);

			var deletedList:XMLList = ApplicationData.deletedItems.source;
			var deletedListString:String = deletedList.toString();
			activeSearchSO.data[deletedItems] = deletedListString;

			var favoriteList:XMLList = ApplicationData.favoriteItems.source;
			var favoriteListString:String = favoriteList.toString();
			activeSearchSO.data[favoriteItems] = favoriteListString;

			var searchList:XMLList = ApplicationData.searchResultItems.source;
			var searchListString:String = searchList.toString();
			activeSearchSO.data[searchItems] = searchListString;

			activeSearchSO.flush();

		}

		public static function deleteSearch(searchID:String):void
		{

			var searchSO:SharedObject = SharedObject.getLocal(searchID);
			searchSO.clear();

		}

		private function deleteLSO():void
		{
			// Deletes the SharedObject from the client machine.
			// Next time they log in, they will be a 'first-timer'.
			//			mySO.clear();
		}
	}
}
