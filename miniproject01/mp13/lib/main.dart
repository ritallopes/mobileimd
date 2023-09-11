import 'package:flutter/material.dart';
import 'package:miniproject13/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMCalc',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 178, 0, 133)),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
