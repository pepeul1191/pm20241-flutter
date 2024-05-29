import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ulimagym/models/apis/member_resume.dart';
import '../../models/apis/user_validate.dart';
import 'routine_controller.dart';

class RoutinePage extends StatelessWidget {
  UserValidate user;
  RoutineController control = Get.put(RoutineController());

  RoutinePage({required this.user});

  Widget _buildBody(BuildContext context) {
    return SafeArea(
      child: Column(children: [
        Column(
          children: [
            Row(children: [
              Text("Total de Ejercicios: "),
              Obx(() => Text(control.resume.value.exercises.toString()))
            ]),
            Row(children: [
              Text("Partes del Cuerpo: "),
              Obx(() => Text(control.resume.value.bodyParts.toString()))
            ]),
          ],
        )
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    control.user = this.user;
    control.fetchResume();
    return MaterialApp(
        home: Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: null,
      body: _buildBody(context),
    ));
  }
}
