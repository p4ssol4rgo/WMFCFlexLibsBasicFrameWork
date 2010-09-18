package org.wmfc.utils.formatters
{
	import flash.globalization.DateTimeFormatter;
	
	import mx.formatters.DateFormatter;
	
	public class DateTimeFormatter
	{
		public static var defaultDateFormat:String = "M/D/YYYY";
		public static var defaultDateTimeFormat:String = defaultDateFormat + " JJ:NN:SS";
		
		private static var _defaultFormatter:DateFormatter = new DateFormatter();
		
		public static function formatDateDefault(value:Date):String {
			return format(value, defaultDateFormat);
		}
		
		public static function formatDateTimeDefault(value:Date):String {
			return format(value, defaultDateTimeFormat);
		}
		
		public static function format(value:Date, format:String):String {
			
			if(value == null) {
				return "";
			}
			
			_defaultFormatter.formatString = format;
			
			return _defaultFormatter.format(value);
		}
		
		
	}
}