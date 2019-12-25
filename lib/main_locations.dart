import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  // This is a String for the sake of an example.
  // You can use any type you want.
  final String data;

  ThirdPage({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('You made it to the 3rd page!'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Third Page',
              style: TextStyle(fontSize: 50),
            ),
            RaisedButton(
              child: Text('It worked!'),
              onPressed: () {
                // Pushing a route directly, WITHOUT using a named route
                Navigator.of(context).pushNamed('/third',
                    arguments: 'Hello there from the Third Page!');
              },
            ),
          ],
        ),
      ),
    );
  }
}
