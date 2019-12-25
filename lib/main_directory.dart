import 'package:flutter/material.dart';

class MainDirectoryPage extends StatelessWidget {
  // This is a String for the sake of an example.
  // You can use any type you want.
  final String data;

  MainDirectoryPage({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Directory Page'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Directory Page',
              style: TextStyle(fontSize: 50),
            ),
            RaisedButton(
              child: Text('Directory page!'),
              onPressed: () {
                // Pushing a route directly, WITHOUT using a named route
                Navigator.of(context).pushNamed('/',
                    arguments: 'Hello there from the Main Directory Page!'
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
