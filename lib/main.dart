import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Links',
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
              crossAxisCount: 1,
              children: [
                Card(
                  child: InkWell(
                    onTap: () async {
                      const url =
                          'https://www.loveandlemons.com/baking-recipes/';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not open $url';
                      }
                      print('tapped tile');
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.bakery_dining,
                        color: Colors.brown[300],
                        size: 100.0,
                      ),
                      title: Text('Baking'),
                      subtitle: Text('Croissants and muffins'),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    const url = 'https://www.youtube.com/watch?v=gdZLi9oWNZg';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not open $url';
                    }
                  },
                  child: Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.audiotrack,
                        color: Colors.green,
                        size: 100.0,
                      ),
                      title: Text('K-POP'),
                      subtitle: Text('Music and accessories'),
                    ),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.beach_access,
                      color: Colors.blue,
                      size: 100.0,
                    ),
                    title: Text('Beach'),
                    subtitle: Text('Beach and surf'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.favorite,
                      color: Colors.pink,
                      size: 100.0,
                    ),
                    title: Text('Favorites'),
                    subtitle: Text('Saved information'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.brush,
                      color: Colors.black38,
                      size: 100.0,
                    ),
                    title: Text('Art'),
                    subtitle: Text('Painting and calligraphy'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.cake,
                      color: Colors.pink[200],
                      size: 100.0,
                    ),
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
