package com.shavika.taxis.util;

import java.util.Properties;

public class Constants {

	public static final int LOGIN_TYPE = 1;
	public static final int REGISTERATION_TYPE = 2;
	public static final int FORGOTPASSWORD_TYPE = 3;
	public static final int ID_DELETED = 0;
	public static final int STATUS_CODE_SUCCESS = 0;
	public static final int STATUS_CODE_ERROR = 100;
	public static final int STATUS_CODE_NO_DATA_FOUND = 101;
	public static final int STATUS_CODE_TABLE_NOT_CREATE = 102;

	public static final String STATUS_MSG_LOGIN_SUCCESS = "Successfully Loged-In.";
	public static final String STATUS_MSG_LOGIN_FAIL = "Log-In Failed, Try again.";
	public static final String STATUS_MSG_REGISTER_SUCCESS = "Registeration is successfull, Login again.";
	public static final String STATUS_MSG_REGISTER_FAIL = "Registeration is Failed, Try again.";
	public static final String STATUS_MSG_FORGOT_SUCCESS = "Your Username/Password is mailed to registred e-mail, check the mail and login again.";
	public static final String STATUS_MSG_FORGOT_FAIL = "Registeration is Failed, Try again.";

	/* --- CUSTOMER STATUS --- */
    public final static String CUSTOMER_REGISTRED = "REG";
    public final static String CUSTOMER_CONFIRMED = "CNF";

    /* --- ORDER STATUS--- */
    public final static String ORDER_PLACED = "PLCD";
    public final static String ORDER_INISIATED = "INIT";
    public final static String ORDER_CONFIRMED = "CNFD";
    public final static String ORDER_DELIVERED = "DLRD";
    public final static String ORDER_RECEIVED = "RCVD";
    public final static String ORDER_CANCELED = "CNLD";
    public final static String ORDER_REJECTED = "RJKD";
    
    /* --- Gmail SMTP Configure--- */
    public final static String USER_NAME = "cabserviceinuk@gmail.com";
    public final static String MAIL_FROM = "cabserviceinuk@gmail.com";
    public final static String PASSWORD = "Test@123";
    public final static String SMTP_HOST = "smtp.gmail.com";

    public final static Properties props = new Properties();
    static{
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.user", USER_NAME);
		props.put("mail.smtp.password", PASSWORD);
		props.put("mail.smtp.port", "587");
		props.put("mail.smtp.auth", "true");
    }
}