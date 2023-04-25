import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController txtNum1 = TextEditingController();
  final TextEditingController txtNum2 = TextEditingController();
  String _result = '';

  void suma() {
    setState(() {
      double N1 = double.tryParse(txtNum1.text) ?? 0;
      double N2 = double.tryParse(txtNum2.text) ?? 0;
      double resultado = N1 + N2;
      _result = resultado.toString();
    });
  }

  void resta() {
    setState(() {
      double N1 = double.tryParse(txtNum1.text) ?? 0;
      double N2 = double.tryParse(txtNum2.text) ?? 0;
      double result = N1 - N2;
      _result = result.toString();
    });
  }

  void multiplicacion(){
    setState(() {
      double N1 = double.tryParse(txtNum1.text) ?? 0;
      double N2 = double.tryParse(txtNum2.text) ?? 0;
      double result = N1 * N2;
      _result = result.toString();

    });
  }

  void division(){
    setState(() {
      double N1 = double.tryParse(txtNum1.text) ?? 0;
      double N2 = double.tryParse(txtNum2.text) ?? 0;
      double result = N1 / N2;
      _result = result.toString();

    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculadora'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: txtNum1,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Ingresa un numero',
                  ),
                ),
              ),
              SizedBox(height: 30.0,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: txtNum2,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Ingresa otro numero',
                  ),
                ),
              ),
              SizedBox(height: 40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: suma,
                    child: Text('Sum'),
                  ),
                  ElevatedButton(
                    onPressed: resta,
                    child: Text('Rest'),
                  ),
                  ElevatedButton(
                    onPressed: multiplicacion,
                    child: Text('Multi'),
                  ),
                  ElevatedButton(
                    onPressed: division,
                    child: Text('Div'),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Text(
                _result,
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
