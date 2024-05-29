import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ulimagym/models/apis/response_api.dart';
import 'package:ulimagym/models/apis/member_resume.dart';
import '../configs/constants.dart';

class MemberService {
  Future<MemberResume?> fetchResume(int memberId) async {
    String url = "${BASE_URL}member/resume?member_id=${memberId}";
    try {
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var decodedBody = json.decode(response.body);
        var responseAPI = ResponseAPI.fromJson(decodedBody);
        int exercises = responseAPI.data['exercises'];
        int bodyParts = responseAPI.data['body_parts'];
        return MemberResume(exercises: exercises, bodyParts: bodyParts);
      } else if (response.statusCode == 404) {
        return MemberResume.empty();
      }
    } catch (e, stackTrace) {
      // Manejar excepciones
      print('Error no esperado: $e');
      print(stackTrace);
    }
  }
}
