import 'package:doctor/imports.dart';

class DoctorTile extends StatelessWidget {
  final String name;
  final String image;
  final String role;
  final String totalRating;
  final VoidCallback? onTap;
  const DoctorTile({
    Key? key,
    required this.name,
    required this.image,
    required this.role,
    required this.totalRating,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: ScreenSize.screenWidth * 0.43,
      margin: const EdgeInsets.only(top: Paddings.minimum),
      padding: const EdgeInsets.only(
        top: Paddings.minimum,
        right: Paddings.minimum,
        bottom: Paddings.minimum,
        left: Paddings.minimum,
      ),
      decoration: const BoxDecoration(
        color: ColorName.white,
        borderRadius: BorderRadius.all(
          Radius.circular(RadiusSize.containerRadiusSmall),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorName.shadowColor,
            spreadRadius: 10,
            blurRadius: 20,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
              height:
                  ScreenSize.screenHeight * ContainerSizes.doctorImgHeightWidth,
              decoration: BoxDecoration(
                color: ColorName.primaryAccent,
                borderRadius: const BorderRadius.all(
                  Radius.circular(RadiusSize.containerRadiusSmall),
                ),
                image: DecorationImage(
                  image: AssetImage(Assets.images.doctor.path),
                  fit: BoxFit.contain, //change image fill type
                ),
              ),
            ),
          ),
          const SizedBox(
            height: Paddings.minimum,
          ),
          Text(
            name,
            maxLines: 1,
            overflow: TextOverflow.clip,
            style: const TextStyle(
              fontSize: FontSizes.headline2,
              fontWeight: FontWeight.w500,
            ),
          ),
          // const SizedBox(
          //   height: Paddings.minimum,
          // ),
          Text(
            role,
            style: const TextStyle(
                fontSize: FontSizes.small,
                fontWeight: FontWeight.w500,
                color: ColorName.gray),
          ),
          const SizedBox(
            height: Paddings.minimum,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    MyIcons.star,
                    color: Colors.amber,
                  ),
                  const SizedBox(
                    height: Paddings.minimum,
                  ),
                  Text(totalRating),
                ],
              )),
              const Icon(MyIcons.heart),
            ],
          )
        ],
      ),
    );
  }
}
