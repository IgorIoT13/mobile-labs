import 'package:flutter/material.dart';
import '../widgets/central_btn.dart';
import '../widgets/input_box.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          children: [
            InputBox(title: "Логін"),
            InputBox(title: "Пароль", isPassword: true),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CenteredButton(
                    label: "Увійти",
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                  ),
                  const SizedBox(width: 16), // Відступ між кнопками
                  CenteredButton(
                    label: "Зареєструватися",
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                  ),
                ],
              ),
            )
        ],)
      ),
    );
  }
}