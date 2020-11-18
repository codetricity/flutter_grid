import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Squares',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SquareView(),
    );
  }
}

class SquareView extends StatelessWidget {
  const SquareView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            'Colored Squares',
            style: TextStyle(fontSize: 18),
          ),
          Flexible(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                Container(
                  color: Colors.green,
                ),
                Container(color: Colors.yellow),
                Container(color: Colors.blue),
                Container(color: Colors.purple),
                Container(color: Colors.red),
                Container(color: Colors.amber)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
