import 'package:doctor/imports.dart';

class ReviewTile extends StatelessWidget {
  final String name;
  final String image;
  final String date;
  final String review;
  final String rating;
  final String totalRating;
  const ReviewTile({
    Key? key,
    required this.name,
    required this.image,
    required this.date,
    required this.review,
    required this.rating,
    required this.totalRating,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: ScreenSize.screenWidth * 0.9,
          margin: const EdgeInsets.symmetric(
            horizontal: Margins.minimum,
          ),
          padding: const EdgeInsets.all(Paddings.normal),
          decoration: const BoxDecoration(
            color: ColorName.white,
            borderRadius: BorderRadius.all(
              Radius.circular(RadiusSize.containerRadiusSmall),
            ),
            boxShadow: [
              BoxShadow(
                color: ColorName.shadowColor,
                spreadRadius: 10,
                blurRadius: 10,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: IconSizes.smallIcon,
                          foregroundImage: AssetImage(
                            Assets.images.doctor.path,
                          ),
                          backgroundColor: ColorName.terteryAccent,
                        ),
                        const SizedBox(
                          width: Paddings.minimum,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              overflow: TextOverflow.clip,
                              maxLines: 1,
                              style: const TextStyle(
                                fontSize: FontSizes.normal,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              height: Margins.minimum,
                            ),
                            Text(
                              date,
                              overflow: TextOverflow.clip,
                              maxLines: 1,
                              style: const TextStyle(
                                fontSize: FontSizes.small,
                                fontWeight: FontWeight.normal,
                                color: ColorName.gray,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(Margins.minimum),
                    decoration: const BoxDecoration(
                      color: ColorName.quartenaryAccent,
                      borderRadius: BorderRadius.all(
                        Radius.circular(RadiusSize.containerRadiusSmall),
                      ),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          MyIcons.star,
                          color: Colors.amber,
                        ),
                        const SizedBox(
                          width: Margins.small,
                        ),
                        Text(
                          rating,
                          overflow: TextOverflow.clip,
                          maxLines: 2,
                          style: const TextStyle(
                              fontSize: FontSizes.small,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Paddings.minimum,
              ),
              Text(
                review,
                overflow: TextOverflow.clip,
                maxLines: 2,
                style: const TextStyle(
                  fontSize: FontSizes.normal,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
