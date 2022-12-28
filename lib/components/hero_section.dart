import 'package:doctor/imports.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenSize.screenHeight * ContainerSizes.heroHeight,
      width: double.maxFinite,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              Assets.images.model.path,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(Paddings.normal),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: ContainerSizes.heroTextColumnHeight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(
                          height: UiSize.heroTextTopGap,
                        ),
                        Text(
                          "Welcome!\nZhafira",
                          style: TextStyle(
                            fontSize: FontSizes.headline1,
                            fontWeight: FontWeight.w600,
                            height: LineHeight.large,
                          ),
                        ),
                        Text(
                          "Have a nice day ☺️",
                          style: TextStyle(
                            fontSize: FontSizes.normal,
                            fontWeight: FontWeight.w400,
                            height: LineHeight.superLarge,
                            color: ColorName.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: UiSize.heroTextButtonGap,
                    ),
                    Column(
                      children: [
                        MyIconButton(
                          onTap: () {},
                          height: 55,
                          width: 140,
                          child1: const Text(
                            'Urgent Care',
                            style: TextStyle(
                              fontSize: FontSizes.normal,
                              color: ColorName.white,
                            ),
                          ),
                          child: const Icon(
                            MyIcons.heroButtonIcon,
                            color: ColorName.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
