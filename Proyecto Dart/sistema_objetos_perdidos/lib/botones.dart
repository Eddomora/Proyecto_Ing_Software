import 'package:flutter/material.dart';
import 'package:sistema_objetos_perdidos/formulario.dart';
import 'package:sistema_objetos_perdidos/formulario2.dart';

class MainButtons extends StatelessWidget {
  const MainButtons({super.key});

  @override
 Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RegistroPage()),
              ); // redirecciona
            },
            child: const Text('Registrar Objeto Perdido'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const EncontradoPage()),
              );
            },
            child: const Text('Registrar Objeto Encontrado'),
          ),
        ],
      ),
    );
  }
}