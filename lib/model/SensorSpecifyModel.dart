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

  });

  int id;
  var nameSensor;
  var detailSensor;
  var imageSensor;


  factory SensorSpecifyModel.fromJson(Map<String, dynamic> json) => SensorSpecifyModel(
    id: json["id"],
    nameSensor: json["name_sensor"],
    detailSensor: json["detail_sensor"],
    imageSensor: json["image_sensor"],

  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name_sensor": nameSensor,
    "detail_sensor": detailSensor,
    "image_sensor": imageSensor,

  };
}
