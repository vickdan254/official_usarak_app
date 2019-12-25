import 'package:flutter/material.dart';

class MainGreelyPage extends StatelessWidget {
  // This is a String for the sake of an example.
  // You can use any type you want.
  final String data;

  MainGreelyPage({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('You made it to the MainGreelyPage'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Main Greely Page',
              style: TextStyle(fontSize: 50),
            ),
            RaisedButton(
              child: Text('Main Greely Page'),
              onPressed: () {
                // Pushing a route directly, WITHOUT using a named route
                Navigator.of(context).pushNamed('/',
                    arguments: 'Hello there from the Third Page!');
              },
            ),
          ],
        ),
      ),
    );
  }
}
