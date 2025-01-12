import 'package:blink2/core/helpers/text_field_decor.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    required this.labelText,
    required this.contorller,
    required this.textInputType,
  });
  final String labelText;
  final TextInputType textInputType;
  final TextEditingController contorller;
  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.contorller,
      keyboardType: widget.textInputType,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Field cannot be empty';
        }
        return null;
      },
      decoration: textFieldDecoration(labelText: widget.labelText),
    );
  }
}
