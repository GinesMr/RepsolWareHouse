import 'package:flutter/material.dart';
import 'package:try1/screens/InventarioScreen.dart';
import 'DashboardScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index=0;
  final List<Widget> _screens=[
    DashboardScreen(),
    InventarioScreen(),
  ];
  void tap(int selec){
    setState(() {
      index= selec;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: _screens[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: tap,
        items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
      icon:Icon(Icons.dashboard,color: Colors.orangeAccent,),
      label: "Dashboard",
    ),
    BottomNavigationBarItem(
    icon:Icon(Icons.warehouse,color: Colors.orangeAccent,),
    label: "Inventario",
    ),
        ],
    ));
  }
}




