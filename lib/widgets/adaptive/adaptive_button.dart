import 'package:flutter/material.dart';

class AdaptiveButton extends StatelessWidget{
  final String label;
  final VoidCallback onPressed;
  final double width;
  final double height;
  final TextStyle? textStyle;

  const AdaptiveButton({
    required this.label,
    required this.onPressed,
    this.width = 200,
    this.height = 50,
    this.textStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0), // Додаємо зовнішній відступ
      child: SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          ),
          onPressed: onPressed,
          child: Text(
            label,
            style: textStyle ?? const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

}