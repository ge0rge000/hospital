// To parse this JSON data, do
//
//     final sensorModel = sensorModelFromJson(jsonString);

import 'dart:convert';

List<SensorModel> sensorModelFromJson(String str) => List<SensorModel>.from(
    json.decode(str).map((x) => SensorModel.fromJson(x)));

String sensorModelToJson(List<SensorModel> data) => json.encode(
    List<dynamic>.from(data.map((x) => x.toJson())));

class SensorModel {
  SensorModel({
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

  factory SensorModel.fromJson(Map<String, dynamic> json) => SensorModel(
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
