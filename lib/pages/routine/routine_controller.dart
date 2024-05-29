import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ulimagym/models/apis/member_resume.dart';
import 'package:ulimagym/models/apis/user_validate.dart';
import 'package:ulimagym/services/member_service.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../models/apis/member_exercise.dart';

class RoutineController extends GetxController {
  UserValidate? user;
  RxList<MemberExercise> exercises = <MemberExercise>[].obs;
  Rx<MemberResume> resume = Rx<MemberResume>(MemberResume.empty());
  MemberService memberService = MemberService();

  void fetchResume() async {
    MemberResume? memberResume =
        await memberService.fetchResume(this.user!.memberId);
    if (memberResume == null) {
      Fluttertoast.showToast(
        msg: 'No hubo respuesta del servidor al traer el resumen del miembro',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
      );
    } else if (memberResume.isEmpty()) {
      Fluttertoast.showToast(
        msg: 'No hay datos de resumen del miembro',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
      );
      // message.value = 'no se encontro datos';
    } else {
      this.resume.value = memberResume;
    }
  }

  void fetchExercises() async {
    List<MemberExercise>? exercises =
        await memberService.fetchExercises(this.user!.memberId, 0);
    if (exercises == null) {
      Fluttertoast.showToast(
        msg: 'No hubo respuesta del servidor al traer el resumen del miembro',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
      );
    } else if (exercises.isEmpty) {
      Fluttertoast.showToast(
        msg: 'No hay datos de resumen del miembro',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
      );
      // message.value = 'no se encontro datos';
    } else {
      this.exercises.value = exercises;
    }
  }
}
