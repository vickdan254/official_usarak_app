import 'package:flutter/material.dart';

class MainLearningPage extends StatelessWidget {
  // This is a String for the sake of an example.
  // You can use any type you want.
  final String data;

  MainLearningPage({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Learning Page'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Learning Page',
              style: TextStyle(fontSize: 50),
            ),
            RaisedButton(
              child: Text('Learning Page!'),
              onPressed: () {
                // Pushing a route directly, WITHOUT using a named route
                Navigator.of(context).pushNamed('/',
                    arguments: 'Hello there from the Main Learning Page!');
              },
            ),
          ],
        ),
      ),
    );
  }
}
