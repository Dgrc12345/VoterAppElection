// To parse this JSON data, do
//
//     final userDetails = userDetailsFromJson(jsonString);

import 'dart:convert';

UserDetails userDetailsFromJson(String str) => UserDetails.fromJson(json.decode(str));

String userDetailsToJson(UserDetails data) => json.encode(data.toJson());

class UserDetails {

  UserDetails(
     this.success,
     this.token,
     this.userDetails,
  );






   bool success;
   String token;
   UserDetailsClass userDetails;


  factory UserDetails.fromJson(Map<String, dynamic> json) => UserDetails(
   json["success"] as bool,
    json["token"] as String,
    UserDetailsClass.fromJson(json["user_details"]),

  );

  Map<String, dynamic> toJson() => {
    "success": success.toString(),
    "token": token,
    "user_details": userDetails.toJson(),
  };
}


class UserDetailsClass {




  UserDetailsClass(
     this.id,
     this.userType,
     this.name,
    this.state,
    this.district,
    this.ac,
    this.stateName,
    this.districtName,
    this.acName,
    this.pincode,
    this.userMonitorId,
    this.landmark,
    this.latitude,
    this.longitude,
    this.ipaddress,
    this.createdAt,
    this.updatedAt,
    this.mobileNumber,
    this.email,
    this.otpAttempt,
    this.otpTime,
    this.otpTransfer,
    this.deviceId,
    this.fcmId,
    this.sessionId,
    this.isLogin,
    this.monitorId,
    this.address,
    this.constType,
    this.parentId,
    this.pc,
    this.pcName,
    this.isPcHead,
    this.pcHeadDecision,
    this.deletedAt,
    this.additionCeoFlag,
    this.passwordNew,
     this.isActive,
  );

   int id;
   String userType;
   String name;
   String state;
   String district;
   String ac;
    String stateName;
   String districtName;
   String acName;
   String pincode;
   String userMonitorId;
   String landmark;
   String latitude;
   String longitude;
   String ipaddress;
   String createdAt;
   String updatedAt;
   String mobileNumber;
   String email;
   int otpAttempt;
   String otpTime;
   String otpTransfer;
   String deviceId;
   String fcmId;
   String sessionId;
   String isLogin;
   String monitorId;
   String address;
   String constType;
   String parentId;
    String pc;
   String pcName;
    String isPcHead;
   String pcHeadDecision;
   String deletedAt;
   String additionCeoFlag;
    String passwordNew;
   int isActive;

  


  factory UserDetailsClass.fromJson(Map<String, dynamic> json) => UserDetailsClass(
    json["id"] as int,
     json["user_type"]as String,
    json["name"]as String,
    json["state"]as String,
    json["district"]as String,
   json["ac"]as String,
    json["state_name"]as String,
    json["district_name"]as String,
    json["ac_name"]as String,
  json["pincode"]as String,
   json["user_monitor_id"]as String,
    json["landmark"]as String,
    json["latitude"]as String,
    json["longitude"]as String,
     json["ipaddress"]as String,
     json["created_at"]as String,
    json["updated_at"]as String,
   json["mobile_number"]as String,
     json["email"]as String,
    json["OTP_attempt"]as int,
    json["OTP_time"]as String,
    json["OTP_transfer"]as String,
    json["device_id"]as String,
  json["fcm_id"]as String,
    json["session_id"]as String,
   json["is_login"]as String,
    json["monitor_id"]as String,
    json["address"]as String,
     json["const_type"]as String,
     json["parent_id"]as String,
     json["pc"]as String,
     json["pc_name"]as String,
    json["is_pc_head"]as String,
     json["pc_head_decision"]as String,
   json["deleted_at"]as String,
    json["addition_ceo_flag"]as String,
     json["password_new"]as String,
    json["is_active"]as int,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_type": userType,
    "name": name,
    "state": state,
    "district": district,
    "ac": ac,
    "state_name": stateName,
    "district_name": districtName,
    "ac_name": acName,
    "pincode": pincode,
    "user_monitor_id": userMonitorId,
    "landmark": landmark,
    "latitude": latitude,
    "longitude": longitude,
    "ipaddress": ipaddress,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "mobile_number": mobileNumber,
    "email": email,
    "OTP_attempt": otpAttempt,
    "OTP_time": otpTime,
    "OTP_transfer": otpTransfer,
    "device_id": deviceId,
    "fcm_id": fcmId,
    "session_id": sessionId,
    "is_login": isLogin,
    "monitor_id": monitorId,
    "address": address,
    "const_type": constType,
    "parent_id": parentId,
    "pc": pc,
    "pc_name": pcName,
    "is_pc_head": isPcHead,
    "pc_head_decision": pcHeadDecision,
    "deleted_at": deletedAt,
    "addition_ceo_flag": additionCeoFlag,
    "password_new": passwordNew,
    "is_active": isActive,
  };
}
