import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({super.key});

  final List<String> opciones = const [
    'gatitos',
    'perritos',
    'tortugas',
    'tiburon',
    'ballenas',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
        elevation: 0,
      ),
      // body: ListView(
      //   children: const [
      //     Text('Hola Mundo'),
      //     Text('Hola Mundo'),
      //     Text('Hola Mundo'),
      //     Text('Hola Mundo'),
      //     Text('Hola Mundo'),
      //   ],
      // ),


      // body: ListView(
      //   children: const [
      //     ListTile(title: Text('Hola Mundo')),
      //     ListTile(title: Text('Hola Mundo')),
      //     ListTile(title: Text('Hola Mundo')),
      //     ListTile(title: Text('Hola Mundo')),
      //   ],
      // ),


      body: ListView(
        children: crearOpciones(),
      ),
    );
  }

  List<Widget> crearOpciones() {
    // return [
    //   ListTile(title: Text('Hola Mundo')),
    //   ListTile(title: Text('Hola Mundo')),
    //   ListTile(title: Text('Hola Mundo')),
    //   ListTile(title: Text('Hola Mundo')),
    // ];


    // definimos el arreglo vacio
    // List<Widget> lista = [];

    // por cada elemento de opciones
    // for (var i = 0; i < opciones.length; i++) {
    //   var opt = opciones[i];
    //   // lo agregamos al arreglo
    //   lista.add(ListTile(title: Text('$opt')));
    // }

    // for (var opt in opciones) {
    //   lista..add(ListTile(title: Text('$opt')))
    //         ..add(Divider());
    // }

    // regresamos el arreglo cargado
    // return lista;


    return opciones.map((opt) {
      return Column(
        children: [
          ListTile(title: Text('$opt')),
          const Divider(),
        ],
      );
    }).toList();


    // return opciones.map((opt) {
    //   return Column(
    //     children: [
    //       ListTile(title: Text('$opt')),
    //       Divider(),
    //     ],
    //   );
    // }).toList();
  }
}
