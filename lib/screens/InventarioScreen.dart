import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InventarioScreen extends StatelessWidget {
  final List<Map<String, dynamic>> bombonas = [
    {
      "nombre": "Bombona Pequeña",
      "stock": 50,
      "caducidad": "2025-03-22",
    },
    {
      "nombre": "Bombona Mediana",
      "stock": 30,
      "caducidad": "2025-05-15",
    },
    {
      "nombre": "Bombona Grande",
      "stock": 20,
      "caducidad": "2025-07-10",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Inventario',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true, // Centra el título
      ),
      body: ListView.builder(
        itemCount: bombonas.length,
        itemBuilder: (context, index) {
          final bombona = bombonas[index];
          return Card(
            margin: EdgeInsets.all(10.0),
            elevation: 5,
            child: ListTile(
              title: Text(
                bombona["nombre"],
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Stock: ${bombona["stock"]}"),
                  Text("Caducidad: ${bombona["caducidad"]}"),
                ],
              ),
              trailing: Icon(Icons.arrow_forward_ios,color: Colors.orangeAccent,),
              onTap: () {
                print("Seleccionado: ${bombona["nombre"]}");
              },
            ),
          );
        },
      ),
    );
  }
}