import 'package:flutter/material.dart';

import '../widgets/adaptive/adaptive_block.dart';
import '../widgets/adaptive/adaptive_button.dart';
import '../widgets/adaptive/adaptive_input.dart';


class LoginPage extends StatelessWidget{
  const LoginPage({super.key});

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
                  title: "Email",
                  controller: TextEditingController(),
                ),
                AdaptiveInput(
                  title: "Password",
                  isPassword: true,
                  controller: TextEditingController(),
                ),
              ]
            ),
            AdaptiveBlock(
              children:[
                  AdaptiveButton(
                    label: "Login",
                    onPressed: () {
                      // Action for login
                    },
                    width: 200,
                    height: 50,
                  ),
                  AdaptiveButton(
                    label: "Register",
                    onPressed: () {
                      Navigator.pushNamed(context, '/registration');
                    },
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
