import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final IconData prefixIcon;
  final Color prefixIconColor;
  final Color borderColor;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final String? Function(String?)? validator; // Validator function
  final String? errorText; // Error text to display

  const CustomTextField({
    required this.labelText,
    required this.prefixIcon,
    required this.prefixIconColor,
    required this.borderColor,
    required this.keyboardType,
    required this.controller,
    this.validator, // Optional validator function
    this.errorText, // Optional error text
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Define common border styles
    final border = OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(5)),
      borderSide: BorderSide(color: borderColor, width: 0.8),
    );

    final focusBorder = OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(
        color: borderColor,
        style: BorderStyle.solid,
        width: 1,
      ),
    );
    const errorBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      borderSide: BorderSide(color: Colors.red, width: 1.2),
    );
    return TextFormField(
      decoration: InputDecoration(
        border: border,
        enabledBorder: border,
        focusedBorder: focusBorder,
        errorBorder: errorBorder,
        focusedErrorBorder: errorBorder,
        fillColor: Colors.white,
        filled: true,
        labelText: labelText,
        labelStyle: TextStyle(
          color: prefixIconColor,
          fontWeight: FontWeight.w400,
        ),
        prefixIcon: Icon(prefixIcon, color: prefixIconColor),
        errorText: errorText,
        errorStyle: const TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.w400,
        ),
      ),
      controller: controller,
      style: TextStyle(color: prefixIconColor),
      keyboardType: keyboardType,
      validator: validator, // Assign validator function
    );
  }
}
