import 'package:flutter/material.dart';
import 'package:miniproject12/form.dart';
import 'package:miniproject12/menu.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyMenu(),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: MyForm(),
      ),
    );
  }
}
