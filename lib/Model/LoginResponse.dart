import 'dart:convert';

LoginResponse defaultResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));

String defaultResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {

  bool status;
  String message;

  LoginResponse(this.status, this.message,);


  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      LoginResponse(
        json["success"] as bool,
        json["error"] as String,
      );

  Map<String, dynamic> toJson() =>
      {
        "success": status,
        "error": message,
      };
}