package org.wmfc.utils.amf.types
{
	public class DateTimeBase
	{
		public static function getDateTime(date:Date):IDateTime {
			return date == null ? null : new DateTimeDTO(date);
		}
		
		public static function getDateTimeDB(date:Date):IDateTime {
			return date == null ? null : new DateTimeDBDTO(date);
		}
	}
}