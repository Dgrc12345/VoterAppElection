import 'dart:async' show Future;
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceManager {


  static addStringToSF(String key ,String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

 static  Future<String> getStringValuesSF(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return String
    String stringValue = prefs.getString(key);
    return stringValue;
  }


//Create Get Method

//Create set method
}