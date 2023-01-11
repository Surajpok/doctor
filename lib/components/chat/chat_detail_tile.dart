import 'package:doctor/imports.dart';

class ChatDetailsTile extends StatelessWidget {
  final String name;
  final String image;
  final String date;
  final String time;
  final String message;
  final String messageType;

  const ChatDetailsTile({
    Key? key,
    required this.name,
    required this.image,
    required this.date,
    required this.time,
    required this.message,
    required this.messageType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: messageType == 'sender'
          ? MainAxisAlignment.start
          : MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        messageType == 'sender'
            ? Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: Paddings.minimum, horizontal: Paddings.minimum),
                child: Container(
                  width: ContainerSizes.appBarImgHeightWidth,
                  height: ContainerSizes.appBarImgHeightWidth,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius:
                        BorderRadius.circular(RadiusSize.containerRadius),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover, //change image fill type
                    ),
                  ),
                ),
              )
            : Container(),
        Container(
          width: ScreenSize.screenWidth * ContainerSizes.msgWidth,
          padding: const EdgeInsets.symmetric(
              vertical: Paddings.normal, horizontal: Paddings.normal),
          margin: const EdgeInsets.symmetric(vertical: Margins.minimum),
          decoration: BoxDecoration(
            color: messageType == 'receiver'
                ? ColorName.primaryColor
                : ColorName.secondaryAccent,
            // color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(RadiusSize.containerRadiusSmall),
              topRight: Radius.circular(RadiusSize.containerRadiusSmall),
              bottomRight: Radius.circular(messageType == 'sender'
                  ? RadiusSize.containerRadiusSmall
                  : 0),
              bottomLeft: Radius.circular(messageType == 'receiver'
                  ? RadiusSize.containerRadiusSmall
                  : 0),
            ),
          ),
          child: Flexible(
            child: Text(
              message,
              style: TextStyle(
                color: messageType == 'receiver'
                    ? ColorName.white
                    : ColorName.black,
                fontSize: FontSizes.normal,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
