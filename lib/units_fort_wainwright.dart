import 'package:flutter/material.dart';

class MainWainwrightPage extends StatelessWidget {
  // This is a String for the sake of an example.
  // You can use any type you want.
  final String data;

  MainWainwrightPage({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('You made it to Main Wainwright Page!'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Main Wainwright Page',
              style: TextStyle(fontSize: 50),
            ),
            RaisedButton(
              child: Text('Main Wainwright Page!'),
              onPressed: () {
                // Pushing a route directly, WITHOUT using a named route
                Navigator.of(context).pushNamed('/',
                    arguments: 'Hello there from the Main Wainwright Page!');
              },
            ),
          ],
        ),
      ),
    );
  }
}
