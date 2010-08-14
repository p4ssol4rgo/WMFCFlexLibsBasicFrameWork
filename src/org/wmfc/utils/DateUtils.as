package org.wmfc.utils
{
	public class DateUtils
	{
		
		private static var contextoTimeZoneVerificado:Boolean = false;
		private static var necessitaTratarBugData:Boolean = false;
		
		public static function getUTCMilliseconds(value:Date):Number {
			
			if(value == null){
				return 0;
			}
			
			return value.valueOf() - (value.getTimezoneOffset() * 60000);
			
		}
		
		public static function getDateFromUTCMilliseconds(value:Number):Date {
			if(isNaN(value)) {
				return null;
			}
			
			var dateUTC:Date = new Date(value);
			
			return new Date(dateUTC.fullYearUTC, dateUTC.monthUTC, dateUTC.dateUTC,
				dateUTC.hoursUTC, dateUTC.minutesUTC, dateUTC.secondsUTC,
				dateUTC.millisecondsUTC);
		}
		
		private static function verificarNecessidadeTratamentoData():Boolean {
			//se nas datas abaixo temos fuso-horários diferentes
			//deduzimos que a opção de ajustar automaticamente ao
			//horário de verão está marcado e (claro) temos horário de verão
			if(!contextoTimeZoneVerificado){
				necessitaTratarBugData = new Date(2010, 11, 1).getTimezoneOffset() !=
											new Date(2010, 6, 1).getTimezoneOffset();
				
				contextoTimeZoneVerificado = true;
			}
			
			return necessitaTratarBugData;
		}
		
		public static function tratarBugData(data:Date):Date
		{
			if(data == null){
				return data;
			}
			
			if(!verificarNecessidadeTratamentoData()){
				return data;
			}
			
			//verifica se estamos em TimeZone onde é possível ocorrer o problema
			if(data.getTimezoneOffset() != 180)
			{
				return data;
			}
			
			if(data.month != 9 || data.day != 6 ||
				data.hours != 23 || data.minutes != 0 ||
				data.seconds != 0 || data.date < 13) {
				
				return data;
			}
			
			var primeiroDomingo:int = new Date(data.fullYear, 9, 1).day;
			
			var terceiroDomingo:int = new Date(data.fullYear, 9, 21 - primeiroDomingo, 12).date;
			
			if(data.date != terceiroDomingo){
				return  data;
			}
			
			return new Date(data.fullYear, data.month, data.date + 1, 1);
		}
	}
}