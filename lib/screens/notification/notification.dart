import 'package:doctor/imports.dart';

class NotifyScreen extends StatelessWidget {
  const NotifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar.defaultAppBar(
        context,
        title: 'Notifications',
        leading: true,
        height: 55,
        color: ColorName.secondaryAccent,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(
              vertical: Paddings.normal, horizontal: Paddings.normal),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Today',
                style: TextStyle(
                  fontSize: FontSizes.headline2,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: Paddings.normal,
              ),
              NotificationTile(),
            ],
          ),
        ),
      ),
    );
  }
}
