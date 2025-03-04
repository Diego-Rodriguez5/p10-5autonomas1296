import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Diego Rodriguez, Mat: 1296",
          style: TextStyle(color: Colors.white), // Color del texto blanco
        ),
        backgroundColor: Color(0xff17b0ec), // Color azul oscuro para el AppBar
        elevation: 10, // Sombra en el AppBar
        automaticallyImplyLeading:
            false, // Elimina el ícono de retroceso por defecto
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 305, // Cuadro más grande
              height: 305, // Cuadro más grande
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 10,
                    blurRadius: 7,
                    offset: Offset(0, 3), // Cambia la posición de la sombra
                  ),
                ],
              ),
              child: Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Icon(
                      Icons.calendar_today,
                      size: 36, // Tamaño del ícono del calendario
                      color: Colors.black, // Logo en color negro
                    ),
                    Positioned(
                      top: 21, // Ajusta la posición vertical del cuadrito
                      right: 6, // Ajusta la posición horizontal del cuadrito
                      child: Container(
                        width: 9, // Ancho del cuadrito
                        height: 9, // Alto del cuadrito
                        decoration: BoxDecoration(
                          color: Colors.black, // Color del cuadrito
                          border: Border.all(
                            color: Colors.white, // Borde blanco para resaltar
                            width: 1, // Grosor del borde
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40), // Más separación entre el cuadro y el botón
            Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey[300], // Botón más claro
                borderRadius: BorderRadius.circular(10),
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey[
                        400]!, // Contorno más oscuro solo en la parte inferior
                    width: 2, // Grosor del contorno
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  'Switch',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
