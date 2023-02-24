import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Column(
            children: [
              TextFormField(
                autofocus: true,
                initialValue: '',
                // initialValue: 'Ivan Gonzalez',
                textCapitalization: TextCapitalization.words,
                onChanged: (value) {
                  print('El valor es $value');
                },
                validator: (value) {
                  if (value == null) return 'Este campo es requerido';

                  // return 'Hola mundo';
                  return value.length < 3 ? 'Mínimo 3 caracteres' : null;
                },
                autovalidateMode: AutovalidateMode.always,
              )
            ],
          ),
        ),
      ),
    );
  }
}
