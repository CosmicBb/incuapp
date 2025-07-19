import 'package:flutter/material.dart';

class PantallaPerfilesEspecies extends StatelessWidget {
  final List<Map<String, dynamic>> listaEspecies = [
    {
      'nombre': 'Pollo',
      'dias': 21,
      'temp': '37.5 - 37.8 °C',
      'humedad': '55-60% (65-70% últimos 3 días)',
      'volteo': 'Cada 2 horas hasta día 18',
      'icono': Icons.egg
    },
    {
      'nombre': 'Pato',
      'dias': 28,
      'temp': '37.2 - 37.5 °C',
      'humedad': '60-65% (75-80% últimos 3 días)',
      'volteo': 'Cada 4 horas hasta día 25',
      'icono': Icons.egg
    },
    {
      'nombre': 'Codorniz',
      'dias': 17,
      'temp': '37.6 - 37.9 °C',
      'humedad': '50-55% (65-70% últimos 2 días)',
      'volteo': 'Cada 1.5 horas hasta día 14',
      'icono': Icons.egg
    },
    {
      'nombre': 'Pavo',
      'dias': 28,
      'temp': '37.4 - 37.6 °C',
      'humedad': '55-60% (70-75% últimos 4 días)',
      'volteo': 'Cada 3 horas hasta día 24',
      'icono': Icons.egg
    },
    {
      'nombre': 'Ganso',
      'dias': 30,
      'temp': '37.3 - 37.5 °C',
      'humedad': '55-60% (75-80% últimos 5 días)',
      'volteo': 'Cada 4 horas hasta día 26',
      'icono': Icons.egg
    },
    {
      'nombre': 'Faisán ',
      'dias': 24,
      'temp': '37.5 - 37.7 °C',
      'humedad': '50-55% (70% últimos 3 días)',
      'volteo': 'Cada 2 horas hasta día 21',
      'icono': Icons.egg
    },
    {
      'nombre': 'Guacamaya',
      'dias': 28,
      'temp': '37.2 - 37.4 °C',
      'humedad': '50-55% (60% últimos 5 días)',
      'volteo': 'Cada 3 horas hasta día 24',
      'icono': Icons.egg
    },
    {
      'nombre': 'Loro',
      'dias': 26,
      'temp': '37.3 - 37.6 °C',
      'humedad': '50-55% (65% últimos 4 días)',
      'volteo': 'Cada 3 horas hasta día 22',
      'icono': Icons.egg
    },
    {
      'nombre': 'Búho',
      'dias': 32,
      'temp': '37.0 - 37.3 °C',
      'humedad': '45-50% (55% últimos 7 días)',
      'volteo': 'Cada 6 horas hasta día 28',
      'icono': Icons.egg
    },
    {
      'nombre': 'Águila',
      'dias': 42,
      'temp': '36.8 - 37.2 °C',
      'humedad': '40-45% (50% últimos 10 días)',
      'volteo': 'Cada 8 horas hasta día 38',
      'icono': Icons.egg
    },
    {
      'nombre': 'Avestruz',
      'dias': 42,
      'temp': '36.2 - 36.8 °C',
      'humedad': '30-40% (50% últimos 7 días)',
      'volteo': 'Cada 2 horas hasta día 38',
      'icono': Icons.egg
    },
    {
      'nombre': 'Ñandú',
      'dias': 40,
      'temp': '36.5 - 36.9 °C',
      'humedad': '35-45% (55% últimos 6 días)',
      'volteo': 'Cada 3 horas hasta día 35',
      'icono': Icons.egg
    },
    {
      'nombre': 'Emú',
      'dias': 56,
      'temp': '36.0 - 36.5 °C',
      'humedad': '30-40% (45% últimos 10 días)',
      'volteo': 'Cada 4 horas hasta día 50',
      'icono': Icons.egg
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Perfiles de Especies"),
        backgroundColor: Colors.orange.shade300,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: BusquedaEspecies(listaEspecies),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: listaEspecies.length,
        itemBuilder: (context, index) {
          final especie = listaEspecies[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ExpansionTile(
              leading: Icon(especie['icono'] ?? Icons.egg, 
                          color: Colors.orange.shade700),
              title: Text(especie['nombre'], 
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        )),
              children: [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildInfoRow("Duración incubación:", "${especie['dias']} días"),
                      _buildInfoRow("Temperatura:", especie['temp']),
                      _buildInfoRow("Humedad:", especie['humedad']),
                      _buildInfoRow("Volteo:", especie['volteo']),
                      SizedBox(height: 16),
                      Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange.shade300,
                            foregroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context, especie);
                          },
                          child: Text("Seleccionar Perfil"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade700
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                fontWeight: FontWeight.w400
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BusquedaEspecies extends SearchDelegate {
  final List<Map<String, dynamic>> especies;

  BusquedaEspecies(this.especies);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return _buildResultados();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return _buildResultados();
  }

  Widget _buildResultados() {
    final resultados = especies.where((especie) =>
        especie['nombre'].toString().toLowerCase().contains(query.toLowerCase()));

    return ListView.builder(
      itemCount: resultados.length,
      itemBuilder: (context, index) {
        final especie = resultados.elementAt(index);
        return ListTile(
          leading: Icon(especie['icono'] ?? Icons.egg, 
                     color: Colors.orange.shade700),
          title: Text(especie['nombre']),
          subtitle: Text("${especie['dias']} días - ${especie['temp']}"),
          onTap: () {
            close(context, especie);
          },
        );
      },
    );
  }
}