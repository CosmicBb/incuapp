import 'package:flutter/material.dart';

class PantallaHistorial extends StatelessWidget {
  final List<Map<String, dynamic>> historial = [
    {
      'especie': 'Pollo',
      'inicio': '2025-05-01',
      'fin': '2025-05-22',
      'estado': 'Éxito',
    },
    {
      'especie': 'Codorniz',
      'inicio': '2025-04-10',
      'fin': '2025-04-27',
      'estado': 'Fallo por humedad',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Historial de incubaciones")),
      body: ListView.builder(
        itemCount: historial.length,
        itemBuilder: (context, index) {
          final item = historial[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              title: Text(item['especie']),
              subtitle: Text("Inicio: ${item['inicio']}\nFin: ${item['fin']}\nEstado: ${item['estado']}"),
              onTap: () {
                // Más detalles futuros
              },
            ),
          );
        },
      ),
    );
  }
}