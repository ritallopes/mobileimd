import 'package:flutter/material.dart';
import 'package:miniproject13/form.dart';
import 'package:miniproject13/menu.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyMenu(),
      body: Padding(
          padding: EdgeInsets.fromLTRB(10.0, 0.0, 5.0, 10.0),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: MyForm(),
              ),
            ],
          )),
    );
  }
}
