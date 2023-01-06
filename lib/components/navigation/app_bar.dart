import 'package:doctor/imports.dart';

abstract class MainAppBar {
  static PreferredSizeWidget defaultAppBar(
    BuildContext context, {
    String title = '',
    List<Widget>? actions,
    double? height,
    Color? color,
  }) {
    return AppBar(
      backgroundColor: color,
      toolbarHeight: height,
      leading: IconButton(
        onPressed: (() => Navigator.pop(context)),
        icon: const Icon(
          MyIcons.back,
          size: IconSizes.smallIcon,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: FontSizes.headline2,
          color: ColorName.black,
        ),
      ),
      centerTitle: true,
      actions: actions,
    );
  }
}
