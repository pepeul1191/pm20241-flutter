import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';
import '../exercise/exercise_page.dart';
import '../profile/profile_page.dart';
import '../routine/routine_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TemplateController control = Get.put(TemplateController());

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
          ]),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: _navigationBottom(),
    );
  }
}
