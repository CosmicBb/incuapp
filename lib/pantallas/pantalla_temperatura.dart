import 'package:flutter/material.dart';

class PantallaTemperatura extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Temperatura")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("Temperatura actual:", style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text("37.5 °C", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
            Text("Configurar alarma si sube o baja...", style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}