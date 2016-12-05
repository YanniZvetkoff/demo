package services
{
	import mx.controls.Alert;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.HTTPService;

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
				resultHandler = httpResult;
			}			
			if(faultHandler == null) {
				faultHandler = httpFault;
			}
			_httpService.addEventListener(ResultEvent.RESULT, resultHandler);
			_httpService.addEventListener(FaultEvent.FAULT, faultHandler);
			_httpService.send();
		}
		
		
		private function httpResult(event:ResultEvent):void {
			var result:Object = event.result;
			Alert.show("" + result);
			//Do something with the result.
		}
		
		private function httpFault(event:FaultEvent):void {
			var faultstring:String = event.fault.faultString;
			Alert.show(faultstring);
		}	
		
	}
}
