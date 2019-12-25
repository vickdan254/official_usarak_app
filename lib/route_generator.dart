import 'package:flutter/material.dart';
import  'package:official_usarak_app/fitness_counter.dart';
import 'package:official_usarak_app/main_directory.dart';
import 'package:official_usarak_app/main_fitness.dart';
import 'package:official_usarak_app/main_learning.dart';
import 'package:official_usarak_app/xylophone_player.dart';
import 'package:official_usarak_app/resources_main.dart';
import 'package:official_usarak_app/units_fort_greely.dart';
import 'package:official_usarak_app/units_fort_richardson.dart';
import 'package:official_usarak_app/units_fort_wainwright.dart';
import 'main.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //  Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LandingPage());

      case '/MainResourcesPage':
        // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => MainResourcesPage(
              data: args,
            ),
          );
        }
        return MaterialPageRoute(builder: (_) => MainResourcesPage());

      case '/MainFitnessPage':
        // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => MainFitnessPage(
              data: args
            ),
          );
        }
        return MaterialPageRoute(builder: (_) => MainFitnessPage());

      case '/MainGreelyPage':
        // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => MainGreelyPage(
              data: args,
            ),
          );
        }
        return MaterialPageRoute(builder: (_) => MainGreelyPage());

      case '/MainRichardsonPage':
        // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => MainRichardsonPage(
              data: args,
            ),
          );
        }
        return MaterialPageRoute(builder: (_) => MainRichardsonPage());

      case '/MainWainwrightPage':
        // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => MainWainwrightPage(
              data: args,
            ),
          );
        }
        return MaterialPageRoute(builder: (_) => MainWainwrightPage());

      case '/FitnessCounter':
        // Did not need validation for counter page / No arg to implement within
        return MaterialPageRoute(builder: (_) => FitnessCounter());

      case '/MainLearningPage':
        // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => MainLearningPage(
              data: args,
            ),
          );
        }
        return MaterialPageRoute(builder: (_) => MainLearningPage());

      case '/MainDirectoryPage':
        // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => MainDirectoryPage(
              data: args,
            ),
          );
        }
        return MaterialPageRoute(builder: (_) => MainDirectoryPage());

        case '/MainFitenessPage':
        // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => MainFitnessPage(
              data: args,
            ),
          );
        }
        return MaterialPageRoute(builder: (_) => MainFitnessPage());

        case '/XylophoneApp':
        // Did not need validation for counter page / No arg to implement within
        return MaterialPageRoute(builder: (_) => XylophoneApp());


        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.


        //return _errorRoute();
        default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Under Construction Errors'),
        ),
        body: Center(
          child: Text('Now this is embarrissing. We are working on this issue!'),
        ),
      );
    });
  }
}
