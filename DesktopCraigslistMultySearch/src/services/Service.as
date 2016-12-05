package services
{
	import controller.ApplicationDispatcher;
	
	import model.ApplicationData;
	
	import mx.controls.Alert;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.HTTPService;
	
	//creates only one instance of service
	// save memory, but sometimes doesn' work well
	
	public class Service
	{
		private static var _service:Service = null;
		
		private var _httpService:HTTPService = new HTTPService();
		
		public function Service()
		{
			_httpService.resultFormat = "text";
		}
		
		public static function get service():Service{
			if(_service == null){
				_service =  new Service();
			}
			return _service;
		}
		
		public function sendService(URL:String, resultHandler:Function = null, faultHandler:Function = null):void {
			
			_httpService.url = URL;
			
			if(resultHandler == null) {
				resultHandler = this.resultHandler;
			}			
			if(faultHandler == null) {
				faultHandler = this.faultHandler;
			}
			_httpService.addEventListener(ResultEvent.RESULT, resultHandler);
			_httpService.addEventListener(FaultEvent.FAULT, faultHandler);
			_httpService.send();
		}
		
		
		
		protected function resultHandler(event:ResultEvent):void
		{
			var result:String = event.result as String;
			var splitResult:Array = result.split("<item");
			splitResult.forEach(extractData);
			if(splitResult.length > 0){
				// show results page
				ApplicationDispatcher.showResultsPage();
			}
		}	
		
		protected function faultHandler(event:FaultEvent):void
		{
			Alert.show("Service error" + event.fault);
		}
		
		private function extractData(element:*, index:int, a:Array):void {
			
			var strItem:String = "" + element;
			
			if (strItem.indexOf(" rdf:about") === 0){
				
				var item:String = '<item' + element;
				item = item.replace("</rdf:RDF>",'');
				item = item.replace("rdf:","");
				for (var i:int=0; i<12; i++) {
					item = item.replace("dc:","dc_");
				}
				item = item.replace("dcterms:","");
				item = item.replace("dcterms:","");
				trace("["+ index + "]   "+ item);
				
				var itemXML:XML = new XML(item);
				ApplicationData.addSearchResultItem(itemXML);
			}
		}
			
		
	}
}
