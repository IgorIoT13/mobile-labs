import 'package:flutter/material.dart';

import 'package:labwork/widgets/adaptive/adaptive_block.dart';
import 'package:labwork/widgets/adaptive/adaptive_button.dart';
import 'package:labwork/widgets/adaptive/adaptive_input.dart';

class RegistrationPage extends StatelessWidget {

  const RegistrationPage({super.key});

  static const List<String> titles = [
    'Email',
    'Name',
    'Password',
    'Confirm Password',
  ];

  static const List<String> btn = [
    'Registration',
    'Back to Login',
  ];

  void _onRegistrationPressed(BuildContext context) {
    Navigator.pushNamed(context, '/login');
  }
  void _onBackToLoginPressed(BuildContext context) {
    Navigator.pushNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Registration'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AdaptiveBlock(
              breakpoint: 5000,
              children: [
                AdaptiveInput(
                  title: titles[0],
                  controller: TextEditingController(),
                ),
                AdaptiveInput(
                  title: titles[1],
                  controller: TextEditingController(),
                ),
                AdaptiveInput(
                  title: titles[2],
                  isPassword: true,
                  controller: TextEditingController(),
                ),
                AdaptiveInput(
                  title: titles[3],
                  isPassword: true,
                  controller: TextEditingController(),
                ),
              ]
            ),
            AdaptiveBlock(
              children:[
                  AdaptiveButton(
                    label: btn[0],
                    onPressed: () => _onRegistrationPressed(context),
                    width: 200,
                    height: 50,
                  ),
                  AdaptiveButton(
                    label: btn[1],
                    onPressed: () => _onBackToLoginPressed(context),
                    width: 200,
                    height: 50,
                  ),
                ],
            ),
           ],
        ),
      ),
    );
  }
}
