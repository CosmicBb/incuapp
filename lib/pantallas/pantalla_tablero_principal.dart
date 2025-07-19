import 'package:flutter/material.dart';
import 'pantalla_temperatura.dart';
import 'pantalla_humedad.dart';
import 'pantalla_historial.dart';
import 'pantalla_perfiles_especies.dart';
import '../componentes/boton_tablero.dart';

class PantallaTableroPrincipal extends StatelessWidget {
  final int diasRestantes = 18; // Simulación de cuenta regresiva

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade50,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.egg)),
                  Row(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.orange.shade200,
                child: Text("$diasRestantes Días", style: TextStyle(fontSize: 22)),
              ),
              SizedBox(height: 10),
              Text(diasRestantes > 0 ? "En incubación" : "Sin incubaciones activas"),
              SizedBox(height: 20),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  children: [
                    BotonTablero(
                      titulo: "Temperatura",
                      icono: Icons.thermostat,
                      alPresionar: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PantallaTemperatura()),
                        );
                      },
                    ),
                    BotonTablero(
                      titulo: "Humedad",
                      icono: Icons.water_drop,
                      alPresionar: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PantallaHumedad()),
                        );
                      },
                    ),
                    BotonTablero(
                      titulo: "Historial",
                      icono: Icons.history,
                      alPresionar: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PantallaHistorial()),
                        );
                      },
                    ),
                    BotonTablero(
                      titulo: "Perfiles",
                      icono: Icons.pets,
                      alPresionar: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PantallaPerfilesEspecies()),
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
