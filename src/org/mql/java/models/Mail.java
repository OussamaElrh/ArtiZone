package org.mql.java.models;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Mail {

	public String randomAlphaNumeric(int count) {
		String ALPHA_NUMERIC_STRING = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
		StringBuilder builder = new StringBuilder();
		while (count-- != 0) {
		int character = (int)(Math.random()*ALPHA_NUMERIC_STRING.length());
		builder.append(ALPHA_NUMERIC_STRING.charAt(character));
		}
		return builder.toString();
	}
	public boolean sendEmail(String DestMail,String CodeToken){		
		String SourceMail = "artizoone@gmail.com";
		String password =  "artizone2017";
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
		Session session = Session.getInstance(props,new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(SourceMail, password);
			}
		  });	
		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(SourceMail));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(DestMail));
			message.setSubject("Artizone Confirmation !");
			
			message.setContent("<center><h3 style='color:#8E2711'>Merci Pour Votre Inscription, Voici Votre code de confirmation :</h3>"
					+ "<br><h1 style='border: 2px solid DodgerBlue;text-align:center'>"+CodeToken+"</h1>"
					+ "</center>", "text/html");
			Transport.send(message);
			return true;

		} catch (Exception e) {
			return false;
		}
	}

}
