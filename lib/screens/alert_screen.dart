import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  void displayDialog(BuildContext context) {
    // print('hola mundo');
    showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          // return Text('Alerta?');
          return AlertDialog(
            elevation: 5,
            title: const Text('Titulo Alerta'),
            content: Column(
              children: const [
                Text('Este es el contenido de la alerta')
              ]
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              // onPressed: null,
              onPressed: () => displayDialog(context),
              child: const Text('Mostrar Alerta'))),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          child: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
