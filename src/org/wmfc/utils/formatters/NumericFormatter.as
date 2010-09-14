package org.wmfc.utils.formatters
{	
	import mx.formatters.NumberFormatter;

	public class NumericFormatter
	{
		
		public static var defaultDecimalSeparator:String = ".";
		public static var defaultThousandSeparator:String = ",";
		
		protected var _decimalSeparator:String = defaultDecimalSeparator;
		public function get decimalSeparator():String
		{
			return _decimalSeparator;
		}

		public function set decimalSeparator(value:String):void
		{
			_decimalSeparator = value;
		}

		protected var _thousandSeparator:String = defaultThousandSeparator;
		public function get thousandSeparator():String
		{
			return _thousandSeparator;
		}

		public function set thousandSeparator(value:String):void
		{
			_thousandSeparator = value;
		}
		
		protected var _decimalPlaces:int = 2;
		public function get decimalPlaces():int
		{
			return _decimalPlaces;
		}

		public function set decimalPlaces(value:int):void
		{
			_decimalPlaces = value;
		}
		
		protected var _rounding:String = "nearest";
		public function get rounding():String
		{
			return _rounding;
		}

		public function set rounding(value:String):void
		{
			_rounding = value;
		}

		
		public function format(value:Number):String 
		{
			var formatter:NumberFormatter = new NumberFormatter();
			
			formatter.precision = _decimalPlaces;
			formatter.rounding = _rounding;
			formatter.decimalSeparatorTo = _decimalSeparator;
			
			formatter.thousandsSeparatorTo = _thousandSeparator;
			
			var returnString:String = formatter.format(value);
			
			if(returnString.substr(0, 1) == ","){
				returnString = ("0" + returnString);
			}
			
			return returnString;
		}
		
		public static function formatDefault(value:Number):String {
			return new NumericFormatter().format(value);
		}
	}
}