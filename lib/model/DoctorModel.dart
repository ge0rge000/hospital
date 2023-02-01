
import 'dart:convert';

List<DoctorModel> doctorModelFromJson(String str) => List<DoctorModel>.from(json.decode(str).map((x) => DoctorModel.fromJson(x)));

String doctorModelToJson(List<DoctorModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DoctorModel {
  DoctorModel({
    required this.id,
    required this.name,
    required this.mobilePhone,
    required this.address,
    required this.usertype,
    required this.deviceId,
    this.rememberToken,
    this.currentTeamId,
    this.profilePhotoPath,
    required this.createdAt,
    required this.updatedAt,
    required this.profilePhotoUrl,
  });

  int id;
  String name;
  String mobilePhone;
  String address;
  String usertype;
  String deviceId;
  dynamic rememberToken;
  dynamic currentTeamId;
  dynamic profilePhotoPath;
  DateTime createdAt;
  DateTime updatedAt;
  String profilePhotoUrl;

  factory DoctorModel.fromJson(Map<String, dynamic> json) => DoctorModel(
    id: json["id"],
    name: json["name"],
    mobilePhone: json["mobile_phone"],
    address: json["address"],
    usertype: json["usertype"],
    deviceId: json["device_id"],
    rememberToken: json["remember_token"],
    currentTeamId: json["current_team_id"],
    profilePhotoPath: json["profile_photo_path"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    profilePhotoUrl: json["profile_photo_url"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "mobile_phone": mobilePhone,
    "address": address,
    "usertype": usertype,
    "device_id": deviceId,
    "remember_token": rememberToken,
    "current_team_id": currentTeamId,
    "profile_photo_path": profilePhotoPath,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "profile_photo_url": profilePhotoUrl,
  };
}
