import 'package:flutter/material.dart';
import 'package:sistema_objetos_perdidos/formulario.dart';

class MainButtons extends StatelessWidget {
  const MainButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
         onPressed: () {
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => const RegistroPage()));
         },
         child: Text('Registrar Objeto Perdido'))
      ],
    );
  }
}