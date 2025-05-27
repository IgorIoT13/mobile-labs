import 'package:flutter/material.dart';

import '../widgets/device_section.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});
  final List<String> devices = const [
    'Device 1',
    'Device 2',
    'Device 3'
  ];
  final List<String> descriptions = const [
    'Description 1',
    'Description 2',
    'Description 3'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(devices.length, (index) {
            return DeviceSection(
              deviceName: devices[index],
              shortDescription: descriptions[index],
              status: index % 2 == 0, // Example status
            );
          }),
          
        )
      ),
    );
  }
}