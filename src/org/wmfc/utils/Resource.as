package org.wmfc.utils
{
	import flash.sampler.startSampling;

	public class Resource
	{
		//Default resource ids
		
		//MessageBox
		public static const MESSAGEBOX_YES_LABEL:String = "messageBoxYesLabel";
		public static const MESSAGEBOX_NO_LABEL:String = "messageBoxNoLabel";
		public static const MESSAGEBOX_CANCEL_LABEL:String = "messageBoxCancelLabel";
		public static const MESSAGEBOX_OK_LABEL:String = "messageBoxOkLabel";
		public static const MESSAGEBOX_ALERT_TITLE:String = "messageBoxAlertTitle";
		public static const MESSAGEBOX_ERROR_TITLE:String = "messageBoxErrorTitle";
		public static const MESSAGEBOX_QUESTION_TITLE:String = "messageBoxQuestionTitle";
		
		//Input´s
		/*default*/
		public static const INPUT_REQUIRED_FIELD_ERROR:String = "inputRequiredFieldError";
		public static const INPUT_INVALID_EMAIL_FORMAT:String = "inputInvalidEmailFormat";
		/*numericTextBox*/
		public static const INPUT_ALLOW_NULLS_ERROR:String = "inputAllowNullsError";
		public static const INPUT_ALLOW_NEGATIVE_VALUES_ERROR:String = "inputAllowNegativeValuesError";
		public static const INPUT_MIN_VALUE_ERROR:String = "inputMinValueError";
		public static const INPUT_MAX_VALUE_ERROR:String = "inputMaxValueError";
		/*DateBox*/
		public static const INPUT_WRONG_DAY_ERROR:String = "inputWrongDayError";
		public static const INPUT_WRONG_MONTH_ERROR:String = "inputWrongMonthError";
		public static const INPUT_WRONG_YEAR_ERROR:String = "inputWrongYearError";
		public static const INPUT_WRONG_DATE_LENGTH_ERROR:String = "inputWrongDateLengthError";
		public static const INPUT_MAX_DATE_ERROR:String = "inputMaxDateError";
		public static const INPUT_MIN_DATE_ERROR:String = "inputMinDateError";
		
		//PaginationBar
		public static const PAGINATIONBAR_GOTO_TOOLTIP:String = "paginationBarGoToToolTip";
		public static const PAGINATIONBAR_PAGEOFPAGE_LABEL:String = "paginationBarPageOfPageLabel";
		public static const PAGINATIONBAR_FIRST_BUTTON_TOOLTIP:String = "paginationBarFirstButtonToolTip";
		public static const PAGINATIONBAR_PREV_BUTTON_TOOLTIP:String = "paginationBarPrevButtonToolTip";
		public static const PAGINATIONBAR_NEXT_BUTTON_TOOLTIP:String = "paginationBarNextButtonToolTip";
		public static const PAGINATIONBAR_LAST_BUTTON_TOOLTIP:String = "paginationBarLastButtonToolTip";
		
		private static var resTable:Object;
		
		private static function setDefaultResValues(res:Object=null):void {
			if(res == null){
				//Defaul resources
				resTable = new Object();
				
				//MessageBox
				resTable[MESSAGEBOX_YES_LABEL] = "Yes";
				resTable[MESSAGEBOX_NO_LABEL] = "No";
				resTable[MESSAGEBOX_CANCEL_LABEL] = "Cancel";
				resTable[MESSAGEBOX_OK_LABEL] = "OK";
				resTable[MESSAGEBOX_ALERT_TITLE] = "Atention!";
				resTable[MESSAGEBOX_ERROR_TITLE] = "Error!";
				resTable[MESSAGEBOX_QUESTION_TITLE] = "Question";
				
				//Input´s default resource
				/*default*/
				resTable[INPUT_REQUIRED_FIELD_ERROR] = "This field can´t be empty!";
				resTable[INPUT_INVALID_EMAIL_FORMAT] = "Invalid email format!";
				/*numericTextBox*/
				resTable[INPUT_ALLOW_NULLS_ERROR] = "This field must have a value!";
				resTable[INPUT_ALLOW_NEGATIVE_VALUES_ERROR] = "The value can´t be negative!";
				resTable[INPUT_MIN_VALUE_ERROR] = "The min value for this field is {0}!";
				resTable[INPUT_MAX_VALUE_ERROR] = "The max value for this field is {0}!";
				
				/*DateBox*/
				resTable[INPUT_WRONG_DAY_ERROR] = "Ivalid day!";
				resTable[INPUT_WRONG_MONTH_ERROR] = "Invalid month!";
				resTable[INPUT_WRONG_YEAR_ERROR] = "Invalid Year!";
				resTable[INPUT_WRONG_DATE_LENGTH_ERROR] = "Invalida format date length!";
				resTable[INPUT_MAX_DATE_ERROR] = "The max date value is {0}!";
				resTable[INPUT_MIN_DATE_ERROR] = "The min date value is {0}!";
				
				//PaginationBar
				resTable[PAGINATIONBAR_GOTO_TOOLTIP] = "Go to page";
				resTable[PAGINATIONBAR_PAGEOFPAGE_LABEL] = "of";
				resTable[PAGINATIONBAR_FIRST_BUTTON_TOOLTIP] = "First page";
				resTable[PAGINATIONBAR_PREV_BUTTON_TOOLTIP] = "Previous page";
				resTable[PAGINATIONBAR_NEXT_BUTTON_TOOLTIP] = "Next page";
				resTable[PAGINATIONBAR_LAST_BUTTON_TOOLTIP] = "Last page";
			}else{
				resTable = res;
			}
		}
		
		public static function getValue(key:String):String {
			if(resTable == null) {
				setDefaultResValues();
			}
			
			return resTable.hasOwnProperty(key) ? resTable[key].toString() : null;
		}
		
		public static function setValue(key:String, value:String):void {
			if(resTable == null) {
				setDefaultResValues();
			}
			
			resTable[key] = value;
		}
	}
}