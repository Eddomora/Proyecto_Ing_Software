import 'package:flutter/material.dart';

class Pantallainicio extends StatelessWidget{
  final VoidCallback onGoRegistro;
  final VoidCallback onGoLogin;

  const Pantallainicio({
      super.key,
      required this.onGoRegistro,
      required this.onGoLogin,
    });

    Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){

        //Posicion de botones
       
        return Stack(
          fit: StackFit.expand,
          children: [
          ],
        );
      },
    );
  }
}

