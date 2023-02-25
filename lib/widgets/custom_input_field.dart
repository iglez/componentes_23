import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText, 
    this.icon, 
    this.sufixIcon,
  });

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? sufixIcon;

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
      decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          helperText: helperText,
          // counterText: '3 caracteres'
          // prefixIcon: Icon(Icons.verified_user),
          suffixIcon: sufixIcon == null ? null : Icon(sufixIcon),
          icon: icon == null ? null : Icon(icon),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ))),
    );
  }
}
