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
            'Card and ListTile',
            style: TextStyle(fontSize: 18),
          ),
          Flexible(
            child: GridView.count(
              childAspectRatio: 2,
              crossAxisCount: 2,
              children: [
                Card(
                  child: ListTile(
                    leading:
                        Icon(Icons.bakery_dining, color: Colors.brown[300]),
                    title: Text('Baking'),
                    subtitle: Text('Croissants and muffins'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.favorite, color: Colors.pink),
                    title: Text('Favorites'),
                    subtitle: Text('Saved information'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.audiotrack, color: Colors.green),
                    title: Text('K-POP'),
                    subtitle: Text('Music and accessories'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.beach_access, color: Colors.blue),
                    title: Text('Beach'),
                    subtitle: Text('Beach and surf'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.brush, color: Colors.black38),
                    title: Text('Art'),
                    subtitle: Text('Painting and calligraphy'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.cake, color: Colors.pink[200]),
                    title: Text('Cupcakes'),
                    subtitle: Text('Fun pastry celebration'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
