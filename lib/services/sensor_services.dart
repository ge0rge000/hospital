import 'package:helath/model/SensorSpecifyModel.dart';
import 'package:helath/utils/my_string.dart';
import 'package:http/http.dart' as http;

import '../model/Sensor_model.dart';


class SensorService{

  static  Future <List<SensorModel>> getSensors()async{
    var response= await http.get(Uri.parse('$baseUrl/sensors'));
    if(response.statusCode==200){
      var jsonData=response.body;
      return sensorModelFromJson(jsonData);
    }else{
      return throw Exception("failed to load sensors");
    }
  }

  static  Future<SensorSpecifyModel> getspecifysensor(id)async{
    var response= await http.get(Uri.parse('$baseUrl/sensors/'+'$id'));
    if(response.statusCode==200){
      print("sdsdfsdfdsfsdfsdfsdfsdfsd");
      var jsonData=response.body;
      return sensorSpecifyModelFromJson(jsonData);
    }else{
      return throw Exception("failed to load sensors");
    }
  }
}