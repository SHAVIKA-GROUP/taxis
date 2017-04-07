package com.shavika.taxis.util;

import java.text.MessageFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class EmailTemplate {

	public static final String EMAIL_SUBJECT_TEXT = "Automated: Add Account Bug Failure Report <"+new SimpleDateFormat("dd-MM-YYYY").format(new Date())+">."; 
			//"Automated:"+ "QSuper" +" Add Account Bug Failure Report <"+new SimpleDateFormat("dd-MM-YYYY").format(new Date())+">.";

	public static final String EMAIL_BODY_TEXT = "<br>  Please find the below Add Account Failure Bugs detail.<br>";

	public static final String HTML_OPEN = " <!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\"> "
			+ " <html xmlns=\"http://www.w3.org/1999/xhtml\"> " + " <head> "
			+ " <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" /> ";

	public static final String BODY_OPEN = " </head> <body> ";

	public static final String MATTER_HEAD = " <p class='MsoNormal'><span style='font-size: 11pt; font-family: &quot;Calibri&quot;,sans-serif; color: rgb(31, 73, 125);'  lang='EN-IN'> "+
	" Dear {0}, <o:p></o:p></span></p> ";

	public static final String MATTER_BODY = " <p class='MsoNormal'><span style='font-size: 11pt; font-family: &quot;Calibri&quot;,sans-serif; color: rgb(31, 73, 125);'  lang='EN-IN'> "+
	" {0} <o:p></o:p></span></p> ";

	public static final String LINE_BREAK = " <br> ";

	//public static final String SIGNATURE_LINE = " \n\n\n\n\n &nbsp; Thanks & Regards \n";

	public static final String SIGNATURE = " <p class='MsoNormal'><span style='font-size: 11pt; font-family: &quot;Calibri&quot;,sans-serif; color: rgb(31, 73, 125);'  lang='EN-IN'> "+
			" Thanks & Regards <br> &nbsp;I18N-FI <o:p></o:p></span></p> ";

	public static final String STYLE_SHEET = " "+
			" <style type=\"text/css\"> "+
			" .tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;} "+
			" .tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;} "+
			" .tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;} "+
			" .tg .tg-p12b{font-size:12px;font-family:'Lucida Console', Monaco, monospace !important;;text-align:center} "+
			" .tg .tg-yw4l{font-family:'Courier New';background-color:#f9f9f9} "+
			" </style> ";

	public static final String TABLE_OUTER_OPEN = " <table border='0' cellpadding='0' cellspacing='0' height='100%' width='50%' id='bodyTable'> "
			+ " <tr> " + " <td align='center' valign='top'> "
			+ " <table border='0' cellpadding='20' cellspacing='0' width='300' id='emailContainer'> " + " <tr> "
			+ " <td align='center' valign='top'> ";

	public static final String TABLE_OPEN = " <table class='tg'> ";

	public static final String TABLE_CLOSE = " </table> ";

	public static final String TABLE_OUTER_CLOSE = " </td>  </tr> </table>  </td> </tr> </table>  ";

	public static final String HTML_CLOSE = " </body> </html> ";

	public static String gettableHeader(String[] strArray) {
		String str = "";
		str += " <thead> <tr> ";
		for (String header : strArray)
			str += " <th class='tg-p12b'> " + header + " </th> ";
		str += " </tr> </thead> ";
		return str;
	}

	public static String gettableData(boolean totalFlag, boolean redFlag, String[] strArray) {
		String str = "";
		str += " <tbody> <tr> ";
		for (String header : strArray)
			str += " <td class='tg-yw4l'> " + header + " </td> ";
		str += " </tr> </tbody> ";
		return str;
	}
	
	public static String getStartHead(Object[] object){
        MessageFormat mf = new MessageFormat(MATTER_HEAD);
        return mf.format(object);
	}

	public static String getBody(Object[] object){
        MessageFormat mf = new MessageFormat(MATTER_BODY);
        return mf.format(object);
	}
}
