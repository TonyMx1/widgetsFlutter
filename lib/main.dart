import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widgets en Flutter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Widget que muestra un texto centrado
            MiWidget(),
            SizedBox(height: 20),

            // Widget que representa un botón elevado
            MiBoton(),
            SizedBox(height: 20),

            // Widget que contiene un campo de texto
            MiTextField(),
            SizedBox(height: 20),

            // Widget que muestra un contenedor decorativo
            MiContenedorDecorativo(),
            SizedBox(height: 20),

            // Widget que muestra un círculo con estilo
            MiCirculoConEstilo(),
            SizedBox(height: 20),

            // Widget que muestra un contenedor con bordes redondeados
            MiBordeRedondeado(),
          ],
        ),
      ),
    );
  }
}

class MiWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Widget que muestra un texto centrado
    return Center(
      child: Text(
        '¡Hola mundo, este es el primer widget en Flutter!',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

class MiBoton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Widget que representa un botón elevado
    return ElevatedButton(
      onPressed: () {
        // Acción a realizar al presionar el botón
        print('Botón presionado');
      },
      child: Text('Presiona este botón'),
    );
  }
}

class MiTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Widget que contiene un campo de texto
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Ingresa tu texto',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

class MiContenedorDecorativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Widget que muestra un contenedor decorativo
    return Container(
      width: 200,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          'Contenedor Decorativo',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class MiCirculoConEstilo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Widget que muestra un círculo con estilo
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.green,
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          'Círculo con Estilo',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class MiBordeRedondeado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Widget que muestra un contenedor con bordes redondeados
    return Container(
      width: 200,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          'Borde Redondeado',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
