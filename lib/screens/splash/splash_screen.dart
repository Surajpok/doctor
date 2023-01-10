import 'dart:async';
import 'package:doctor/imports.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = '/';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState;
    startTimer();
  }

  startTimer() {
    var duration = const Duration(seconds: 2);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacementNamed(context, "/intro");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.white,
      body: Center(
        child: Container(
          child: Lottie.asset(
            Assets.lottie.logolottie.path,
            height: IconSizes.bigIcon,
          ),
        ),
      ),
    );
  }
}
