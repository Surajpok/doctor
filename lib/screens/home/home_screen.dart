import 'package:doctor/components/appointment_section.dart';
import 'package:doctor/components/category_section.dart';
import 'package:doctor/imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                ((context, index) => _buildBody(context)),
                childCount: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildBody(BuildContext context) {
  return Container(
    child: Stack(
      children: <Widget>[
        const HeroSection(),
        Padding(
          padding: EdgeInsets.only(top: ScreenSize.screenHeight * 0.45),
          child: Container(
            width: ScreenSize.screenWidth,
            decoration: const BoxDecoration(
              color: ColorName.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(RadiusSize.containerRadius),
                topRight: Radius.circular(RadiusSize.containerRadius),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: Paddings.content,
                left: Paddings.normal,
                right: Paddings.normal,
                bottom: Paddings.content,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Ecare Services',
                    style: TextStyle(
                      fontSize: FontSizes.headline2,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const CategorySection(),
                  const SizedBox(
                    height: Paddings.minimum,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'My Appointments',
                        style: TextStyle(
                          fontSize: FontSizes.headline2,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(
                          fontSize: FontSizes.headline2,
                          fontWeight: FontWeight.w600,
                          color: ColorName.primaryColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: Paddings.normal,
                  ),
                  const AppoitmentSection(),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
