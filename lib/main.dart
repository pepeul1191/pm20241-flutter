import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget _buildBody(BuildContext context) {
    final bool isKeyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;
    return SafeArea(
        child: Stack(
      children: [
        Container(
          color: Color(0xFFF2F2F2),
          width: double.infinity,
          height: double.infinity,
          margin: EdgeInsets.all(
              00.0), // Margen inferior de 20.0 (puedes ajustar este valor)
          alignment: Alignment.centerLeft,
        ),
        Column(
          children: [
            Expanded(
              flex: 2,
              child: _image(context),
            ),
            Expanded(flex: 1, child: Text('')),
          ],
        ),
        _form(context, isKeyboardOpen),
      ],
    ));
  }

  Widget _image(context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/login.png'),
            fit: BoxFit.cover, // Ajustar la imagen al tamaño del Container
          ),
        ),
        child: null);
  }

  Widget _links(BuildContext context) {
    return Container(
      child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  // Acciones a realizar cuando se haga clic en el Text
                },
                child: Text(
                  'Crear Cuenta',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFFF26F29),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  // Puedes agregar cualquier acción que desees realizar aquí
                },
                child: Text(
                  'Recuperar Contraseña',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFFF26F29),
                  ),
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }

  Widget _form(BuildContext context, bool isKeyboardOpen) {
    return SingleChildScrollView(
        child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0XFF999999), // Color del borde
                width: 2.0, // Ancho del borde
              ),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(
              MediaQuery.of(context).size.width * 0.1, // Margen izquierdo
              MediaQuery.of(context).size.width *
                  (isKeyboardOpen ? 0.3 : 0.9), // Margen superior
              MediaQuery.of(context).size.width * 0.1, // Margen derecho
              MediaQuery.of(context).size.width * 0.1, // Margen inferior
            ),
            height: 320,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Bienvenido',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
                SizedBox(height: 12),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextField(
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                        labelText: 'Usuario', // Etiqueta del campo de texto
                        labelStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.zero), // Borde del campo de texto
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color:
                                  Colors.black), // Color del borde al enfocar
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                        labelText: 'Contraseña', // Etiqueta del campo de texto
                        labelStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.zero), // Borde del campo de texto
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color:
                                  Colors.black), // Color del borde al enfocar
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity, // Ocupar todo el ancho disponible
                      child: TextButton(
                        onPressed: () {
                          // Función que se ejecuta cuando se presiona el botón
                          print('Botón presionado');
                        },
                        style: TextButton.styleFrom(
                          backgroundColor:
                              Color(0XFFF26F29), // Color de fondo del botón
                          padding: EdgeInsets
                              .zero, // Padding cero para eliminar el espacio interno
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius
                                .zero, // Bordes cero para eliminar los bordes
                          ),
                        ),
                        child: Text(
                          'Ingresar',
                          style: TextStyle(
                            color: Colors.white, // Color del texto
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity, // Ocupar todo el ancho disponible
                      child: TextButton(
                        onPressed: () {
                          // Función que se ejecuta cuando se presiona el botón
                          print('Botón presionado');
                        },
                        style: TextButton.styleFrom(
                          backgroundColor:
                              Color(0XFF008000), // Color de fondo del botón
                          padding: EdgeInsets
                              .zero, // Padding cero para eliminar el espacio interno
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius
                                .zero, // Bordes cero para eliminar los bordes
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons
                                  .google, // Icono de Google de Font Awesome
                              color: Colors.white, // Color del icono
                              size: 20, // Tamaño del icono
                            ), // Icono
                            SizedBox(
                                width: 12), // Espacio entre el icono y el texto
                            Text(
                              'Ingresar con Google',
                              style: TextStyle(
                                color: Colors.white, // Color del texto
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                _links(context),
              ],
            )));
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
