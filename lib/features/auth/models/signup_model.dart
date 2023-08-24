// To parse this JSON data, do
//
//     final signupRespModel = signupRespModelFromJson(jsonString);

import 'dart:convert';

SignupRespModel signupRespModelFromJson(String str) =>
    SignupRespModel.fromJson(json.decode(str));

String signupRespModelToJson(SignupRespModel data) =>
    json.encode(data.toJson());

class SignupRespModel {
  Detail detail;

  SignupRespModel({
    required this.detail,
  });

  factory SignupRespModel.fromJson(Map<String, dynamic> json) =>
      SignupRespModel(
        detail: Detail.fromJson(json["detail"]),
      );

  Map<String, dynamic> toJson() => {
        "detail": detail.toJson(),
      };
}

class Detail {
  String id;
  String phoneNo;
  String name;
  bool hasActiveSubscription;
  String freeModeStatus;
  bool canDownload;

  Detail({
    required this.id,
    required this.phoneNo,
    required this.name,
    required this.hasActiveSubscription,
    required this.freeModeStatus,
    required this.canDownload,
  });

  factory Detail.fromJson(Map<String, dynamic> json) => Detail(
        id: json["id"],
        phoneNo: json["phone_no"],
        name: json["name"],
        hasActiveSubscription: json["has_active_subscription"],
        freeModeStatus: json["free_mode_status"],
        canDownload: json["can_download"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "phone_no": phoneNo,
        "name": name,
        "has_active_subscription": hasActiveSubscription,
        "free_mode_status": freeModeStatus,
        "can_download": canDownload,
      };
}
