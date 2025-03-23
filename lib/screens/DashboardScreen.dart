import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:try1/screens/InventarioScreen.dart';
import 'package:try1/widgets/ClockWidget.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text(""),
      ),
      body: Padding(
        padding: EdgeInsets.all(0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClockWidget(fontSize: 20),//Clock
              SizedBox(height:40),
              Text(
                'Resumen Inventario',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              _buildInventorySummary(),
              SizedBox(height:10),

              Text(
                'Acciones Rápidas',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              _buildQuickActions(context),
            ],
          ),
        )
      ),
    );
  }

  Widget _buildInventorySummary() {
    return Card(
      elevation: 9,
      margin: EdgeInsets.all(25.0),
      child: Padding(
        padding: EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('Total de Bombonas: ', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                  Text('200', style: TextStyle(color: Colors.orange, fontSize: 17, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text('En Stock: ', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                  Text('150', style: TextStyle(color: Colors.orange, fontSize: 17, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text('En Uso: ', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                  Text('50', style: TextStyle(color: Colors.orange, fontSize: 17, fontWeight: FontWeight.bold)),
                ],
              ),
            ],
        ),
      ),
    );
  }

  Widget _buildQuickActions(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: _buildActionCard(
                icon: Icons.list,
                label: 'Ver Inventario',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InventarioScreen()),
                  );
                },
              ),
            ),
          ],
        ),
        SizedBox(width: 20),
        Row(
          children: [
            Expanded(
              child: _buildActionCard(
                icon: Icons.share,
                label: 'Informar',
                onTap: () {
                  print('Que si tio ');
                },
              ),
            ),
          ],
        )


      ],

    );
  }

  // Widget para crear una tarjeta de acción
  Widget _buildActionCard({required IconData icon, required String label, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Icon(icon, size: 40, color: Colors.orangeAccent),
              SizedBox(height: 10),
              Text(
                label,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}