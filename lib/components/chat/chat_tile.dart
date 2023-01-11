import 'package:doctor/imports.dart';

class ChatTile extends StatelessWidget {
  final String name;
  final String image;
  final String date;
  final String time;
  final String message;
  final VoidCallback onTap;

  const ChatTile({
    Key? key,
    required this.onTap,
    required this.name,
    required this.image,
    required this.date,
    required this.time,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: Margins.minimum),
      height: ScreenSize.screenHeight * ContainerSizes.msgTileHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(RadiusSize.containerRadiusTiny),
        // color: ColorName.primaryColor,
      ),
      child: InkWell(
        onTap: onTap,
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
                children: [
                  Text(
                    name,
                    overflow: TextOverflow.clip,
                    maxLines: 1,
                    style: TextStyle(
                        fontSize: FontSizes.headline2,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    message,
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
              children: [
                Text(
                  time,
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
