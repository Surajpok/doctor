import 'package:doctor/imports.dart';

abstract class MainAppBar {
  static PreferredSizeWidget defaultAppBar(
    BuildContext context, {
    String title = '',
    List<Widget>? actions,
    double? height,
    Color? color,
    required bool leading,
  }) {
    return AppBar(
      backgroundColor: color,
      toolbarHeight: height,
      leading: leading
          ? IconButton(
              onPressed: (() => Navigator.pop(context)),
              icon: const Icon(
                MyIcons.back,
                size: IconSizes.smallIcon,
              ),
            )
          : Container(),
      title: Text(
        title,
        overflow: TextOverflow.clip,
        maxLines: 1,
        style: const TextStyle(
            color: ColorName.black,
            fontSize: FontSizes.headline2,
            fontWeight: FontWeight.w600),
      ),
      centerTitle: leading
          ? true
          : false || actions == null
              ? true
              : false,
      leadingWidth: leading ? null : 0,
      actions: actions,
    );
  }
}
