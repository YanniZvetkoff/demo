package services
{
	import mx.controls.Alert;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.HTTPService;

	import controller.ApplicationDispatcher;

	import model.ApplicationData;

	public class TrippleService
	{

		[Bindable]
		public static var activeServices:int = 0;

		private var _httpService:HTTPService = new HTTPService();

		public function TrippleService(URL:String)
		{
			_httpService.resultFormat = "text";
			_httpService.url = URL;
			sendService();
		}

		public function sendService():void
		{
			activeServices++;
			_httpService.addEventListener(ResultEvent.RESULT, resultHandlerRSS);
			_httpService.addEventListener(FaultEvent.FAULT, faultHandler);
			_httpService.send();

			trace("activeServices  sent" + activeServices);
		}

		private function resultHandler(event:ResultEvent):void
		{
			activeServices--;
			var result:String = event.result as String;
			trace(result);
			result = result.substr(result.indexOf("<span class=\"resultcount\">") + 26);
			var numberOfItems:String = result.substring(0, result.indexOf("</span>"));
			var start:int = result.indexOf("<p class=\"row\"");
			result = result.substring(start);
			var end:int = result.indexOf("</div>");
			result = result.substring(0, end);
			var splitResult:Array = result.split("<p class=\"row\"");
			splitResult.forEach(extractData);
			trace("number of results  " + splitResult.length);

			trace("activeServices  result handler " + activeServices);
		}

		protected function resultHandlerRSS(event:ResultEvent):void
		{
			activeServices--;
			var result:String = event.result as String;
			trace(result);
			var splitResult:Array = result.split("<item");
			trace("number of results  " + splitResult.length);
			splitResult.forEach(extractDataRSS);
			if (splitResult.length > 0)
			{
				// show results page
				ApplicationDispatcher.showResultsPage();
			}
		}

		private var faultCount:int = 0;

		protected function faultHandler(event:FaultEvent):void
		{
			activeServices--;
			if (faultCount < 3)
			{
				faultCount++;
				sendService();
			}
			else
			{
				Alert.show("Service error" + event.fault);
			}
		}

		private function extractData(element:*, index:int, a:Array):void
		{

			var strItem:String = "" + element;

			if (strItem.indexOf(" rdf:about") === 0)
			{

				var item:String = '<item' + element;
				item = item.replace("</rdf:RDF>", '');
				item = item.replace("rdf:", "");
				for (var i:int = 0; i < 12; i++)
				{
					item = item.replace("dc:", "dc_");
				}
				item = item.replace("dcterms:", "");
				item = item.replace("dcterms:", "");
				trace("[" + index + "]   " + item);

				var itemXML:XML = new XML(item);
				ApplicationData.addSearchResultItem(itemXML);
				ApplicationData.changes_yes = true;
			}
		}

		private function extractDataRSS(element:*, index:int, a:Array):void
		{

			var strItem:String = "" + element;

			if (strItem.indexOf(" rdf:about") === 0)
			{

				var item:String = '<item' + element;
				item = item.replace("</rdf:RDF>", '');
				item = item.replace("rdf:", "");
				for (var i:int = 0; i < 12; i++)
				{
					item = item.replace("dc:", "dc_");
					item = item.replace("dcterms:", "");
					item = item.replace("enc:", "");
					item = item.replace("ev:", "");
				}

				trace("[" + index + "]   " + item);
				var itemXML:XML = new XML(item);
				ApplicationData.addSearchResultItem(itemXML);
				ApplicationData.changes_yes = true;
			}
		}

	}
}
