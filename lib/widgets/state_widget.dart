import 'package:flutter/material.dart';

class StateWidget extends StatelessWidget {
  final String title;
  final bool state;

  const StateWidget({super.key, required this.title, required this.state});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: state ? Colors.green : Colors.red, 
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}