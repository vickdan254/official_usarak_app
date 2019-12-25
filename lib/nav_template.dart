import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  // This is a String for the sake of an example.
  // You can use any type you want.
  final String data;

  SecondPage({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routing App Testing'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Second Page',
              style: TextStyle(fontSize: 50),
            ),
            RaisedButton(
              child: Text('Go to 3rd route'),
              onPressed: () {
                // Pushing a route directly, WITHOUT using a named route
                Navigator.of(context).pushNamed('/third',
                  //  arguments: 'Hello there from the Third Page!'
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
