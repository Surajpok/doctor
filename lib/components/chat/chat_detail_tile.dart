import 'package:doctor/imports.dart';

class ChatDetailsTile extends StatelessWidget {
  const ChatDetailsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: Paddings.minimum, horizontal: Paddings.minimum),
          child: Container(
            width: ContainerSizes.appBarImgHeightWidth,
            height: ContainerSizes.appBarImgHeightWidth,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(RadiusSize.containerRadius),
              image: DecorationImage(
                image: AssetImage(Assets.images.doctor.path),
                fit: BoxFit.cover, //change image fill type
              ),
            ),
          ),
        ),
        Container(
          width: ScreenSize.screenWidth * ContainerSizes.msgWidth,
          padding: const EdgeInsets.symmetric(
              vertical: Paddings.normal, horizontal: Paddings.normal),
          margin: const EdgeInsets.symmetric(vertical: Margins.minimum),
          decoration: const BoxDecoration(
            color: ColorName.secondaryAccent,
            // color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(RadiusSize.containerRadiusSmall),
              topRight: Radius.circular(RadiusSize.containerRadiusSmall),
              bottomRight: Radius.circular(RadiusSize.containerRadiusSmall),
            ),
          ),
          child: const Flexible(
            child: Text(
              "Hello Brother! How you doing? Long time no see!Hello Brother! How you doing? Long time no see!",
              style: TextStyle(
                color: ColorName.black,
                fontSize: FontSizes.normal,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
