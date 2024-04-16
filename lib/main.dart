import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Stack(children: [
        Container(
          color: Colors.blue,
          margin: EdgeInsets.all(
              00.0), // Margen inferior de 20.0 (puedes ajustar este valor)
          alignment: Alignment.centerLeft,
        ),
        Container(
          color: Colors.green,
          height: 350,
          margin: EdgeInsets.all(
              00.0), // Margen inferior de 20.0 (puedes ajustar este valor)
          alignment: Alignment.centerLeft,
        ),
        Container(
          color: Colors.transparent,
          margin: EdgeInsets.only(
              top: 200,
              left: 100,
              right:
                  100), // Margen inferior de 20.0 (puedes ajustar este valor)
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(
                      bottom: 10), // Margen de 8 en todos los lados
                  child: Text(
                    'Logo',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  )),
              Text(
                'Gimnasio ULima',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
        Container(
            color: Colors.white,
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(
              MediaQuery.of(context).size.width * 0.1, // Margen izquierdo
              200, // Margen superior
              MediaQuery.of(context).size.width * 0.1, // Margen derecho
              MediaQuery.of(context).size.width * 0.1, // Margen inferior
            ),
            height: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/0/0e/ULIMA_logo.png', // URL de la imagen
                  width: 40, // Ancho de la imagen
                  height: 40, // Alto de la imagen
                  fit: BoxFit.cover, // Ajuste de la imagen
                ),
                Text('Ingresa esta información',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText:
                            'Ingrese su contraseña', // Etiqueta del campo de texto
                        border:
                            OutlineInputBorder(), // Borde del campo de texto
                      ),
                    ),
                    Text('Contraseña',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        )),
                    SizedBox(
                      width: double.infinity, // Ocupar todo el ancho disponible
                      child: TextButton(
                        onPressed: () {
                          // Función que se ejecuta cuando se presiona el botón
                          print('Botón presionado');
                        },
                        style: TextButton.styleFrom(
                          backgroundColor:
                              Colors.blue, // Color de fondo del botón
                          padding: EdgeInsets
                              .zero, // Padding cero para eliminar el espacio interno
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius
                                .zero, // Bordes cero para eliminar los bordes
                          ),
                        ),
                        child: Text(
                          'Botón sin Bordes',
                          style: TextStyle(
                            color: Colors.white, // Color del texto
                          ),
                        ),
                      ),
                    ),
                    /*ElevatedButton(
                      onPressed: () {
                        // Función que se ejecuta cuando se presiona el botón
                        print('Botón presionado');
                      },
                      child: Text('Login'),
                    ), */
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('No tienes una cuenta?',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        )),
                    Text('Créala aquí',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.cyanAccent,
                        )),
                  ],
                )
              ],
            )),
      ])),
    );
  }
}
