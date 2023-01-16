import 'package:doctor/imports.dart';
import 'package:expandable_text/expandable_text.dart';

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({super.key});

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
  return Stack(
    children: <Widget>[
      Container(
        height: ScreenSize.screenHeight * ContainerSizes.profileHeight,
        width: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.bgprofile.path),
            fit: BoxFit.cover, //change image fill type
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: (() => Navigator.pop(context)),
                    icon: const Icon(
                      MyIcons.back,
                      size: IconSizes.smallIcon,
                      color: ColorName.white,
                    ),
                  ),
                  SizedBox(
                    width: ScreenSize.screenWidth * 0.70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: IconSizes.avatar,
                          foregroundImage:
                              AssetImage(Assets.images.doctor.path),
                          backgroundColor: ColorName.primaryAccent,
                        ),
                        const SizedBox(
                          height: Paddings.normal,
                        ),
                        Column(
                          children: const [
                            Text(
                              "Dr. Pramod Kharel",
                              style: TextStyle(
                                  color: ColorName.white,
                                  fontSize: FontSizes.headline2,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "Therapist",
                              style: TextStyle(
                                  color: ColorName.secondaryAccent,
                                  fontSize: FontSizes.headline2,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: Paddings.normal,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(Margins.minimum),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      RadiusSize.containerRadius),
                                  color: ColorName.gradientSecond),
                              child: IconButton(
                                onPressed: (() => Navigator.pop(context)),
                                icon: const Icon(
                                  MyIcons.chatbold,
                                  size: IconSizes.smallIcon,
                                  color: ColorName.white,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(Margins.minimum),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      RadiusSize.containerRadius),
                                  color: ColorName.gradientSecond),
                              child: IconButton(
                                onPressed: (() => Navigator.pop(context)),
                                icon: const Icon(
                                  MyIcons.call,
                                  size: IconSizes.smallIcon,
                                  color: ColorName.white,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: (() => Navigator.pop(context)),
                    icon: const Icon(
                      MyIcons.dots,
                      size: IconSizes.smallIcon,
                      color: ColorName.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: ScreenSize.screenHeight * 0.37),
        child: Container(
          padding: const EdgeInsets.only(
            top: Paddings.content,
            bottom: Paddings.content,
            left: Paddings.normal,
            right: Paddings.normal,
          ),
          width: ScreenSize.screenWidth,
          decoration: const BoxDecoration(
            color: ColorName.backgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(RadiusSize.containerRadiusSmall),
              topRight: Radius.circular(RadiusSize.containerRadiusSmall),
            ),
          ),
          child: _buildDetails(context),
        ),
      ),
    ],
  );
}

Widget _buildDetails(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        "About Doctor",
        overflow: TextOverflow.clip,
        maxLines: 1,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: FontSizes.headline2,
        ),
      ),
      const SizedBox(
        height: Paddings.minimum,
      ),
      const ExpandableText(
        "Dr. Kawsar Ahmed is the top most Cardiologist specialist in Cumilla Medical Collage Hospital At Cumilla. He achived several awards foe his wonderful confriution in his own field. He is avaliable for privet consulatation. He achived several awards foe his wonderful confriution in his own field. He is avaliable for privet consulatation.",
        style: TextStyle(
          fontSize: FontSizes.normal,
          fontWeight: FontWeight.normal,
          color: ColorName.black,
        ),
        expandText: 'more',
        collapseText: 'less',
        maxLines: 3,
        linkColor: ColorName.textButtonColor,
      ),
      const SizedBox(
        height: Paddings.normal,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Reviews',
                  style: TextStyle(
                    fontSize: FontSizes.headline2,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: Paddings.minimum,
                ),
                Icon(
                  MyIcons.star,
                  color: Colors.amber,
                ),
                SizedBox(
                  height: Paddings.minimum,
                ),
                Text('4.9 (150)'),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/appointment');
            },
            child: const Text(
              'See All',
              style: TextStyle(
                fontSize: FontSizes.headline2,
                fontWeight: FontWeight.w600,
                color: ColorName.primaryColor,
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
