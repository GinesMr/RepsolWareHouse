import 'dart:async';
import 'package:flutter/material.dart';

class ClockWidget extends StatefulWidget {
  final double fontSize;  // Agregamos el parámetro para el tamaño de la fuente

  // Constructor para recibir el tamaño de la fuente
  ClockWidget({Key? key, this.fontSize = 50}) : super(key: key);

  @override
  _ClockWidgetState createState() => _ClockWidgetState();
}

class _ClockWidgetState extends State<ClockWidget> {
  String _timeString = "";
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _updateTime();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      _updateTime();
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _updateTime() {
    final now = DateTime.now();
    final formattedTime = "${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')}";
    setState(() {
      _timeString = formattedTime;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        _timeString,
        style: TextStyle(fontSize: widget.fontSize, fontWeight: FontWeight.bold,color: Colors.orangeAccent),
      ),
    );
  }
}
