import 'package:flutter/material.dart';


class MainResourcesPage extends StatelessWidget {
  // This is a String for the sake of an example.
  // You can use any type you want.
  final String data;

  MainResourcesPage({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resource Management'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Resource Mangagement Page',
              style: TextStyle(fontSize: 50),
            ),
            RaisedButton(
              child: Text('Your making it'),
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
