import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ulimagym/models/apis/user_validate.dart';
import 'home_controller.dart';
import '../exercise/exercise_page.dart';
import '../profile/profile_page.dart';
import '../routine/routine_page.dart';

class HomePage extends StatefulWidget {
  final UserValidate user;

  HomePage({
    required this.user,
  });

  @override
  _HomePageState createState() => _HomePageState(user: this.user);
}

class _HomePageState extends State<HomePage> {
  final UserValidate user;

  _HomePageState({required this.user});

  TemplateController control = Get.put(TemplateController());

  Widget _popUpMenu(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (String value) {
        // Manejar la opción seleccionada
        switch (value) {
          case 'about':
            print('about');
            break;
          case 'profile':
            print(
                'profile user_id = ${user.userId}, member_id = ${user.memberId}');
            break;
          case 'signOut':
            print('Cerrar Sesión');
            break;
          default:
            print('Unknown fruit');
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        PopupMenuItem<String>(
          value: 'profile',
          child: Text('Mi perfil'),
        ),
        PopupMenuItem<String>(
          value: 'about',
          child: Text('Acerca de'),
        ),
        PopupMenuItem<String>(
          value: 'signOut',
          child: Text('Cerrar Sesión'),
        ),
      ],
    );
  }

  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    RoutinePage(),
    ExercisePage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildBody(BuildContext context) {
    return SafeArea(
      child: Text('Home Page'),
    );
  }

  Widget _navigationBottom() {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.list_outlined),
          label: 'Mi Rutina',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.addchart_outlined),
          label: 'Ejercicios',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Mi Cuenta',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue,
      onTap: _onItemTapped,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'ULima Gym',
            style: TextStyle(color: Colors.white),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: Color(0XFFF26F29),
          actions: [
            // Agregar un menú desplegable al AppBar
            _popUpMenu(context)
          ]),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: _navigationBottom(),
    );
  }
}
