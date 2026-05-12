 
import 'package:flutter/material.dart';
 
class IconApp extends StatelessWidget {
  const IconApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}
 
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
 
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
 
class _MyHomePageState extends State<MyHomePage> {
  double size = 200;
  int red = 0;
  int blue = 0;
  int green = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter State'),
          actions: [
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () {
                setState(() {
                  if(size > 100){
                  size-=10;
                  }
                });
              },
            ),
            IconButton(
              icon: const Text('S'),
              onPressed: () {
                setState(() {
                  size = 100;
                });
              },
            ),
            IconButton(
              icon: const Text('M'),
              onPressed: () {
                setState(() {
                  size = 200;
                });
              },
            ),
            IconButton(
              icon: const Text('L'),
              onPressed: () {
                setState(() {
                  size = 300;
                });
              },
            ),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                setState(() {
                  if(size < 300){
                  size += 10;
                  }
                });
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: Icon(
                  Icons.lock_clock,
                  size: size,
                  color: defineCor(red, green, blue),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Slider(
                      activeColor: Colors.red,
                      value: red.toDouble(),
                      min: 0,
                      max: 255,
                      onChanged: (value) {
                        setState(() {
                          red = value.toInt();
                        });
                      },
                    ),
                  ),
                  Text(
                    '$red',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Slider(
                      activeColor: Colors.green,
                      value: green.toDouble(),
                      min: 0,
                      max: 255,
                      onChanged: (value) {
                        setState(() {
                          green = value.toInt();
                        });
                      },
                    ),
                  ),
                  Text(
                    '$green',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Slider(
                      activeColor: Colors.blue,
                      value: blue.toDouble(),
                      min: 0,
                      max: 255,
                      onChanged: (value) {
                        setState(() {
                          blue = value.toInt();
                        });
                      },
                    ),
                  ),
                  Text(
                    '$blue',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
 
Color defineCor(red,green,blue){
  return Color.fromRGBO(red, green, blue, 1);
}
