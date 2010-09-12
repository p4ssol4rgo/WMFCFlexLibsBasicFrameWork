package org.wmfc.utils
{
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
		public static const INPUT_REQUIRED_FIELD:String = "inputRequiredField";
		public static const INPUT_INVALID_EMAIL_FORMAT:String = "inputInvalidEmailFormat";
		
		//PaginationBar
		public static const PAGINATIONBAR_GOTO_TOOLTIP:String = "paginationBarGoToToolTip";
		public static const PAGINATIONBAR_PAGEOFPAGE_LABEL:String = "paginationBarPageOfPageLabel";
		public static const PAGINATIONBAR_FIRST_BUTTON_TOOLTIP:String = "paginationBarFirstButtonToolTip";
		public static const PAGINATIONBAR_PREV_BUTTON_TOOLTIP:String = "paginationBarPrevButtonToolTip";
		public static const PAGINATIONBAR_NEXT_BUTTON_TOOLTIP:String = "paginationBarNextButtonToolTip";
		public static const PAGINATIONBAR_LAST_BUTTON_TOOLTIP:String = "paginationBarLastButtonToolTip";
		
		private static var resTable:Object = new Object();
		
		public function Resource() {
			
			//Defaul resources
			
			//MessageBox
			resTable[MESSAGEBOX_YES_LABEL] = "Yes";
			resTable[MESSAGEBOX_NO_LABEL] = "No";
			resTable[MESSAGEBOX_CANCEL_LABEL] = "Cancel";
			resTable[MESSAGEBOX_OK_LABEL] = "OK";
			resTable[MESSAGEBOX_ALERT_TITLE] = "Atention!";
			resTable[MESSAGEBOX_ERROR_TITLE] = "Error!";
			resTable[MESSAGEBOX_QUESTION_TITLE] = "Question";
			
			//Input´s default resource
			resTable[INPUT_REQUIRED_FIELD] = "This field can´t be empty!";
			resTable[INPUT_INVALID_EMAIL_FORMAT] = "Invalid email format!";
			
			//PaginationBar
			resTable[PAGINATIONBAR_GOTO_TOOLTIP] = "Go to page";
			resTable[PAGINATIONBAR_PAGEOFPAGE_LABEL] = "of";
			resTable[PAGINATIONBAR_FIRST_BUTTON_TOOLTIP] = "First page";
			resTable[PAGINATIONBAR_PREV_BUTTON_TOOLTIP] = "Previous page";
			resTable[PAGINATIONBAR_NEXT_BUTTON_TOOLTIP] = "Next page";
			resTable[PAGINATIONBAR_LAST_BUTTON_TOOLTIP] = "Last page";
		}
		
		public static function getValue(key:String):String {
			return resTable.hasOwnProperty(key) ? resTable[key].toString() : null;
		}
		
		public static function setValue(key:String, value:String):void {
			resTable[key] = value;
		}
	}
}