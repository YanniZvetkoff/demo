package controller
{
	import model.ApplicationData;
	import model.StoredData;

	import mx.collections.XMLListCollection;
	import mx.controls.Alert;
	import mx.events.CloseEvent;

	public class ApplicationDispatcher
	{
		// we can get the reference to the Application in different ways, here we are just passing it starting application.
		private static var _application:DesktopCraigslistMultySearch;

		private static var _noSelection:String = "There is no active search";

		[Bindable]
		public static var deleteSearchCommand:String = "deleteSearch";

		public static function startApplication(application:DesktopCraigslistMultySearch):void
		{

			_application = application;

			var activeSearchTitle:String = StoredData.readSearches();
			ApplicationData.currentSearchTitle = activeSearchTitle;
			if (activeSearchTitle === "")
			{
				ApplicationData.currentSearchTitle = _noSelection;
					// open the NewSearch page
			}
			else
			{
				readStoredData(activeSearchTitle);
			}
		}

		public static function readStoredData(activeSearchTitle:String):void
		{

			var freshSearchesLendt:int = StoredData.readStoredData(activeSearchTitle);
			// Now show the user SearchResults or New Search by Keyword	
			if (freshSearchesLendt > 0)
			{
				_application.showSpecificTab(2);
			}
			else
			{
				_application.showSpecificTab(1);
			}

		}

		public static function showResultsPage():void
		{
			if (ApplicationData.searchResultItems.length > 0)
			{
				_application.showSpecificTab(2);
			}
			else
			{
				// do something else
			}
		}

		public static function deleteItem(command:String, index:int):void
		{
			switch (command)
			{
				case deleteSearchCommand:
					var anAlert:Alert = Alert.show("Are you sure you want to delete the search? \n It will delete all the search results \n and cannot be undone",
												   "Delete selected search", Alert.YES | Alert.NO, _application, deleteSearchListener,
												   null, Alert.YES);
					anAlert.data = { index: index };
					break;
				case "searchResult":
					ApplicationData.deleteSearchItem(index);
					ApplicationData.changes_yes = true;
					break;
				case "deleted":
					ApplicationData.deleteDeletedItem(index);
					ApplicationData.changes_yes = true;
					break;
				case "favorites":
					ApplicationData.deleteFavoriteItem(index);
					ApplicationData.changes_yes = true;
					break;
				default:
					trace("Out of range");
					break;
			}
		}

		public static function deleteAllSelection(command:String, isTitle:Boolean, selection:String):void
		{

			var collection:XMLListCollection;

			switch (command)
			{
				case "searchResult":
					collection = ApplicationData.searchResultItems;
					break;
				case "favorites":
					collection = ApplicationData.favoriteItems;
					break;
				default:
					trace("Out of range");
					return;
			}

			for (var index:int = collection.length - 1; index > -1; index--)
			{

				var node:XML = collection.getItemAt(index) as XML;
				var title:String = node.title;
				var description:String = node.description;

				if ((title.indexOf(selection) > -1 && isTitle) || (description.indexOf(selection) > -1 && !isTitle))
				{

					deleteItem(command, index);

				}
			}

		}

		private static function deleteSearchListener(eventObj:CloseEvent):void
		{

			var index:int = eventObj.currentTarget.data.index;
			var item:XML = ApplicationData.availableSearches.getItemAt(index) as XML;
			// Check to see if the OK button was pressed.
			if (eventObj.detail == Alert.YES)
			{
				// TODO if selected search is active, remove dataprovider from all datagrids

				// TODO we will remove the record for all items from the disk
				// if we remove an active search 
				if (item.is_selected == "yes")
				{
					ApplicationData.currentSearchTitle = _noSelection;
					ApplicationData.deletedItems.removeAll();
					ApplicationData.favoriteItems.removeAll();
					ApplicationData.searchResultItems.removeAll();
				}

				ApplicationData.availableSearches.removeItemAt(index);
				// save changes to the disk
				StoredData.saveSearches();
				StoredData.deleteSearch(item.id);

			}
			else if (eventObj.detail == Alert.NO)
			{
				// do nothing
			}

		}

		public static function addToFavoriteItem(command:String, index:int):void
		{

			switch (command)
			{
				case "searchResult":
					ApplicationData.moveSearchToFavorite(index);
					ApplicationData.changes_yes = true;
					break;
				case "deleted":
					ApplicationData.moveDeletedToFavorite(index);
					ApplicationData.changes_yes = true;
					break;
				default:
					trace("Out of range");
					break;
			}
		}

		public static function addNewSearch(searchTitle:String, searchDescription:String):void
		{

			var searches:XMLListCollection = ApplicationData.availableSearches;

			var id:String = searchTitle;
			while (id.indexOf(" ") > -1)
			{
				id = id.replace(" ", "");
			}

			// we have to see if the name already exist and deselect all searches in the list

			// see if the name already exist
			for each (var node:XML in searches)
			{
				if (node.id == id)
				{
					Alert.show("This name already exist");
					return;
				}
			}

			//deselect search
			for each (node in searches)
			{
				node.is_selected = "";
			}

			// this is a new item
			var search:XML = <item>
					<id/>
					<title/>
					<description/> 
					<keywords/>
					<is_selected>yes</is_selected>
				</item>;

			// creating ID from search description

			search.id = id;
			search.title = searchTitle;
			search.description = searchDescription;

			searches.addItemAt(search, 0);
			ApplicationData.currentSearchTitle = searchTitle;
			// save changes to the disk
			StoredData.saveSearches();

		}

		public static function getSearchID(searchTitle:String):String
		{
			var searches:XMLListCollection = ApplicationData.availableSearches;
			for each (var node:XML in searches)
			{
				if (node.title == searchTitle)
				{
					return node.id;
					break;
				}
			}
			return "";
		}

		public static function saveResults():void
		{
			// we are controlling saving searches in different way, this is only about results
			StoredData.saveResults();
			ApplicationData.changes_yes = false;
		}

		public static function saveChangesSearch(searchTitle:String, searchDescription:String):void
		{
			var searches:XMLListCollection = ApplicationData.availableSearches;
			for each (var node:XML in searches)
			{
				if (node.title == searchTitle)
				{
					node.description = searchDescription;
					break;
				}
			}
			// save changes to the disk
			StoredData.saveSearches();
		}

		public static function activateSelectedSearch(index:int):void
		{

			// Ask if User wants to save changes to previously selected Search
			if (ApplicationData.changes_yes == false)
			{
				activateSearch(index);
				return;
			}

			// if we have unseved changes
			var anAlert:Alert = Alert.show("Some changes in current Search are not saved.\nDo you want to save the results before changing Active Search?",
										   "Save the results", Alert.YES | Alert.NO, _application, activateSearchListener,
										   null, Alert.YES);
			anAlert.data = { index: index };
		}

		private static function activateSearchListener(eventObj:CloseEvent):void
		{

			// Check to see if the OK button was pressed.
			if (eventObj.detail == Alert.YES)
			{
				// save old search data
				StoredData.saveResults();
				ApplicationData.changes_yes = false;

			}
			else if (eventObj.detail == Alert.NO)
			{
				// do nothing
			}

			// now changing the Active Search
			var index:int = eventObj.currentTarget.data.index;
			activateSearch(index);

		}

		private static function activateSearch(index:int):void
		{

			var searches:XMLListCollection = ApplicationData.availableSearches;
			var item:XML = searches.getItemAt(index) as XML;
			var newSearchTitle:String = item.title;
			for each (var node:XML in searches)
			{
				if (node.title == newSearchTitle)
				{
					node.is_selected = "yes";
				}
				else
				{
					node.is_selected = "";
				}
			}

			ApplicationData.currentSearchTitle = newSearchTitle;
			// save Searches changes to the disk
			StoredData.saveSearches();
			// read results for new selected search			
			readStoredData(newSearchTitle);

		}

	}
}
