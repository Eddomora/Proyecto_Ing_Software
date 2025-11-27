import 'package:flutter/material.dart';
import 'package:sistema_objetos_perdidos/login/pantalla_login.dart';
import 'package:sistema_objetos_perdidos/objetos_perdidos/formulario_perdido.dart';
import 'package:sistema_objetos_perdidos/objetos_perdidos/formulario_encontrado.dart';
import 'package:sistema_objetos_perdidos/objetos_perdidos/historial_reportes.dart';

class MainButtons extends StatelessWidget {
  final String usuarioLogueado;
  const MainButtons({super.key, required this.usuarioLogueado});

  @override
  Widget build(BuildContext context) {
   return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Hola, $usuarioLogueado", style: TextStyle(color: Colors.grey)),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegistroPage(usuarioEmail: usuarioLogueado)),
              ); 
            },
            child: const Text('Registrar Objeto Perdido'),
          ),
          const SizedBox(height: 16),
          
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                // PASAMOS EL USUARIO AL FORMULARIO
                MaterialPageRoute(builder: (context) => RegistroPage(usuarioEmail: usuarioLogueado)),
              ); 
            },
            child: const Text('Registrar Objeto Perdido'),
          ),
          const SizedBox(height: 16),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HistorialReportes(),
                ),
              );
            },
            child: const Text('Mis Reportes'),
          ),

          const SizedBox(height: 40),

          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
             backgroundColor: Colors.red.shade100, // Un rojo suave
             foregroundColor: Colors.red.shade900, // Texto rojo oscuro
           ),
           icon: const Icon(Icons.logout),
           label: const Text('Cerrar Sesión'),
          onPressed: () {
    
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const PantallaLogin()),
            (Route<dynamic> route) => false,
    );
  },
),
        ],
      ),
    );
  }
}
