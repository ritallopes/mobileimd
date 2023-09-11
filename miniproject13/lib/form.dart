import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  @override
  State<MyForm> createState() => _FormState();
}

class _FormState extends State<MyForm> {
  TextEditingController _pesoController = TextEditingController();
  TextEditingController _alturaController = TextEditingController();
  double resultIMC = 0;
  String imageIMC = '';
  String msgIMC = '';

  _submitForm() {
    final peso = _pesoController.text;
    final altura = _alturaController.text;

    if (peso.isEmpty || altura.isEmpty) {
      return;
    }
    setState(() {
      resultIMC = (num.parse(_pesoController.text) /
          (num.parse(_alturaController.text) /
              100 *
              num.parse(_alturaController.text) /
              100));
      if (resultIMC < 18.5) {
        msgIMC = "Abaixo de Peso: IMC =  " + resultIMC.toString();
        imageIMC = "assets/images/blue.png";
      } else if (resultIMC < 25) {
        msgIMC = "Peso Normal: IMC =  " + resultIMC.toString();
        imageIMC = "assets/images/green.png";
      } else if (resultIMC < 30) {
        msgIMC = "Sobrepeso: IMC =  " + resultIMC.toString();
        imageIMC = "assets/images/yellow.png";
      } else if (resultIMC < 35) {
        msgIMC = "Obesidade Grau I:: IMC =  " + resultIMC.toString();
        imageIMC = "assets/images/purple.png";
      } else if (resultIMC < 40) {
        msgIMC = "Obesidade Grau II: IMC =  " + resultIMC.toString();
        imageIMC = "assets/images/orange.png";
      } else if (resultIMC >= 40) {
        msgIMC = "Obesidade Mórbida: IMC =  " + resultIMC.toString();
        imageIMC = "assets/images/red.png";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          TextFormField(
            keyboardType: TextInputType.numberWithOptions(),
            controller: _alturaController,
            decoration: const InputDecoration(
                labelText: "Altura",
                hintText: 'Digite sua altura em centimetros'),
          ),
          TextFormField(
            keyboardType: TextInputType.numberWithOptions(),
            controller: _pesoController,
            decoration: const InputDecoration(
                labelText: "Peso", hintText: 'Digite seu peso em kilos'),
          ),
          const SizedBox(height: 5.0),
          Container(
            width: 50,
            child: ElevatedButton(
              onPressed: (_submitForm),
              child: Text('Calcular'),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
              height: 50,
              child: Center(
                child: resultIMC > 0 ? Text(msgIMC) : null,
              )),
          Container(
              height: 100,
              child: Center(
                child: resultIMC > 0
                    ? Image.asset(imageIMC, fit: BoxFit.cover)
                    : null,
              )),
        ],
      ),
    );
  }
}
