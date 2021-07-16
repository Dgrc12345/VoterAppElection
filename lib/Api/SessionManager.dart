import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_app/Model/UserDetails.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_app/Model/UserDetails.dart';
class SessionManager {
  /// Instantiation of the SharedPreferences library
  /// UserInfo
  final int id=0;
  final String userType="userDetails.userType";
  final String name="";
  final String state="";
  final String district="";
  final String ac="";
  final String stateName="";
  final String districtName="";
  final String acName="";
  final String pincode="";
  final String userMonitorId="";
  final String landmark="";
  final String latitude="";
  final String longitude="";
  final String ipaddress="";
  final String createdAt="";
  final String updatedAt="";
  final String mobileNumber="";
  final String email="";
  final String otpAttempt="";
  final String otpTime="";
  final String otpTransfer="";
  final String deviceId="";
  final String fcmId="";
  final String sessionId="";
  final String isLogin="";
  final String monitorId="";
  final String address="";
  final String constType="";
  final String parentId="";
  final String pc="";
  final String pcName="";
  final String isPcHead="";
  final String pcHeadDecision="";
  final String deletedAt="";
  final String additionCeoFlag="";
  final String passwordNew="";
  final int isActive=0;

  //Auth Token
  final String auth_token = "mobihub.auth_token";

  //firebase cloud messaging token
  final String fcm_token = "mobihub.fcm_token";


 /* Future<UserDetails> getUserInfo() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    int? _id;
    bool _success;
    String Token;
    String _userType,
         
        _token,
        _name,
        _state,
        _district,
        _ac,
        _stateName,
        _districtName,
        _acName,
        _pincode;

    _userType = (pref.getString(userType) )!;

    _name = (pref.getString(name) );
    _state = (pref.getString(state) )!;
    _district = (pref.getString(district))!;
    _ac = (pref.getString(ac))!;
    _stateName = (pref.getString(stateName) )!;
    _districtName = (pref.getString(districtName))!;
    _acName = (pref.getString(acName) )!;
    _pincode = (pref.getString(pincode))!;

    //UserDetails  user = UserDetails(_success,Token,_userType);

    user.userDetails.userType = _userType;
    user.userDetails.name= _name;
    user.userDetails.district = _district;
    user.userDetails.ac= _ac;
    user.userDetails.stateName= _stateName;
    user.userDetails.districtName= _districtName;
    user.userDetails.acName = _acName;
    user.userDetails.pincode = _pincode;

    return user;
  }*/

  /// ----------------------------------------------------------
  /// UserInfo
  /// ----------------------------------------------------------
  Future<void> setUserInfo(UserDetails mUser) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(userType, mUser.userDetails.userType);


    prefs.setString(name, mUser.userDetails.name);
    String vakur=mUser.userDetails.name;
    print("valueinnamesession $vakur");
    prefs.setString(district, mUser.userDetails.district);
    prefs.setString(state, mUser.userDetails.state);
    prefs.setString(stateName, mUser.userDetails.stateName);
    prefs.setString(districtName, mUser.userDetails.districtName);
    prefs.setString(pincode, mUser.userDetails.pincode);


  }


  //NewUser=======================================================
  /*Future<UserDetails> getNewUser() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    bool by_admin, company_edit, default_dp, no_following;

    by_admin = pref.getBool(this.by_admin) ?? null;
    company_edit = pref.getBool(this.company_edit) ?? null;
    default_dp = pref.getBool(this.default_dp) ?? null;
    no_following = pref.getBool(this.no_following) ?? null;

    NewUser user = new NewUser();
    user.by_admin = by_admin;
    user.company_edit = company_edit;
    user.default_dp = default_dp;
    user.no_following = no_following;
    return user;
  }

  Future<void> setNewUser(NewUser mUser) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(by_admin, mUser.by_admin);
    prefs.setBool(company_edit, mUser.company_edit);
    prefs.setBool(default_dp, mUser.default_dp);
    prefs.setBool(no_following, mUser.no_following);
  }*/

  //auth token=======================================================

  Future<String> getAuthToken() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    String auth_token;
    auth_token = (pref.getString(this.auth_token) ?? null)!;
    return auth_token;
  }
  Future<String> getUserName() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    String auth_token;
    auth_token = (pref.getString(this.name) ?? null)!;
    return auth_token;
  }

  Future<void> setAuthToken(String auth_token) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String token=auth_token;
    print("valueintoken $auth_token");
    prefs.setString(this.auth_token, auth_token);
  }

  //fcm token
  /*Future<String> getFCMToken() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    String auth_token;
    auth_token = pref.getString(this.fcm_token) ?? null;
    return auth_token;
  }

  Future<void> setFCMToken(String fcm_token) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(this.fcm_token, fcm_token);
  }*/

  /*_checkUser(BuildContext context) async {
    SessionManager prefs = await SessionManager();
    Future<UserDetails> mUserInfoCall = prefs.getUserInfo();
    mUserInfoCall.then((onValue) {
      if (onValue.userDetails.id != null) {
        Navigator.pushReplacementNamed(context, '/AlreadyLoggedIn');
      } else {
        Navigator.pushReplacementNamed(context, '/Login');
      }
    }, onError: (e) {
      print(e);
    });
  }*/

  onLogout(BuildContext context) async {
    setAuthToken("");
    //_checkUser(context);
  }
}