import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app/Model/UserDetails.dart';
import 'package:http/http.dart' as http;

import 'dart:developer';
class Api{
  static const String mainUrl = "https://cvigil.eci.gov.in/api/";
  static const String login=mainUrl + "otp";
  static const String OtpVerify=mainUrl + "otpVerify";





   static Future makeVeifyOtpRequest(String mobNo,String devceId,String otp) async {
    final uri = Uri.parse(OtpVerify);
    final headers = {
      'Content-Type': 'application/json'};
    Map<String, dynamic> body = {'mobile_number': mobNo, 'device_id':devceId,"OTP":otp};
    String jsonBody = json.encode(body);
    final encoding = Encoding.getByName('utf-8');
    http.Response response = await http.post(
      uri,
      headers: headers,
      body: jsonBody,
      encoding: encoding,
    );
    int statusCode = response.statusCode;
    String responseBody = response.body;
    if(response.statusCode==200) {
      return true;
    }
    else {

    }

  }
  static Future<UserDetail> userLogin(String mobNo,String devceId,String otp, context) async {
    var model = {
      "mobile_number": mobNo,
      "device_id": devceId,
      "OTP": otp,
      // "RememberMe": true
    };
    print(model.toString());
    return await http.post(Uri.parse(OtpVerify),
        headers: {"Content-Type": "application/json"},
        body: json.encode(model))
        .then((response) async {
      print(response.body.toString());
      print(response.statusCode.toString());
      if (response.statusCode == 200) {
        return UserDetail.fromJson(jsonDecode(response.body));

      }else(
          throw Exception('Failed to get userdetails'));

    });

  }

}


