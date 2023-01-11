import 'package:doctor/components/intro_slide.dart';
import 'package:doctor/imports.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});
  static const String routeName = '/intro';

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
    return Material(
      color: ColorName.white,
      child: Stack(
        children: [
          PageView(
            controller: _controller,
            scrollDirection: Axis.horizontal,
            children: const [
              IntroSlide1(),
              IntroSlide1(),
              IntroSlide1(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.3),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: const SlideEffect(
                dotColor: ColorName.primaryAccent,
                activeDotColor: ColorName.primaryAccent,
              ),
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: ScreenSize.screenHeight * 0.2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: MyElevatedButton(
                height: ScreenSize.screenHeight * 0.07,
                width: double.infinity,
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
                borderRadius: BorderRadius.circular(RadiusSize.buttonRadius),
                child: Text(
                  'Create An Account',
                  style: TextStyle(
                    fontSize: FontSizes.normal,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: ScreenSize.screenHeight * 0.11,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: MyTextButton(
                height: ScreenSize.screenHeight * 0.07,
                width: double.infinity,
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                borderRadius: BorderRadius.circular(RadiusSize.buttonRadius),
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: FontSizes.normal),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
