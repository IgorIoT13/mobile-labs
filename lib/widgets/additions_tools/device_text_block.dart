import 'package:flutter/material.dart';

class DeviceTextBlock extends StatelessWidget{
  final String title;
  final String description;

  const DeviceTextBlock({
      required this.title,
      super.key, 
      this.description = '',
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
              
          ),
          if (description.isNotEmpty) 
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                description,
                style: TextStyle(
                  fontSize: 14
                )
              ),
          ),
        ],
      ),
    );
  }
}
