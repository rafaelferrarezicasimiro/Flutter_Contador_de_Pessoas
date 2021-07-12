import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Contador de Pessoas',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black87,
      ),
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;
  String _infoTexto = 'Pode Entrar!';

  void _changePeople(int numero) {
    setState(() {
      _people += numero;

      _people < 0
          ? _infoTexto = 'Mundo Invertido!'
          : _people < 10
              ? _infoTexto = 'Pode Entrar!'
              : _infoTexto = 'Lotado!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "images/restaurant.jpg",
            fit: BoxFit.cover,
            height: 1000.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Pessoas: $_people",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: TextButton(
                      child: Text(
                        "+1",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        _changePeople(1);
                      },
                    ),
                  ),
                  TextButton(
                    child: Text(
                      "-1",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      _changePeople(-1);
                    },
                  ),
                ],
              ),
              Text(
                _infoTexto,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
