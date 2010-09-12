package org.wmfc.utils.amf.types
{
	import flash.net.registerClassAlias;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	
	import org.wmfc.utils.DateUtils;
	
	public class DateTimeDTO implements IDateTime, IExternalizable
	{
		private var _date:Date;
		
		public function get date():Date
		{
			return _date;
		}
		
		public function set date(value:Date):void
		{
			_date = value;
		}
		
		public function DateTimeDTO(date:Date=null){
			_date = date;
		}
		
		public function writeExternal(output:IDataOutput):void
		{
			if(_date == null) {
				output.writeObject(null);
				return;
			}
			
			output.writeObject(DateUtils.getUTCMilliseconds(_date));
		}
		
		public function readExternal(input:IDataInput):void
		{
			var val:Object = input.readObject();
			
			if(val == null){
				_date = null;
				return;
			}
			
			_date = DateUtils.getDateFromUTCMilliseconds(Number(val));
		}
	}
}