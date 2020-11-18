import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Images',
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
            'Image Gallery',
            style: TextStyle(fontSize: 18),
          ),
          Flexible(
            child: GridView.count(
              childAspectRatio: 4,
              crossAxisCount: 1,
              children: [
                Card(
                  child: ListTile(
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
                    leading: Image.asset('assets/images/lake.jpg'),
                    title: Text('Lake'),
                    subtitle: Text('Fishing and hiking'),
                  ),
                ),
                Card(
                  child: ListTile(
                    onTap: () async {
                      const url = 'https://www.youtube.com/watch?v=gdZLi9oWNZg';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not open $url';
                      }
                    },
                    leading: Image.asset('assets/images/trail.jpg'),
                    title: Text('Trail'),
                    subtitle: Text('Less than a mile'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset('assets/images/art.jpg'),
                    title: Text('Art'),
                    subtitle: Text('Black Lives Matter'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset('assets/images/sculpture.jpg'),
                    title: Text('Sculpture'),
                    subtitle: Text('Silicon Valley culture'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Image.network('https://i.imgur.com/lk6WHIW.jpg'),
                    title: Text('Ocean'),
                    subtitle: Text('Exotic reefs'),
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
