import 'package:flutter/material.dart';

class CenteredButton extends StatelessWidget {
  final String label;
  final Color color;
  final VoidCallback onPressed;

  const CenteredButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.color = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24.0), // 24 пікселі зверху
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: color,
              ),
              onPressed: onPressed,
              child: Text(label),
            ),
          ),
        ],
      ),
    );
  }
}