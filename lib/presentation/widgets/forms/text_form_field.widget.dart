import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    Key? key,
    required this.text,
    required this.validator,
    required this.onChanged,
    required this.label,
    required this.hint,
    this.prefixIcon,
    this.suffixIcon,
    this.autoCorrect = false,
    this.obscureText = false,
    this.readOnly = false,
    this.enabled = true,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
  }) : super(key: key);

  final String text;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final String label;
  final String hint;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool autoCorrect;
  final bool readOnly;
  final bool enabled;
  final bool obscureText;
  final TextInputType keyboardType;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: text,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      textCapitalization: TextCapitalization.none,
      autocorrect: autoCorrect,
      obscureText: obscureText,
      decoration: const InputDecoration()
          .applyDefaults(Theme.of(context).inputDecorationTheme)
          .copyWith(
            labelText: label,
            hintText: hint,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
          ),
      validator: validator,
      onChanged: onChanged,
      readOnly: readOnly,
      enabled: enabled,
    );
  }
}
