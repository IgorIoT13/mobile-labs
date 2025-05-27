import 'package:flutter/material.dart';
import 'package:labwork/pages/login_page.dart';
import 'pages/home_page.dart';
import 'package:labwork/pages/registration_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const RegistrationPage(),
      routes: {
        '/register': (context) => const RegistrationPage(),
        '/home': (context) => const HomePage(),
        // '/profile': (context) => const ProfilePage(),
        // '/device': (context) => const DevicePage(),
        // '/loading': (context) => const LoadingPage(),
        '/login': (context) => const LoginPage(),
      },
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       String value = _textController.text.toLowerCase();

//       if (value.isNotEmpty) {
//         if(value == 'іван') {
//           _counter++;
//         }else if (value == 'марія') {
//           _counter = -10;
//         } else if (value == 'денис' || value == 'ван') {
//           _counter += 1000;
//         } else if (value == 'віка') {
//           _counter ++;
//         }else if (value == 'марія степанівна' || value == "ігор") {
//           _counter = 1000000000;
//         }
//         _textController.clear();
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('Будь ласка, введіть своє ім\'я.')),
//         );
//       }

//     });
//   }

//   final TextEditingController _textController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text('You have pushed the button this many times:'),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//             TextField(
//               controller: _textController,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: 'Введи Ім\'я',
//                 hintText: 'Наприклад: Іван'
//               ),
//             ),
//           ],
//         ),
//       ),
      
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
