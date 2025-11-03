import 'package:flutter/material.dart';

class RegistroPage extends StatelessWidget {
  const RegistroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registrar Objeto'),
      ),
      body: Center(
        child: Text('Formulario de Registro'),
      ),
    );
  }
}