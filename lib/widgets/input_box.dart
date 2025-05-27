import 'package:flutter/material.dart';

class InputBox extends StatelessWidget{
  final String title;
  final bool isPassword;
    const InputBox({
      super.key,
      required this.title,
      this.isPassword = false,
      });
  String get lowerTitle => title.toLowerCase();
    @override
    Widget build(BuildContext context) {
        return Center(
          child: SizedBox(
            width: 300,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                TextField(
                  obscureText: isPassword,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: title,
                    hintText: 'Enter your $lowerTitle',
                  ),
                ),
              ],
            ),
          )
        );
    }

}