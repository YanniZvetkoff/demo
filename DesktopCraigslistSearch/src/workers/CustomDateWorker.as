package workers
{
	import spark.components.gridClasses.GridColumn;

	public class CustomDateWorker
	{
		public function CustomDateWorker()
		{
		}
		
		public static function returnDateFromRSS(value:String):Date{
			
			//2013-11-07T15:56:16-08:00
			var year:String = value.substr(0,4);
			var month:String = value.substr(5,2);
			var day:String = value.substr(8,2);
			var theDate:Date = new Date(year,month,day);
			return theDate;
		}
		
		
		public static function formatDateFromRSS(value:String):String{
			
			//2013-11-07T15:56:16-08:00
			var year:String = value.substr(0,4);
			var month:String = value.substr(5,2);
			var day:String = value.substr(8,2);
			var theDate:String = month + "/" + day + "/" + year;
			return theDate;
		}
		
		public static function compareDates (date1 : Date, date2 : Date) : Number {
			var date1Timestamp : Number = date1.getTime ();
			var date2Timestamp : Number = date2.getTime ();
			var result : Number = -1;
			if (date1Timestamp == date2Timestamp){
				result = 0;
			} else if (date1Timestamp > date2Timestamp){
				result = 1;
			}
			return result;
		}
		
		// Define the sort compare function used by the date column.
		public static function dateCompareFunction(obj1:Object, obj2:Object, gc:GridColumn):int {
			var theDate1:Date = CustomDateWorker.returnDateFromRSS("" + obj1.dc_date);
			var theDate2:Date = CustomDateWorker.returnDateFromRSS("" + obj2.dc_date);
			var result:int = CustomDateWorker.compareDates(theDate1,theDate2);
			return result;
		}
	}
}