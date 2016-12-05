package model
{
	import flash.utils.Dictionary;
	
	import mx.collections.XMLListCollection;
	import mx.core.FlexGlobals;

	public class ApplicationData
	{
		// We have only static variables in this class
		
//		public static var application:DesktopCraigslistSearch = FlexGlobals.topLevelApplication as DesktopCraigslistSearch;
		[Bindable]
		public static var searchResultItems:XMLListCollection = new XMLListCollection();
		[Bindable]
		public static var deletedItems:XMLListCollection = new XMLListCollection();
		[Bindable]
		public static var favoriteItems:XMLListCollection = new XMLListCollection();
		
		public static var categories:Dictionary = new Dictionary();
		
		public static function defineCategories():void{
			categories["all community"] = "ccc";
			categories["all event"] = "eee";
			categories["all for sale/wanted"] = "sss";
			categories["all gigs"] = "ggg";
			categories["all housing"] = "hhh";
			categories["all jobs"] = "jjj";
			categories["all personals"] = "ppp";
			categories["all resume"] = "res";
			categories["all services offered"] = "bbb";
		}
		
		
		public static function resetSearchResult():void {
			searchResultItems.removeAll();
		}
		
		public static function deleteItem(command:String,index:int):void {
			
			var item:XML;
			
			switch(command)
			{
				case "searchResult":
					item = searchResultItems.getItemAt(index) as XML;
					searchResultItems.removeItemAt(index);
					addDeletedItem(item);
					break;
				case "deleted":
					item = deletedItems.getItemAt(index) as XML;
					deletedItems.removeItemAt(index);
					// Ami sega? Kude da se pribavi? Kude da se saprati deleted item kato go mahame ot deleted?
					//					ApplicationData.addFavoriteItem(item);
					break;
				case "favorites":
					item = favoriteItems.getItemAt(index) as XML;
					favoriteItems.removeItemAt(index);
					addDeletedItem(item);
					break;
				default:
					trace("Out of range");
					break;
			}
		}		
		
		public static function addToFavoritesItem(command:String,index:int):void {
			
			var item:XML;
			
			switch(command)
			{
				case "searchResult":
					item = searchResultItems.getItemAt(index) as XML;
					searchResultItems.removeItemAt(index);
					addFavoriteItem(item);
					break;
				case "deleted":
					item = deletedItems.getItemAt(index) as XML;
					deletedItems.removeItemAt(index);
					addFavoriteItem(item);
					break;
				case "favorites":
					item = favoriteItems.getItemAt(index) as XML;
					favoriteItems.removeItemAt(index);
					addSearchResultItem(item);
					break;
				default:
					trace("Out of range");
					break;
			}
		}				
		
		public static function addDeletedItem(value:XML):void {
			if(! alreadyInList(value,deletedItems)){
				deletedItems.addItem(value);
			}
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