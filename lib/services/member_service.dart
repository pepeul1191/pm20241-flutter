import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ulimagym/models/apis/response_api.dart';
import 'package:ulimagym/models/apis/member_resume.dart';
import '../configs/constants.dart';
import '../models/apis/member_exercise.dart';

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

  Future<List<MemberExercise>?> fetchExercises(
      int memberId, int bodyPartId) async {
    String url =
        "${BASE_URL}member/exercises?member_id=${memberId}${bodyPartId != 0 ? 'body_part_id=${bodyPartId}' : ''}";
    List<MemberExercise> memberExercises = [];
    try {
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var decodedBody = json.decode(response.body);
        var responseAPI = ResponseAPI.fromJson(decodedBody);
        memberExercises = (responseAPI.data as List)
            .map((item) => MemberExercise.fromJson(item))
            .toList();
        return memberExercises;
      } else if (response.statusCode == 404) {
        return memberExercises;
      }
    } catch (e, stackTrace) {
      // Manejar excepciones
      print('Error no esperado: $e');
      print(stackTrace);
    }
  }
}
