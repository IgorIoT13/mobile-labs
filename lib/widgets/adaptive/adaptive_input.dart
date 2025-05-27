import 'package:flutter/material.dart';

class AdaptiveInput extends StatelessWidget {
  final String title;
  final bool isPassword;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextStyle? textStyle;


  const AdaptiveInput({
    required this.title,
    this.isPassword = false,
    this.controller,
    this.keyboardType,
    this.textStyle = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      ),
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: textStyle,
        ),
        TextField(
          controller: controller,
          obscureText: isPassword,
          keyboardType: keyboardType ?? TextInputType.text,
          decoration: InputDecoration(
            labelText: title,
            border: const OutlineInputBorder(),
          ),
        )
      ],
    );
  }
}
