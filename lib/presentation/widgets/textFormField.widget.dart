import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    Key? key,
    required this.text,
    required this.validator,
    required this.onChanged,
    required this.label,
    required this.prefixIcon,
  }) : super(key: key);

  final String text;
  final Function(String) validator;
  final Function(String) onChanged;
  final String label;
  final Widget prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // controller: controllerUsername,
      initialValue: text,
      keyboardType: TextInputType.text,
      textCapitalization: TextCapitalization.none,
      autocorrect: false,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        labelText: label,
        prefixIcon: prefixIcon,
      ),
      validator: (text) {
        return null;
      },
      onChanged: onChanged,
    );
  }
}
