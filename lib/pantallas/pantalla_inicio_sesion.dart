import 'package:flutter/material.dart';
import 'pantalla_tablero_principal.dart';

class PantallaInicioSesion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade50,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Bienvenido a Incutech Connect",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 40),
            TextField(
              decoration: InputDecoration(labelText: "Correo"),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: "Contraseña"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PantallaTableroPrincipal()));
              },
              child: Text("Iniciar sesión"),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Registrarse"),
            ),
          ],
        ),
      ),
    );
  }
}