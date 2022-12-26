import 'package:doctor/components/icon_button.dart';
import 'package:doctor/constants/font_icons.dart';
import 'package:doctor/constants/index.dart';
import 'package:doctor/gen/assets.gen.dart';
import 'package:doctor/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: 400,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Welcome!\nAafira",
                            style: TextStyle(
                              fontSize: FontSizes.headline1,
                              fontWeight: FontWeight.w700,
                              height: LineHeight.large,
                            ),
                          ),
                          FittedBox(),
                          Text(
                            "Have a nice day ☺️",
                            style: TextStyle(
                              fontSize: FontSizes.normal,
                              fontWeight: FontWeight.normal,
                              height: LineHeight.superLarge,
                            ),
                          ),
                        ],
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
      ),
    );
  }
}
