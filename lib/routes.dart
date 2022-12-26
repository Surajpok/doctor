import 'package:doctor/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
    }
    return null;
  }
}
