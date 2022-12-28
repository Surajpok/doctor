import 'package:doctor/imports.dart';

class MyTextButton extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double? height;
  final VoidCallback? onPressed;
  final Widget child;

  const MyTextButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.borderRadius,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(0);
    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        border: Border.all(
          width: 1,
          color: ColorName.secondaryAccent,
        ),
      ),
      child: SizedBox(
        height: height,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            foregroundColor: ColorName.primaryColor,
            shape: RoundedRectangleBorder(borderRadius: borderRadius),
            textStyle: const TextStyle(
              fontSize: FontSizes.normal,
              fontWeight: FontWeight.w400,
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
