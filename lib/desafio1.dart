import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Contador());
  }
}
 
class Contador extends StatefulWidget {
  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int _contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contador com Estado')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Valor: $_contador', style: TextStyle(fontSize: 32, color: verificarCor(_contador))),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {
                setState(() {
                  _contador++;
                });
              }, child: Text('+')),
              SizedBox(width: 10),
              ElevatedButton(onPressed: () {
                setState(() {
                  _contador--;
                });
              }, child: Text('-')),
              SizedBox(width: 10),
              ElevatedButton(onPressed: () {
                setState(() {
                  _contador = 0;
                });
              }, child: Text('Resetar')),
            ],
          ),
        ],
      ),
    );
  }
}

Color verificarCor(cont){
    if(cont > 0){
      return Colors.green;
    }
    if(cont < 0){ 
    return Colors.red;
    }
    return Colors.black;
}
 
 