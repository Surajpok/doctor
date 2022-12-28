import 'package:doctor/imports.dart';

class AppoitmentSection extends StatelessWidget {
  const AppoitmentSection({super.key});
  @override
  Widget build(BuildContext context) {
    var _name = 'Rabindra Nath Tagore';
    var _profession = 'Cardiologist';
    return SizedBox(
      height: ScreenSize.screenHeight * 0.3,
      child: Stack(
        children: <Widget>[
          Container(
            // width: ScreenSize.screenWidth,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                  Radius.circular(RadiusSize.containerRadiusSmall)),
              boxShadow: [
                BoxShadow(
                  color: ColorName.shadowColor,
                  spreadRadius: 10,
                  blurRadius: 20,
                ),
              ],
            ),
            child: InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(Paddings.normal),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: ScreenSize.screenHeight *
                              ContainerSizes.imageBoxHeightWidth,
                          width: ScreenSize.screenHeight *
                              ContainerSizes.imageBoxHeightWidth,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(
                                  RadiusSize.containerRadiusSmall),
                              bottomLeft: Radius.circular(
                                  RadiusSize.containerRadiusSmall),
                              bottomRight: Radius.circular(
                                  RadiusSize.containerRadiusSmall),
                            ),
                            image: DecorationImage(
                              image: AssetImage(Assets.images.doctor.path),
                              fit: BoxFit.cover, //change image fill type
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: Margins.normal,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              // "Dr. Rabindra Nath Tagore",
                              _name.length > 10
                                  ? '${_name.substring(0, 20)} ...'
                                  : _name,
                              style: const TextStyle(
                                  fontSize: FontSizes.headline2,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              // "Cardiologist- Kathmandu Medical College",
                              _profession.length > 20
                                  ? '${_profession.substring(0, 12)} ...'
                                  : _profession,
                              style: const TextStyle(
                                fontSize: FontSizes.normal,
                                color: ColorName.black,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
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
                              children: const [
                                Icon(
                                  MyIcons.calander,
                                  color: ColorName.primaryColor,
                                ),
                                SizedBox(
                                  width: Margins.minimum,
                                ),
                                Text(
                                  "Monday, Sep 29",
                                  style: TextStyle(
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
                              children: const [
                                Icon(
                                  MyIcons.clock,
                                  color: ColorName.primaryColor,
                                ),
                                SizedBox(
                                  width: Margins.minimum,
                                ),
                                Text(
                                  "11 : 00, 12 : 00",
                                  style: TextStyle(
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyTextButton(
                          width: ScreenSize.screenWidth * 0.35,
                          borderRadius: BorderRadius.circular(
                              RadiusSize.roundButtonRadius),
                          onPressed: () {},
                          child: const Text('Cancel'),
                        ),
                        MyElevatedButton(
                          width: ScreenSize.screenWidth * 0.35,
                          borderRadius: BorderRadius.circular(
                              RadiusSize.roundButtonRadius),
                          onPressed: () {},
                          child: const Text(
                            'Reschedule',
                            style: TextStyle(
                              fontSize: FontSizes.normal,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
