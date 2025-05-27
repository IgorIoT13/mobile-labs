import 'package:flutter/material.dart';

import 'package:labwork/widgets/adaptive/adaptive_block.dart';
import 'package:labwork/widgets/adaptive/adaptive_button.dart';
import 'package:labwork/widgets/adaptive/adaptive_input.dart';

class LoginPage extends StatelessWidget{
  const LoginPage({super.key});

  static const List<String> titles = [
    'Email',
    'Password',
  ];
  static const List<String> btn = [
    'Login',
    'Register',
  ];

  void _onLoginPressed(BuildContext context) {
    Navigator.pushNamed(context, '/home');
  }
  void _onRegisterPressed(BuildContext context) {
    Navigator.pushNamed(context, '/registration');
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Login'),
      ),
      body: Center(
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
                  isPassword: true,
                  controller: TextEditingController(),
                ),
              ]
            ),
            AdaptiveBlock(
              children:[
                  AdaptiveButton(
                    label: btn[0],
                    onPressed: () => _onLoginPressed(context),
                    width: 200,
                    height: 50,
                  ),
                  AdaptiveButton(
                    label: btn[1],
                    onPressed:() => _onRegisterPressed(context),
                    width: 200,
                    height: 50,
                  ),
                ],
            ),
           ],
          )
      ),
    );
  }
}
