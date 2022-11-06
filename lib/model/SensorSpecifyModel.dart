// To parse this JSON data, do
//
//     final sensorSpecifyModel = sensorSpecifyModelFromJson(jsonString);

import 'dart:convert';

SensorSpecifyModel sensorSpecifyModelFromJson(String str) => SensorSpecifyModel.fromJson(json.decode(str));

String sensorSpecifyModelToJson(SensorSpecifyModel data) => json.encode(data.toJson());

class SensorSpecifyModel {
  SensorSpecifyModel({
    required this.id,
    required this.nameSensor,
    required this.detailSensor,
    required this.imageSensor,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String nameSensor;
  String detailSensor;
  String imageSensor;
  DateTime createdAt;
  DateTime updatedAt;

  factory SensorSpecifyModel.fromJson(Map<String, dynamic> json) => SensorSpecifyModel(
    id: json["id"],
    nameSensor: json["name_sensor"],
    detailSensor: json["detail_sensor"],
    imageSensor: json["image_sensor"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name_sensor": nameSensor,
    "detail_sensor": detailSensor,
    "image_sensor": imageSensor,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
