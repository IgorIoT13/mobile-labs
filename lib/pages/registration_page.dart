import 'package:flutter/material.dart';
import '../widgets/central_btn.dart';
import '../widgets/input_box.dart';

class RegistrationPage extends StatefulWidget{
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Registration'),
      ),
      body: Center(
        child: Column(
          children: [
            InputBox(title: "email"),
            InputBox(title: "Ім'я"),
            InputBox(title: "Пароль", isPassword: true),
            InputBox(title: "Підтвердження паролю", isPassword: true),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CenteredButton(
                    label: "Зареєструватися",
                    onPressed: () {
                      // Дія
                    },
                  ),
                  const SizedBox(width: 16), // Відступ між кнопками
                  CenteredButton(
                    label: "Повернутися до входу",
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}