
import 'dart:convert';

import 'package:crypto/crypto.dart';

class Utlis {

  static Future<String> generateHashPassword(String password) async{
    var salt = 'UVocjgjgXg8P7zIsC93kKlRU8sPbTBhsAMFLnLUPDRYFIWAk';
    var saltedPassword = salt + password;
    var bytes = utf8.encode(saltedPassword);
    var hash = sha256.convert(bytes);
    return  hash.toString();
  }
    
}