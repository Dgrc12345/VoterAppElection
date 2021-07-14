// To parse this JSON data, do
//
//     final userDetails = userDetailsFromJson(jsonString);

import 'dart:convert';

UserDetails userDetailsFromJson(String str) => UserDetails.fromJson(json.decode(str));

String userDetailsToJson(UserDetails data) => json.encode(data.toJson());

class UserDetails {
  UserDetails({
    required this.success,
    required this.token,
    required this.userDetails,
  });

  bool success;
  String token;
  UserDetailsClass userDetails;

  factory UserDetails.fromJson(Map<String, dynamic> json) => UserDetails(
    success: json["success"],
    token: json["token"],
    userDetails: UserDetailsClass.fromJson(json["user_details"]),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "token": token,
    "user_details": userDetails.toJson(),
  };
}

class UserDetailsClass {
  UserDetailsClass({
    required this.id,
    required this.userType,
    required this.name,
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
   required this.createdAt,
   required this.updatedAt,
   required this.mobileNumber,
   required this.email,
   required this.otpAttempt,
   required this.otpTime,
   required this.otpTransfer,
   required this.deviceId,
   required this.fcmId,
   required this.sessionId,
   required this.isLogin,
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
    required this.isActive,
  });

  int id;
  String userType;
  String name;
  dynamic state;
  dynamic district;
  dynamic ac;
  dynamic stateName;
  dynamic districtName;
  dynamic acName;
  dynamic pincode;
  dynamic userMonitorId;
  dynamic landmark;
  dynamic latitude;
  dynamic longitude;
  dynamic ipaddress;
  DateTime createdAt;
  DateTime updatedAt;
  String mobileNumber;
  String email;
  int otpAttempt;
  DateTime otpTime;
  dynamic otpTransfer;
  String deviceId;
  String fcmId;
  String sessionId;
  String isLogin;
  dynamic monitorId;
  dynamic address;
  dynamic constType;
  dynamic parentId;
  dynamic pc;
  dynamic pcName;
  dynamic isPcHead;
  dynamic pcHeadDecision;
  dynamic deletedAt;
  dynamic additionCeoFlag;
  dynamic passwordNew;
  int isActive;

  factory UserDetailsClass.fromJson(Map<String, dynamic> json) => UserDetailsClass(
    id: json["id"],
    userType: json["user_type"],
    name: json["name"],
    state: json["state"],
    district: json["district"],
    ac: json["ac"],
    stateName: json["state_name"],
    districtName: json["district_name"],
    acName: json["ac_name"],
    pincode: json["pincode"],
    userMonitorId: json["user_monitor_id"],
    landmark: json["landmark"],
    latitude: json["latitude"],
    longitude: json["longitude"],
    ipaddress: json["ipaddress"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    mobileNumber: json["mobile_number"],
    email: json["email"],
    otpAttempt: json["OTP_attempt"],
    otpTime: DateTime.parse(json["OTP_time"]),
    otpTransfer: json["OTP_transfer"],
    deviceId: json["device_id"],
    fcmId: json["fcm_id"],
    sessionId: json["session_id"],
    isLogin: json["is_login"],
    monitorId: json["monitor_id"],
    address: json["address"],
    constType: json["const_type"],
    parentId: json["parent_id"],
    pc: json["pc"],
    pcName: json["pc_name"],
    isPcHead: json["is_pc_head"],
    pcHeadDecision: json["pc_head_decision"],
    deletedAt: json["deleted_at"],
    additionCeoFlag: json["addition_ceo_flag"],
    passwordNew: json["password_new"],
    isActive: json["is_active"],
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
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "mobile_number": mobileNumber,
    "email": email,
    "OTP_attempt": otpAttempt,
    "OTP_time": otpTime.toIso8601String(),
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
