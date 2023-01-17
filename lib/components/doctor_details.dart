import 'package:doctor/imports.dart';
import 'package:doctor/model/review_model.dart';
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
                    width: ScreenSize.screenWidth * 0.75,
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
                                  fontSize: FontSizes.big,
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
                            Column(
                              children: [
                                Container(
                                  padding:
                                      const EdgeInsets.all(Margins.minimum),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          RadiusSize.containerRadius),
                                      color: ColorName.gradientSecond),
                                  child: IconButton(
                                    onPressed: (() => Navigator.pop(context)),
                                    icon: const Icon(
                                      MyIcons.heartbold,
                                      size: IconSizes.smallIcon,
                                      color: ColorName.white,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: Paddings.minimum,
                                ),
                                const Text(
                                  "150+",
                                  style: TextStyle(
                                    fontSize: FontSizes.big,
                                    color: ColorName.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Text(
                                  "patients",
                                  style: TextStyle(
                                    fontSize: FontSizes.small,
                                    color: ColorName.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  padding:
                                      const EdgeInsets.all(Margins.minimum),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          RadiusSize.containerRadius),
                                      color: ColorName.gradientSecond),
                                  child: IconButton(
                                    onPressed: (() => Navigator.pop(context)),
                                    icon: const Icon(
                                      MyIcons.crown,
                                      size: IconSizes.smallIcon,
                                      color: ColorName.white,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: Paddings.minimum,
                                ),
                                const Text(
                                  "10 Years",
                                  style: TextStyle(
                                    fontSize: FontSizes.big,
                                    color: ColorName.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Text(
                                  "experience",
                                  style: TextStyle(
                                    fontSize: FontSizes.small,
                                    color: ColorName.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  padding:
                                      const EdgeInsets.all(Margins.minimum),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          RadiusSize.containerRadius),
                                      color: ColorName.gradientSecond),
                                  child: IconButton(
                                    onPressed: (() => Navigator.pop(context)),
                                    icon: const Icon(
                                      MyIcons.star,
                                      size: 35,
                                      color: ColorName.white,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: Paddings.minimum,
                                ),
                                const Text(
                                  "4.9+",
                                  style: TextStyle(
                                    fontSize: FontSizes.big,
                                    color: ColorName.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Text(
                                  "ratings",
                                  style: TextStyle(
                                    fontSize: FontSizes.small,
                                    color: ColorName.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
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
        padding: EdgeInsets.only(top: ScreenSize.screenHeight * 0.42),
        child: Container(
          padding: const EdgeInsets.only(
            top: Paddings.content,
            bottom: Paddings.content,
            left: Paddings.normal,
            right: Paddings.normal,
          ),
          width: ScreenSize.screenWidth,
          decoration: const BoxDecoration(
            color: ColorName.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(RadiusSize.containerRadius),
              topRight: Radius.circular(RadiusSize.containerRadius),
            ),
          ),
          child: Column(
            children: [
              _buildDetails(context),
              _buildReview(context),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget _buildDetails(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const [
      Text(
        "About Doctor",
        overflow: TextOverflow.clip,
        maxLines: 1,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: FontSizes.headline2,
        ),
      ),
      SizedBox(
        height: Paddings.minimum,
      ),
      ExpandableText(
        "Dr. Kawsar Ahmed is the top most Cardiologist specialist in Cumilla Medical Collage Hospital At Cumilla. He achived several awards foe his wonderful confriution in his own field. He is avaliable for privet consulatation. He achived several awards foe his wonderful confriution in his own field. He is avaliable for privet consulatation.",
        style: TextStyle(
          fontSize: FontSizes.normal,
          fontWeight: FontWeight.normal,
          color: ColorName.black,
        ),
        expandText: 'more',
        linkStyle: TextStyle(fontWeight: FontWeight.w500),
        collapseText: 'less',
        maxLines: 3,
        linkColor: ColorName.gradientSecond,
      ),
      SizedBox(
        height: Paddings.normal,
      ),
    ],
  );
}

Widget _buildReview(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
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
              Text(
                '4.9+',
                style: TextStyle(
                  fontSize: FontSizes.normal,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                width: Margins.small,
              ),
              Text(
                '(150)',
                style: TextStyle(
                  fontSize: FontSizes.normal,
                  color: ColorName.gray,
                ),
              ),
            ],
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
      Container(
        height: ScreenSize.screenHeight * ContainerSizes.reviewTileHeight,
        width: ScreenSize.screenWidth,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: ReviewModel.reviews.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ReviewTile(
                name: ReviewModel.reviews[index].name,
                image: ReviewModel.reviews[index].image,
                date: ReviewModel.reviews[index].date,
                review: ReviewModel.reviews[index].review,
                rating: ReviewModel.reviews[index].rating,
                totalRating: ReviewModel.reviews[index].totalRating);
          },
        ),
      ),
    ],
  );
}
