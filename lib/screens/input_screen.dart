import 'package:componentes_23/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Ivan',
      'last_name': 'Gonzalez',
      'email': 'ivan.gonzalez@cetys.mx',
      'password': '123456',
      'role': 'Admin'
    };

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
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                const CustomInputField(
                  labelText: 'Nombre',
                  hintText: 'Nombre del usuario',
                ),
                const SizedBox(height: 30),
                const CustomInputField(
                  labelText: 'Apellido',
                  hintText: 'Apellido del usuario',
                ),
                const SizedBox(height: 30),
                const CustomInputField(
                  labelText: 'Correo',
                  hintText: 'Correo del usuario',
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 30),
                const CustomInputField(
                    labelText: 'Contraseña',
                    hintText: 'Contraseña',
                    keyboardType: TextInputType.emailAddress,
                    isPassword: true),
                const SizedBox(height: 30),
                ElevatedButton(
                  child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Guardar'))),
                  onPressed: () {
                    if (!myFormKey.currentState!.validate()) {
                      print('formulario no valido');
                      return;
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
