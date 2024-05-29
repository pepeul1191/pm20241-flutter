import 'dart:convert';
import 'dart:io';
import 'package:get/utils.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:ulimagym/models/apis/response_api.dart';
import 'package:ulimagym/models/apis/user_validate.dart';
import '../configs/constants.dart';
import '../configs/http_api_exception.dart';

class UserService {
  Future<UserValidate?> validate(String user, String password) async {
    String url = "${BASE_URL}user/validate";
    var request = http.MultipartRequest('POST', Uri.parse(url));
    request.fields['user'] = user;
    request.fields['password'] = password;
    try {
      var response = await request.send();
      if (response.statusCode == 200) {
        var responseBody = await response.stream.bytesToString();
        var decodedBody = json.decode(responseBody);
        var responseAPI = ResponseAPI.fromJson(decodedBody);
        int userId = responseAPI.data['user_id'];
        int memberId = responseAPI.data['member_id'];
        return UserValidate(userId: userId, memberId: memberId);
      } else if (response.statusCode == 404) {
        return UserValidate.empty();
      }
    } catch (e, stackTrace) {
      // Manejar excepciones
      print('Error no esperado: $e');
      print(stackTrace);
    }
  }
}
