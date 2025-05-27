import 'package:flutter/material.dart';


class HomePage extends StatelessWidget{
  const HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Home page'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'Welcome',
              textAlign: TextAlign.left,
            )
          ]
        )
      ),
    );
  }
}