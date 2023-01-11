import 'package:doctor/imports.dart';

class IntroSlide1 extends StatelessWidget {
  const IntroSlide1({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              const Expanded(
                child: SizedBox(
                  width: UiSize.sizedBoxWidth,
                ),
              ),
              Expanded(
                child: Image.asset(
                  Assets.icons.logo.path,
                  height: IconSizes.avatar,
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/bottom_nav');
                  },
                  child: const Text(
                    'skip',
                    style: TextStyle(
                        color: ColorName.primaryColor,
                        fontSize: FontSizes.headline2),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: ScreenSize.screenHeight * 0.05,
          ),
          const Padding(
            padding:
                EdgeInsets.only(left: Paddings.normal, right: Paddings.normal),
            child: Text(
              'Consult Only With Doctor You Trust',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: FontSizes.slide,
                  color: ColorName.black,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Image.asset(
            Assets.images.nurse.path,
            width: ScreenSize.screenWidth,
          ),
        ],
      ),
    );
  }
}
