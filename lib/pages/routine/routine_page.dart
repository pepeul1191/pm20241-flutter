import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routine_controller.dart';

class RoutinePage extends StatelessWidget {
  RoutineController control = Get.put(RoutineController());

  Widget _buildBody(BuildContext context) {
    return SafeArea(
      child: Text('Routine Page'),
    );
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
