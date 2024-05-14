import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'exercise_controller.dart';
import '../../configs/constants.dart';
import '../../models/entities/body_part.dart';

class ExercisePage extends StatelessWidget {
  ExerciseController control = Get.put(ExerciseController());

  Widget _selectBodyPart(BuildContext context, double screenWidth) {
    return Obx(() => SizedBox(
        // O ConstrainedBox
        width: screenWidth - 40 - 30,
        child: InputDecorator(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Partes del Cuerpo',
            hintText: 'Select an option',
            contentPadding:
                EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<BodyPart>(
              isDense: true,
              isExpanded: true,
              value: null, // Establecer el valor inicial como null
              onChanged: (BodyPart? bodyPart) {
                control.bodyPartSelected(context, bodyPart!);
              },
              items: [
                DropdownMenuItem<BodyPart>(
                  value: null, // Establecer el valor del hint como null
                  child: Text(
                    control.bodyPartSelectedText.value,
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
                ...control.bodyParts
                    .map<DropdownMenuItem<BodyPart>>((BodyPart item) {
                  return DropdownMenuItem<BodyPart>(
                    value: item,
                    child: Text(item.name),
                  );
                }).toList(),
              ],
            ),
          ),
        )));
  }

  Widget _buildBody(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Column(children: [
        Row(
          children: [
            _selectBodyPart(context, screenWidth),
            _resetButton(context)
          ],
        ),
        _exercisesGrid(context),
      ]),
    );
  }

  Widget _resetButton(BuildContext context) {
    return Container(
        width: 40,
        child: IconButton(
          icon: Icon(Icons.refresh), // Icono a mostrar
          onPressed: () {
            control.resetBodyPartSelection();
          }, // Función a ejecutar al hacer clic
        ));
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
    return MaterialApp(
        home: Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: null,
      body: _buildBody(context),
    ));
  }
}
