package org.wmfc.utils
{
	import mx.utils.StringUtil;

	public class StringUtils
	{
		public static function trim(text:String):String {
			return StringUtil.trim(text);
		}
		
		public static function repeat(str:String, count:int):String {
			return StringUtil.repeat(str, count);
		}
		
		public static function replace(input:String, replace:String, replaceWith:String):String
		{
			//change to StringBuilder
			var sb:String = new String();
			var found:Boolean = false;
			
			var sLen:Number = input.length;
			var rLen:Number = replace.length;
			
			if(input.indexOf(replace) == -1) {
				return input;
			}
			
			for (var i:Number = 0; i < sLen; i++)
			{
				if(input.charAt(i) == replace.charAt(0))
				{   
					found = true;
					for(var j:Number = 0; j < rLen; j++)
					{
						if(!(input.charAt(i + j) == replace.charAt(j)))
						{
							found = false;
							break;
						}
					}
					
					if(found)
					{
						sb += replaceWith;
						i = i + (rLen - 1);
						continue;
					}
				}
				sb += input.charAt(i);
			}
			
			return sb;
		}
		
		public static function left(str:String, len:int):String {
			return str.substr(0, len);
		}
		
		public static function right(str:String, len:int):String {
			return str.substr(str.length - len);
		}
	}
}