/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

import java.net.URISyntaxException;

public class SendSMS {

    // Find your Account Sid and Auth Token at twilio.com/console
    public static final String ACCOUNT_SID = "AC0d515d11106c408e2d0f302456e14edc";
    public static final String AUTH_TOKEN = "0fafb2c8ced4120466dba6c87ff1b973";

    public static void sendmessage() throws URISyntaxException {
        Twilio.init(ACCOUNT_SID, AUTH_TOKEN);

        Message message = Message
                .creator(new PhoneNumber("+919820938954"),  // to
                         new PhoneNumber("+19284401826"),  // from
                         "Donation Received"
                                 + "\n"+"Please check your email")
                .create();
        
    }
}
