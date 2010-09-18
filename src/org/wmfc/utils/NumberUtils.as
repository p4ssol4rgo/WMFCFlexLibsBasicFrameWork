package org.wmfc.utils
{
	public class NumberUtils
	{
		public static function isDigit(char:String):Boolean
		{
			return char == "0" || char == "1" || char == "2" || char == "3" ||
					char == "4" || char == "5" || char == "6" || char == "7" ||
					char == "8" || char == "9";
		}
	}
}