import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'package:nemo_server/src/generated/protocol.dart';
import 'package:nemo_server/src/utils/utils.dart';
import 'package:serverpod/serverpod.dart';

// This is an example endpoint of your server. It's best practice to use the
// `Endpoint` ending of the class name, but it will be removed when accessing
// the endpoint from the client. I.e., this endpoint can be accessed through
// `client.example` on the client side.

// After adding or modifying an endpoint, you will need to run
// `serverpod generate` to update the server and client code.
class FoodWhaleUserAuthEndpoint extends Endpoint {

  Future<Response>signup(Session session,FoodWhaleUser foodWhaleUser) async{
    
    if(await isEmailExist(session, foodWhaleUser.email)) {
      return Response(message: "Email is already registered.", status: false);
    }
  
    if(await isPhoneExist(session, foodWhaleUser.countryCode,foodWhaleUser.mobileNo)) {
      return Response(message: "Phone number is already registered.", status: false);
    }

    foodWhaleUser.password = await Utlis.generateHashPassword(foodWhaleUser.password);
    
     await FoodWhaleUser.db.insertRow(session, foodWhaleUser);

    return Response(message: "User Account created successfully..", status: true);
   
  }

  Future<bool>isEmailExist(Session session,String emailParam) async{
  var emailCount=  await FoodWhaleUser.db.count(session,where:(user){
      return user.email.equals(emailParam);
    } );
     return emailCount > 0 ? true : false;
  }
   Future<bool>isPhoneExist(Session session,String countryCodeParam,String phoneParam) async{
    var phoneNoCount=  await FoodWhaleUser.db.count(session,where:(user){
      return ( user.countryCode.equals(countryCodeParam)&user.mobileNo.equals(phoneParam));
    } );
     return phoneNoCount > 0 ? true : false;

  }

  Future<Response>sendResetPasswordLink(Session session,String emailParam)async{
 
   var otpCode=Utlis.generateOTP();
   if(! await  isEmailExist(session,emailParam )) {
   return Response(message: "Email doesn't exist..", status: false);
  
   }
   else 
   {
  final smtpServer = SmtpServer('smtp.gmail.com',
      username: 'ersuraj854@gmail.com', password: 'bpva nltv zdwl oysi');

 


  final message = Message()
    ..from = Address('ersuraj854@gmail.com', 'Foodie Support Team')
    ..recipients.add(emailParam)
    ..subject = 'Reset Your Password'    
    ..text =  'Dear User,\n\n'
              'You are receiving this email because a request was made to reset your password for your Foodie account. '
              'If you did not request this change, please ignore this email. No changes will be made to your account.\n\n'
              'Your OTP code for password reset is: $otpCode\n\n'
              'Thank you,\n'
              'Foodie Support Team'
    ..html = '<html><body><p>Dear User,</p>'
              '<p>You are receiving this email because a request was made to reset your password for your Foodie account. '
              'If you did not request this change, please ignore this email. No changes will be made to your account.</p>'
              '<p>Your OTP code for password reset is: <strong>$otpCode</strong></p>'
              '<p>Thank you,<br>'
              'Foodie Support Team</p></body></html>';

  try {
    final sendReport = await send(message, smtpServer);
   
  } catch (e) {
    return  Response(message: "Error occured", status: false);
  }

   return  Response(message: otpCode, status: true);
   
    }
  }

  Future<FoodWhaleUser?>signIn(Session session,String email,String password) async{
    var passwordDecrypt= await Utlis.generateHashPassword(password);
    var user=await FoodWhaleUser.db.find(session, where: (user) {
    // Here you define your filtering condition
    return (user.email.equals(email)&user.password.equals(passwordDecrypt));
  }, limit: 1);
  if(user.isEmpty){
    return null;
  }else {
    return user.first;
  }
 

     

     
  }


}