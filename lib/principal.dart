import 'package:flutter/material.dart';
import 'pantallas/pantalla_inicio_sesion.dart';

void main() => runApp(AplicacionIncubadora());

class AplicacionIncubadora extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Incutech Connect',
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: Colors.orange.shade300,
          secondary: Colors.orangeAccent,
        ),
      ),
      home: PantallaInicioSesion(),
    );
  }
}