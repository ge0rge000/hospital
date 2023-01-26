// To parse this JSON data, do
//
//     final patientReadModel = patientReadModelFromJson(jsonString);

import 'dart:convert';

List<PatientReadModel> patientReadModelFromJson(String str) => List<PatientReadModel>.from(json.decode(str).map((x) => PatientReadModel.fromJson(x)));

String patientReadModelToJson(List<PatientReadModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PatientReadModel {
  PatientReadModel({
    required this.id,
    required this.sensorId,
    required this.patientId,
    required this.firstRead,
    required this.secoundRead,
    required this.thirdRead,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  int sensorId;
  int patientId;
  String firstRead;
  String secoundRead;
  String thirdRead;
  DateTime createdAt;
  DateTime updatedAt;

  factory PatientReadModel.fromJson(Map<String, dynamic> json) => PatientReadModel(
    id: json["id"],
    sensorId: json["sensor_id"],
    patientId: json["patient_id"],
    firstRead: json["first_read"],
    secoundRead: json["secound_read"],
    thirdRead: json["third_read"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "sensor_id": sensorId,
    "patient_id": patientId,
    "first_read": firstRead,
    "secound_read": secoundRead,
    "third_read": thirdRead,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
