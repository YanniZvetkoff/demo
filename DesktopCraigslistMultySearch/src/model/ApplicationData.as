package model
{
	import flash.utils.Dictionary;
	
	import mx.collections.XMLListCollection;
	
	public class ApplicationData
	{
		// We have only static variables in this class
		
		[Bindable]
		public static var changes_yes:Boolean = false;
		
		[Bindable]
		public static var currentSearchTitle:String = "Software Project Flex&Java";		
		[Bindable]
		public static var availableSearches:XMLListCollection = new XMLListCollection();

		[Bindable]
		public static var searchResultItems:XMLListCollection = new XMLListCollection();
		[Bindable]
		public static var deletedItems:XMLListCollection = new XMLListCollection();
		[Bindable]
		public static var favoriteItems:XMLListCollection = new XMLListCollection();
		
		public static var categories:Dictionary = new Dictionary();
		
		
		
		public static function resetSearchResult():void {
			searchResultItems.removeAll();
		}
		
		public static function deleteSearchItem(index:int):void {
			var item:XML;
			item = searchResultItems.getItemAt(index) as XML;
			searchResultItems.removeItemAt(index);
			addDeletedItem(item);
		}
		
		
		public static function deleteDeletedItem(index:int):void {
			var item:XML;
			item = deletedItems.getItemAt(index) as XML;
			deletedItems.removeItemAt(index);
			// Ami sega? Kude da se pribavi? Kude da se saprati deleted item kato go mahame ot deleted?
			//	
		}	
		
		public static function deleteFavoriteItem(index:int):void {
			var item:XML;
			item = favoriteItems.getItemAt(index) as XML;
			favoriteItems.removeItemAt(index);
			addDeletedItem(item);
		}	
		
		public static function moveSearchToFavorite(index:int):void {
			var item:XML;
			item = searchResultItems.getItemAt(index) as XML;
			searchResultItems.removeItemAt(index);
			addFavoriteItem(item);
		}	
		
		public static function moveDeletedToFavorite(index:int):void {
			var item:XML;
			item = deletedItems.getItemAt(index) as XML;
			deletedItems.removeItemAt(index);
			addFavoriteItem(item);
		}
		
		
		public static function addSearchResultItem(value:XML):void {	
			var alreadyInList:Boolean = alreadyInList(value,searchResultItems) ||alreadyInList(value,deletedItems) || alreadyInList(value,favoriteItems)
			if(!alreadyInList)
			{
				searchResultItems.addItem(value);
			}
		}
		
		public static function addFavoriteItem(value:XML):void {			
			if(! alreadyInList(value,favoriteItems)){
				favoriteItems.addItem(value);
			}
		}	
		
		public static function addDeletedItem(value:XML):void {
			if(! alreadyInList(value,deletedItems)){
				deletedItems.addItem(value);
			}
		}			
		
		public static function alreadyInList(value:XML,list:XMLListCollection):Boolean{
			var url:String = value.link;
			for (var i:int; i<list.length; i++){
				var listURL:String = list[i].link;
				if(listURL == url){
					return true;
				}
			}
			
			return false;
		}
		
		
	}
}