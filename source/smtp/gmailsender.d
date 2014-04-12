module smtp.gmailsender;

version(ssl) {

import smtp.mailsender;
import smtp.ssl;

/++
 SMTP client that works with GMail SMTP server exclusively.
 Requires no parameters to specify, you only need to
 +/
class GMailSender : MailSender {

public:
	this() {
		super("smtp.gmail.com", 587, EncryptionMethod.TLSv1);
	}
}

}