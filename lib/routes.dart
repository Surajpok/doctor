import 'package:flutter/material.dart';
import 'package:doctor/components/navigation/bottom_nav.dart';
import 'package:doctor/screens/home/home_screen.dart';
import 'package:doctor/screens/notification/notification.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const BottomNav(),
        );
      case '/home':
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case '/notification':
        return MaterialPageRoute(
          builder: (context) => const NotifyScreen(),
        );
    }
    return null;
  }
}
