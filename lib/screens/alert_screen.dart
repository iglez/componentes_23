import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  void displayDialogIOS( BuildContext context ) {

  }

  void displayDialogAndroid(BuildContext context) {
    // print('hola mundo');
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          // return Text('Alerta?');
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(10),
            ),
            elevation: 5,
            title: const Text('Titulo Alerta'),
            content: Column(mainAxisSize: MainAxisSize.min, children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 10),
              FlutterLogo(
                size: 100,
              )
            ]),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context), 
                child: Text('Cancelar')
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              // onPressed: null,
              onPressed: () => displayDialogIOS(context),
              // onPressed: () => displayDialogAndroid(context),
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
