import 'dart:convert';

UserDetails userDetailsFromJson(String str) => UserDetails.fromJson(json.decode(str));
String userDetailsToJson(UserDetails data) => json.encode(data.toJson());

class UserDetails {

  UserDetails({
    this.success,
    this.token,
 this.userDetails,
  });


  bool success;
  String token;
  UserDetailsClass userDetails;


  factory UserDetails.fromJson(Map<String, dynamic> json) {
    print("heello ji $json");
    UserDetails(
        success: json["success"],
        token: json["token"],
        //  userDetails: UserDetailsClass.fromJson(json["user_details"]),
        userDetails: json["user_details"] == null ? null : UserDetailsClass
            .fromJson(json["user_details"]));

  }

  Map<String, dynamic> toJson() => {
    "success": success,
    "token": token,
    "user_details": userDetails.toJson(),
  };
}


class UserDetailsClass {
  UserDetailsClass({
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

  factory UserDetailsClass.fromJson(Map<String, dynamic> json) {
    print("value mil rahi hai $json");
    UserDetailsClass(
        id: json["id"] == null ? null : json["id"],
        userType: json["user_type"] == null ? null : json["user_type"],
        name: json["name"] == null ? null : json["name"],
        state: json["state"] == null ? null : json["state"],
        district: json["district"] == null ? null : json["district"],
        ac: json["ac"] == null ? null : json["ac"],
        stateName: json["state_name"] == null ? null : json["state_name"],
        districtName: json["district_name"] == null ? null : json["district_name"],
        acName: json["ac_name"] == null ? null : json["ac_name"],
        pincode: json["pincode"] == null ? null : json["pincode"],
        userMonitorId: json["user_monitor_id"] == null ? null : json["user_monitor_id"],
        landmark: json["landmark"] == null ? null : json["landmark"],
        latitude: json["latitude"] == null ? null : json["latitude"],
        longitude: json["longitude"] == null ? null : json["longitude"],
        ipaddress: json["ipaddress"] == null ? null : json["ipaddress"],
        createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    mobileNumber: json["mobile_number"] == null ? null : json["mobile_number"],
    email: json["email"] == null ? null : json["email"],
    otpAttempt: json["OTP_attempt"] == null ? null : json["OTP_attempt"],
    otpTime: DateTime.parse(json["OTP_time"] == null ? null : json["OTP_time"],),
    otpTransfer: json["OTP_transfer"] == null ? null : json["OTP_transfer"],
    deviceId: json["device_id"] == null ? null : json["device_id"],
    fcmId: json["fcm_id"] == null ? null : json["fcm_id"],
    sessionId: json["session_id"] == null ? null : json["session_id"],
    isLogin: json["is_login"] == null ? null : json["is_login"],
    monitorId: json["monitor_id"] == null ? null : json["monitor_id"],
    address: json["address"] == null ? null : json["address"],
    constType: json["const_type"] == null ? null : json["const_type"],
    parentId: json["parent_id"] == null ? null : json["parent_id"],
    pc: json["pc"] == null ? null : json["pc"],
    pcName: json["pc_name"] == null ? null : json["pc_name"],
    isPcHead: json["is_pc_head"] == null ? null : json["is_pc_head"],
    pcHeadDecision: json["pc_head_decision"] == null ? null : json["pc_head_decision"],
    deletedAt: json["deleted_at"] == null ? null : json["deleted_at"],
    additionCeoFlag: json["addition_ceo_flag"] == null ? null : json["addition_ceo_flag"],
    passwordNew: json["password_new"] == null ? null : json["password_new"],
    isActive: json["is_active"] == null ? null : json["is_active"]);
  }


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