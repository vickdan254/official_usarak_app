import 'package:flutter/material.dart';
import 'package:official_usarak_app/route_generator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Initially display FirstPage
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routing App'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Center(
              child: Text(
                'Main Landing Page',
                style: TextStyle(fontSize: 40),
              ),
            ),
            RaisedButton(
              child: Text('Go to Directory'),
              onPressed: () {
                // Pushing a route directly, WITHOUT using a named route
                Navigator.of(context).pushNamed('/MainDirectoryPage', arguments: 'Hello there from the First Page!');
              },
            ),
            RaisedButton(
              child: Text('Go to Fitness'),
              onPressed: () {
                // Pushing a route directly, WITHOUT using a named route
                Navigator.of(context).pushNamed('/MainFitnessPage', arguments: 'Hello there from the First Page!');
              },
            )
          ],
        ),
      ),
    );
  }
}


