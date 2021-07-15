// To parse this JSON data, do
//
//     final storeComplain = storeComplainFromJson(jsonString);

import 'dart:convert';

StoreComplain storeComplainFromJson(String str) => StoreComplain.fromJson(json.decode(str));

String storeComplainToJson(StoreComplain data) => json.encode(data.toJson());

class StoreComplain {

  String deviceId;
  String complaintLatitude;
  String complaintLongitude;
  String complaintOffenceType;
  String complaintOffenceText;
  String complaintText;
  String complaintLandmark;
  String complaintStateName;
  String complaintStateCode;
  String complaintDistrictName;
  String complaintDistrictCode;
  String gpsLocation;
  String fcmId;
  String isDemo;

  StoreComplain(
    this.deviceId,
    this.complaintLatitude,
    this.complaintLongitude,
    this.complaintOffenceType,
    this.complaintOffenceText,
    this.complaintText,
    this.complaintLandmark,
    this.complaintStateName,
    this.complaintStateCode,
    this.complaintDistrictName,
    this.complaintDistrictCode,
    this.gpsLocation,
    this.fcmId,
    this.isDemo,
  );


  factory StoreComplain.fromJson(Map<String, dynamic> json) => StoreComplain(
    json["device_id"] as String,
    json["complaint_latitude"] as String,
    json["complaint_longitude"] as String,
    json["complaint_offence_type"] as String,
    json["complaint_offence_text"] as String,
     json["complaint_text"] as String,
     json["complaint_landmark"] as String,
     json["complaint_state_name"] as String,
     json["complaint_state_code"] as String,
     json["complaint_district_name"] as String,
     json["complaint_district_code"] as String,
     json["gps_location"] as String,
     json["fcm_id"] as String,
     json["is_demo"] as String,
  );

  Map<String, dynamic> toJson() => {
    "device_id": deviceId,
    "complaint_latitude": complaintLatitude,
    "complaint_longitude": complaintLongitude,
    "complaint_offence_type": complaintOffenceType,
    "complaint_offence_text": complaintOffenceText,
    "complaint_text": complaintText,
    "complaint_landmark": complaintLandmark,
    "complaint_state_name": complaintStateName,
    "complaint_state_code": complaintStateCode,
    "complaint_district_name": complaintDistrictName,
    "complaint_district_code": complaintDistrictCode,
    "gps_location": gpsLocation,
    "fcm_id": fcmId,
    "is_demo": isDemo,
  };
}
