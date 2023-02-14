import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({super.key});

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
          title: const Text('Lista 2'),
        ),
        body: ListView.separated(
          itemBuilder: (_, index) {
            return ListTile(
              title: Text('$index - ${opciones[index]}'),
            );
          },
          separatorBuilder: (_, __) => const Divider(),
          itemCount: opciones.length
        )
    );
  }
}
