import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:try1/models/Bombona.dart';

class BombonaScreen extends StatefulWidget {
  final Bombona bombona;

  const BombonaScreen({super.key, required this.bombona});

  @override
  State<BombonaScreen> createState() => _BombonaState();
}

class _BombonaState extends State<BombonaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.bombona.nombre),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Imagen de la bombona
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(widget.bombona.imagenUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Detalles de la Bombona',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                'Nombre: ${widget.bombona.nombre}',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              Text(
                'Capacidad: ${widget.bombona.capacidad}',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              Text(
                'Peso: ${widget.bombona.peso}',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              Text(
                'Precio: ${widget.bombona.precio}',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}