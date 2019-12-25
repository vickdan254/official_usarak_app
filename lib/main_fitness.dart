import 'package:flutter/material.dart';

class MainFitnessPage extends StatelessWidget {
  // This is a String for the sake of an example.
  // You can use any type you want.
  final String data;

  MainFitnessPage({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Fiteness Page'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Fitness Page',
              style: TextStyle(fontSize: 50),
            ),
            RaisedButton(
              child: Text('fitness page!'),
              onPressed: () {
                // Pushing a route directly, WITHOUT using a named route
                Navigator.of(context).pushNamed('/',
                    arguments: 'Hello there from the Main Fitenss Page!');
              },
            ),
          ],
        ),
      ),
    );
  }
}
