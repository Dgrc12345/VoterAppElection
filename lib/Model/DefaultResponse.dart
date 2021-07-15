// To parse this JSON data, do
//
//     final defaultResponse = defaultResponseFromJson(jsonString);

import 'dart:convert';

DefaultResponse defaultResponseFromJson(String str) => DefaultResponse.fromJson(json.decode(str));

String defaultResponseToJson(DefaultResponse data) => json.encode(data.toJson());

class DefaultResponse {

  bool status;
  String message;

  DefaultResponse(
      this.status,
      this.message,
      );


  factory DefaultResponse.fromJson(Map<String, dynamic> json) => DefaultResponse(
    json["status"] as bool,
    json["message"] as String,
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
  };
}
