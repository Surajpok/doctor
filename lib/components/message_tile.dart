import 'package:doctor/imports.dart';

class Messagetile extends StatefulWidget {
  const Messagetile({super.key});

  @override
  State<Messagetile> createState() => _MessagetileState();
}

class _MessagetileState extends State<Messagetile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: Margins.normal),
      height: ScreenSize.screenHeight * ContainerSizes.msgTileHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(RadiusSize.containerRadiusTiny),
        // color: ColorName.white,
      ),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/chat-details');
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: ScreenSize.screenHeight *
                  ContainerSizes.msgTileImgHeightWidth,
              height: ScreenSize.screenHeight *
                  ContainerSizes.msgTileImgHeightWidth,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(RadiusSize.containerRadius),
                image: DecorationImage(
                  image: AssetImage(Assets.images.doctor.path),
                  fit: BoxFit.cover, //change image fill type
                ),
              ),
            ),
            // const SizedBox(
            //   width: Margins.normal,
            // ),
            Container(
              width: ScreenSize.screenWidth * 0.55,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Dr. Kawsar Ahmad",
                    overflow: TextOverflow.clip,
                    maxLines: 1,
                    style: TextStyle(
                        fontSize: FontSizes.headline2,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Yea sure, I just needed some time?",
                    overflow: TextOverflow.clip,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: FontSizes.normal,
                      color: ColorName.black,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "2:55 AM",
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: FontSizes.normal,
                    color: ColorName.gray,
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
