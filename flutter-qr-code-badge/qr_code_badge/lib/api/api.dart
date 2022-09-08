//TODO: read JWL API documentation and implement the API class


import 'package:jwt_decoder/jwt_decoder.dart';

//Decode token
decode (yourToken) {
 
  Map<String, dynamic> decodedToken = JwtDecoder.decode(yourToken);
  print(decodedToken["surname"]);


 // If the token has a valid format, you will get a Map<String, dynamic>
 
}

//check token expiration
check (yourToken) {
  String yourToken = "Your JWT";
  bool hasExpired = JwtDecoder.isExpired(yourToken);


}
decodedate (yourToken) {
  String yourToken = "Your JWT";
  DateTime expirationDate = JwtDecoder.getExpirationDate(yourToken);

  // 2025-01-13 13:04:18.000
  print(expirationDate);
}