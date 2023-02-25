import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: const InputDecoration(
        hintText: 'Nombre del usuario',
        labelText: 'Nombre',
        helperText: 'Solo letras',
        // counterText: '3 caracteres'
        // prefixIcon: Icon(Icons.verified_user),
        suffixIcon: Icon(Icons.group_outlined),
        icon: Icon(Icons.verified_user_sharp),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          )
        )
      ),
    );
  }
}