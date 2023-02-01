import 'package:helath/utils/my_string.dart';
import 'package:http/http.dart' as http;

import '../model/DoctorModel.dart';



class DoctorService {
  static Future <List<DoctorModel>> getDoctors() async {
    var response = await http.get(Uri.parse('$baseUrl/doctors'));

    if (response.statusCode == 200) {
      var jsonData = response.body;
      return doctorModelFromJson(jsonData);
    } else {
      return throw Exception("failed to load sensors");
    }
  }
}