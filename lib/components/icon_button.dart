import 'package:doctor/imports.dart';

class MyIconButton extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double height;
  final VoidCallback? onTap;
  final Widget child;
  final Widget child1;

  const MyIconButton({
    Key? key,
    required this.onTap,
    required this.child,
    required this.child1,
    this.borderRadius,
    this.width,
    this.height = 44.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final borderRadius = this.borderRadius ?? BorderRadius.circular(0);
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(RadiusSize.roundButtonRadius),
      elevation: 0.4,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Ink(
        padding: const EdgeInsets.only(
            left: Margins.minimum, right: Margins.minimum),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              ColorName.gradientFirst,
              ColorName.gradientSecond,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: InkWell(
          onTap: onTap,
          child: SizedBox(
            width: width,
            height: height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                child,
                child1,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
