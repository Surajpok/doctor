import 'package:doctor/imports.dart';

class Doctortile extends StatefulWidget {
  const Doctortile({super.key});

  @override
  State<Doctortile> createState() => _DoctortileState();
}

class _DoctortileState extends State<Doctortile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSize.screenWidth * 0.43,
      margin: const EdgeInsets.only(top: Paddings.normal),
      padding: const EdgeInsets.only(
        top: Paddings.minimum,
        right: Paddings.minimum,
        bottom: Paddings.normal,
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
          Container(
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
          const SizedBox(
            height: Paddings.minimum,
          ),
          const Text(
            'Dr. Jenny Wilson',
            style: TextStyle(
              fontSize: FontSizes.headline2,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: Paddings.minimum,
          ),
          Text(
            'Specialist Dentist',
            style: TextStyle(
                fontSize: FontSizes.small,
                fontWeight: FontWeight.w500,
                color: ColorName.gray),
          ),
        ],
      ),
    );
  }
}
