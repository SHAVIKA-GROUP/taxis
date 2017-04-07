package com.shavika.taxis.service;

import java.util.Date;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.shavika.taxis.api.dto.Trip;
import com.shavika.taxis.util.Constants;
import com.shavika.taxis.util.DateTimeUtil;
import com.shavika.taxis.util.EmailTemplate;

public class MailService {
	private Trip trip;

	public MailService(Trip trip) {
		this.trip = trip;
	}

	private String getSubject() throws Exception {
		return "Airport taxi Online Booking Service on <"
				+ DateTimeUtil.getDateTimeFromMilliSecond(trip.getTravelDetail().getTravel_datetime()).toString() + ">";
	}

	private String getMessageBody() throws Exception {
		String bodytext = "";
		bodytext = bodytext + EmailTemplate.getStartHead(
				new Object[] { ("" + trip.getPassanger().getFirst_name() + " " + trip.getPassanger().getLast_name()) });
		bodytext = bodytext
				+ EmailTemplate.getStartHead(new Object[] { "Your object is confirmed and below is the trip detail." });

		bodytext = bodytext + EmailTemplate.HTML_OPEN;
		bodytext = bodytext + EmailTemplate.STYLE_SHEET;
		bodytext = bodytext + EmailTemplate.BODY_OPEN;

		bodytext = bodytext + EmailTemplate.TABLE_OUTER_OPEN;
		bodytext = bodytext + EmailTemplate.TABLE_OPEN;

		bodytext = bodytext + EmailTemplate.gettableHeader(new String[] { "", "" });

		bodytext = bodytext + EmailTemplate.gettableData(false, false,
				new String[] { "Source", trip.getTravelDetail().getSource() });
		bodytext = bodytext + EmailTemplate.gettableData(false, false,
				new String[] { "Designation", trip.getTravelDetail().getDesignation() });
		bodytext = bodytext + EmailTemplate.gettableData(false, false, new String[] { "Date & Time",
				DateTimeUtil.getDateTimeFromMilliSecond(trip.getTravelDetail().getTravel_datetime()).toString() });
		bodytext = bodytext + EmailTemplate.gettableData(false, false,
				new String[] { "Distance", "" + trip.getTravelDetail().getTravel_distance() + " Miles" });
		bodytext = bodytext + EmailTemplate.gettableData(false, false,
				new String[] { "Duration", "" + trip.getTravelDetail().getTravel_duration() + " Sec" });

		bodytext = bodytext + EmailTemplate.TABLE_CLOSE;
		bodytext = bodytext + EmailTemplate.TABLE_OUTER_CLOSE;
		bodytext = bodytext + EmailTemplate.HTML_CLOSE;

		bodytext = bodytext + EmailTemplate.LINE_BREAK;
		bodytext = bodytext + EmailTemplate.LINE_BREAK;
		// bodytext = bodytext + EmailTemplate.SIGNATURE;
		return bodytext;
	}

	/* https://www.google.com/settings/security/lesssecureapps */
	public static void main(String[] args) throws Exception {
		new MailService(null).sendMail();
	}

	public int sendMail() throws Exception {
		System.out.println("[" + new Date() + "]eMail Session started...");
		Session session = Session.getDefaultInstance(Constants.props);
		try {
			System.out.println("[" + new Date() + "]eMail Session started.../1");
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(Constants.MAIL_FROM));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(trip.getPassanger().getEmail()));
			System.out.println("[" + new Date() + "]eMail Session started.../3");
			message.setSubject(getSubject());
			System.out.println("[" + new Date() + "]eMail Session started.../4");
			message.setContent(getMessageBody(), "text/html");

			// Send message
			System.out.println("[" + new Date() + "]eMail Session started.../5");
			Transport transport = session.getTransport("smtp");
			System.out.println("[" + new Date() + "]eMail Session started.../6");
			transport.connect(Constants.SMTP_HOST, Constants.MAIL_FROM, Constants.PASSWORD);
			System.out.println("[" + new Date() + "]eMail Session started.../7");
			transport.sendMessage(message, message.getAllRecipients());
			transport.close();
			System.out.println("[" + new Date() + "]eMail Session message successfully....");
		} catch (MessagingException mex) {
			System.out.println("[" + new Date() + "]eMail Session error...." + mex.getMessage());
			return -1;
		}
		return 0;
	}
}
