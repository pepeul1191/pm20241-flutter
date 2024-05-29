import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ulimagym/models/apis/member_resume.dart';
import '../../configs/constants.dart';
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
            _exercisesGrid(context),
          ],
        )
      ]),
    );
  }

  Widget _exercisesGrid(BuildContext context) {
    return Expanded(
        child: Container(
            height: MediaQuery.of(context)
                .size
                .height, // Asignar altura basada en el tamaño de la pantalla
            child: Obx(() => GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Number of columns in the grid
                  mainAxisSpacing: 8.0, // Spacing between rows
                  crossAxisSpacing: 8.0, // Spacing between columns
                ),
                itemCount: control.exercises.value.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                      onTap: () {
                        // Handle the tap event.
                        print(
                            'Grid tile ${control.exercises.value[index].id} tapped');
                      },
                      child: GridTile(
                        child: Container(
                          color: Colors.white,
                          child: Center(
                              child: Column(
                            children: [
                              Expanded(
                                  child: Image.network(
                                BASE_URL +
                                    control.exercises.value[index].imageUrl,
                                fit: BoxFit.cover,
                              )),
                              SizedBox(height: 8),
                              Text(
                                control.exercises.value[index].name,
                                textAlign: TextAlign.center,
                              )
                            ],
                          )),
                        ),
                      ));
                }))));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: [
        Row(children: [
          Text("Total de Ejercicios: "),
          Obx(() => Text(control.resume.value.exercises.toString()))
        ]),
        Row(children: [
          Text("Partes del Cuerpo: "),
          Obx(() => Text(control.resume.value.bodyParts.toString()))
        ]),
        Expanded(child: _exercisesGrid(context)),
      ]),
    );
  }
}
