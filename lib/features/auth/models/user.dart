// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  String phoneNo;
  String name;

  UserModel({
    required this.phoneNo,
    required this.name,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        phoneNo: json["phone_no"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "phone_no": phoneNo,
        "name": name,
      };
}
