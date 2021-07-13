
import 'package:flutter_app/Model/Token.dart';

class UserDetail {

  final int id;

  final String employeeName;

  final String email;

  final String address;

  final String phone;



  UserDetail({required this.id, required this.employeeName, required this.email, required this.address, required this.phone});

  factory UserDetail.fromJson(Map<String, dynamic> json) => _$EmployeesFromJson(json);
  Map<String, dynamic> toJson() => _$EmployeesToJson(this);
}

UserDetail _$EmployeesFromJson(Map<String, dynamic> json) {
  return UserDetail(
    id: json['ID'] as int,
    employeeName: json['Name'] as String,
    email: json['Email'] as String,
    address: json['Address'] as String,
    phone: json['Phone'] as String,
  );
}

Map<String, dynamic> _$EmployeesToJson(UserDetail instance) => <String, dynamic>{
  'ID': instance.id,
  'Name': instance.employeeName,
  'Email': instance.email,
  'Address': instance.address,
  'Phone': instance.phone,
};