import 'package:flutter/material.dart';

class BotonTablero extends StatelessWidget {
  final String titulo;
  final IconData icono;
  final VoidCallback? alPresionar;

  const BotonTablero({
    required this.titulo, 
    required this.icono, 
    this.alPresionar
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(padding: EdgeInsets.all(16)),
      onPressed: alPresionar ?? () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icono, size: 40),
          SizedBox(height: 10),
          Text(titulo, style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}