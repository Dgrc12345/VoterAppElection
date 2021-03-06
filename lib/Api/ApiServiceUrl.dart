import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Model/DefaultResponse.dart';
import 'package:flutter_app/Model/IncidentType.dart';
import 'package:flutter_app/Model/LoginResponse.dart';
import 'package:flutter_app/Model/StoreComplain.dart';
import 'package:flutter_app/Model/UserDetails.dart';
import 'package:http/http.dart' as http;

import 'dart:developer';
class Api{
  static const String mainUrl = "https://cvigil.eci.gov.in/api/";
  static const String login=mainUrl + "otp";
  static const String OtpVerify=mainUrl + "otpVerify";
  static const String store_complain=mainUrl + "storecomplaint";
  static const String Get_IncidentTypes=mainUrl + "getincidenttype";



  static Future<LoginResponse>makePostRequest(String mobNo,String devceId,String fcmId) async {

    var model = {
      "mobile_number": mobNo,
      "device_id": devceId,
      "fcm_id": fcmId,
      // "RememberMe": true
    };
    print(model.toString());
    return await http.post(Uri.parse(OtpVerify),
        headers: {"Content-Type": "application/json"},
        body: json.encode(model)).then((response) async {

      print(response.body.toString());
      print(response.statusCode.toString());
      if (response.statusCode == 200) {
        String nestedObjText =response.body.toString();
        return LoginResponse.fromJson(jsonDecode(response.body));


      }else(
          throw Exception('Failed to get userdetails'));

    });
  }

    static Future<UserDetails>  userLogin(String mobNo,String devceId,String otp) async {
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
        return UserDetails.fromJson(jsonDecode(response.body));


      }else(
          throw Exception('Failed to get userdetails'));

    });

  }


  static Future<DefaultResponse> InsertComplain(StoreComplain data) async {

    return await http.post(Uri.parse(store_complain),
        headers: {"Content-Type": "application/json"},
        // body: json.encode(model))
        body: json.encode(data.toJson()))
        .then((response) async {
      print(response.body.toString());
      print(response.statusCode.toString());
      if (response.statusCode == 200) {
        return DefaultResponse.fromJson(jsonDecode(response.body));


      }else(
          throw Exception('Failed to store complain'));

    });

  }


  static Future<List<IncidentType>> fetchIncidentTypes() async
  {
    var members = <IncidentType>[];
    var url =Get_IncidentTypes;
    var response = await http.get(Uri.parse(Get_IncidentTypes));
    var jsonMembers = json.decode(response.body);

      members =  jsonMembers.map<IncidentType>((json) => new IncidentType.fromJson(json)).toList();

    return members;
  }


}


