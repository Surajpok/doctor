import 'package:doctor/imports.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NotificationTile extends StatefulWidget {
  const NotificationTile({super.key});

  @override
  State<NotificationTile> createState() => _NotificationTileState();
}

class _NotificationTileState extends State<NotificationTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSize.screenHeight * 0.07,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Flexible(
            flex: 1,
            child: Icon(MyIcons.calander),
          ),
          Flexible(
            flex: 9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Your have appointment with mahbuba islam at 9:00 pm today",
                  style: TextStyle(fontSize: FontSizes.normal),
                ),
                Text(
                  "Just Now",
                  style: TextStyle(
                      fontSize: FontSizes.normal, color: ColorName.gray),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
