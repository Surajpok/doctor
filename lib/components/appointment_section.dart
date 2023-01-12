import 'package:doctor/imports.dart';

class AppoitmentSection extends StatelessWidget {
  final String name;
  final String image;
  final String role;
  final String date;
  final String fromTime;
  final String toTime;
  final bool isCancelled;
  const AppoitmentSection({
    Key? key,
    required this.name,
    required this.image,
    required this.date,
    required this.fromTime,
    required this.toTime,
    required this.role,
    required this.isCancelled,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: Paddings.normal),
          decoration: const BoxDecoration(
            color: Colors.white,
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
          child: Padding(
            padding: const EdgeInsets.all(Paddings.normal),
            child: Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildProfile(context),
                  isCancelled
                      ? _buildCancel(context)
                      : Column(
                          children: [
                            _buildDate(context),
                            _buildButtons(context),
                          ],
                        )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildProfile(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Paddings.normal),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height:
                ScreenSize.screenHeight * ContainerSizes.imageBoxHeightWidth,
            width: ScreenSize.screenHeight * ContainerSizes.imageBoxHeightWidth,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(RadiusSize.containerRadiusSmall),
                bottomLeft: Radius.circular(RadiusSize.containerRadiusSmall),
                bottomRight: Radius.circular(RadiusSize.containerRadiusSmall),
              ),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover, //change image fill type
              ),
            ),
          ),
          const SizedBox(
            width: Margins.normal,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  overflow: TextOverflow.clip,
                  maxLines: 2,
                  style: const TextStyle(
                      fontSize: FontSizes.headline2,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  role,
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: FontSizes.small,
                    color: ColorName.black,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            MyIcons.dots,
            size: 30,
          ),
        ],
      ),
    );
  }

  Widget _buildDate(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Paddings.normal),
      child: Container(
        decoration: const BoxDecoration(
          color: ColorName.primaryAccent,
          borderRadius: BorderRadius.all(
            Radius.circular(RadiusSize.containerRadiusTiny),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(Paddings.normal),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Icon(
                    MyIcons.calander,
                    color: ColorName.primaryColor,
                  ),
                  const SizedBox(
                    width: Margins.minimum,
                  ),
                  Text(
                    date,
                    style: const TextStyle(
                      fontSize: FontSizes.normal,
                      color: ColorName.black,
                      fontWeight: FontWeight.w500,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    MyIcons.clock,
                    color: ColorName.primaryColor,
                  ),
                  const SizedBox(
                    width: Margins.minimum,
                  ),
                  Text(
                    '$fromTime : $toTime',
                    style: const TextStyle(
                      fontSize: FontSizes.normal,
                      color: ColorName.black,
                      fontWeight: FontWeight.w500,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyTextButton(
          width: ScreenSize.screenWidth * 0.35,
          borderRadius: BorderRadius.circular(RadiusSize.roundButtonRadius),
          onPressed: () {},
          child: const Text('Cancel'),
        ),
        MyElevatedButton(
          width: ScreenSize.screenWidth * 0.35,
          borderRadius: BorderRadius.circular(RadiusSize.roundButtonRadius),
          onPressed: () {},
          child: const Text(
            'Reschedule',
            style: TextStyle(
              fontSize: FontSizes.normal,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCancel(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: const [
            Icon(
              MyIcons.close,
              color: Colors.red,
            ),
            SizedBox(
              width: Margins.minimum,
            ),
            Text(
              "Canceled By You",
              style: TextStyle(
                fontSize: FontSizes.small,
                color: Colors.red,
                fontWeight: FontWeight.w500,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        MyElevatedButton(
          width: ScreenSize.screenWidth * 0.35,
          borderRadius: BorderRadius.circular(RadiusSize.roundButtonRadius),
          onPressed: () {},
          child: const Text(
            'Reschedule',
            style: TextStyle(
              fontSize: FontSizes.normal,
            ),
          ),
        ),
      ],
    );
  }
}
