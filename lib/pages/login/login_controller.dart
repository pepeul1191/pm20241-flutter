import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:ulimagym/models/apis/user_validate.dart';
import 'package:ulimagym/services/user_service.dart';
import '../../models/entities/user.dart';
import '../home/home_page.dart';
import '../recover/recover_page.dart';
import '../signin/signin_page.dart';

class LoginController extends GetxController {
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var message = "Initial Text".obs;
  var messageColor = Colors.yellow.obs;
  UserService userService = UserService();

  List<User> users = [
    User(user: "user1", password: "password1"),
    User(user: "user2", password: "password2"),
    User(user: "user3", password: "password3"),
    User(user: "user4", password: "password4"),
    User(user: "user5", password: "password5"),
    User(user: "user6", password: "password6"),
    User(user: "user7", password: "password7"),
    User(user: "user8", password: "password8"),
    User(user: "user9", password: "password9"),
    User(user: "user10", password: "password10"),
  ];

  void login(BuildContext context) async {
    //print('usuario: ${userController.text}, contraseña: ${passwordController.text}');
    String user = userController.text;
    String password = passwordController.text;
    UserValidate? userValidate = await userService.validate(user, password);
    if (userValidate == null) {
      message.value = 'No se pudo validar el usuario';
      messageColor.value = Colors.red;
    } else if (userValidate!.isEmpty()) {
      message.value = 'Usuario no válido';
      messageColor.value = Colors.red;
    } else {
      message.value = 'usuario encontrado';
      messageColor.value = Colors.green;
      Future.delayed(Duration(seconds: 2), () {
        message.value = '';
        if (messageColor.value == Colors.green) {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => HomePage(
                      user: userValidate,
                    )),
          );
        }
      });
    }
  }

  void goToSignIn(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignInPage()),
    );
  }

  void goResetPassword(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RecoverPage()),
    );
  }
}
