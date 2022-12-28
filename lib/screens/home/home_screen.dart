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
  return SizedBox(
    height: ScreenSize.screenHeight * 1.3,
    child: Stack(
      children: <Widget>[
        const HeroSection(),
        Positioned(
          top: ScreenSize.screenHeight * 0.45,
          child: Container(
            width: ScreenSize.screenWidth,
            height: ScreenSize.screenHeight * 0.9,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(RadiusSize.containerRadius),
                topRight: Radius.circular(RadiusSize.containerRadius),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: Paddings.content,
                  left: Paddings.normal,
                  right: Paddings.normal),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Ecare Services',
                    style: TextStyle(
                      fontSize: FontSizes.headline2,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  CategorySection(),
                  SizedBox(
                    height: Paddings.minimum,
                  ),
                  Text(
                    'My Appointments',
                    style: TextStyle(
                      fontSize: FontSizes.headline2,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: Paddings.normal,
                  ),
                  AppoitmentSection(),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
