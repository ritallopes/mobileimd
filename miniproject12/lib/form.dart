import 'package:flutter/material.dart';

class MyForm extends StatelessWidget {
  const MyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
            flex: 1,
            child: Row(
              children: [
                TextField(
                  decoration: InputDecoration(labelText: 'Nome'),
                )
              ],
            )),
        Expanded(
            flex: 1,
            child: Row(
              children: [
                TextField(
                  decoration: InputDecoration(labelText: 'Nome'),
                )
              ],
            )),
      ],
    );
  }
}
