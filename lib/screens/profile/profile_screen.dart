import 'package:doctor/imports.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MainAppBar.defaultAppBar(
          context,
          title: 'My Profile',
          leading: false,
          height: 55,
          color: ColorName.secondaryAccent,
          actions: [
            const Padding(
              padding: EdgeInsets.symmetric(
                  vertical: Paddings.minimum, horizontal: Paddings.minimum),
              child: Icon(
                MyIcons.bell,
                size: IconSizes.appBarItem,
                color: ColorName.black,
              ),
            ),
          ],
        ),
        body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: Paddings.normal,
                    left: Paddings.normal,
                    right: Paddings.normal,
                    bottom: Paddings.normal,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: ContainerSizes.profileImgHeightWidth,
                        height: ContainerSizes.profileImgHeightWidth,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius:
                              BorderRadius.circular(RadiusSize.containerRadius),
                          image: DecorationImage(
                            image: AssetImage(Assets.images.doctor.path),
                            fit: BoxFit.cover, //change image fill type
                          ),
                        ),
                      ),
                      const Text(
                        "Marvis Ighedosa",
                        style: TextStyle(
                          fontSize: FontSizes.headline1,
                          color: ColorName.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: Paddings.minimum,
                      ),
                      const Text(
                        "dosamarvis@gmail.com",
                        style: TextStyle(
                          color: ColorName.black,
                          fontSize: FontSizes.headline2,
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: const Icon(MyIcons.profile),
                  title: const Text(
                    ' Edit Profile',
                    style: TextStyle(
                      fontSize: FontSizes.headline2,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(MyIcons.password),
                  title: const Text(
                    ' Change Password ',
                    style: TextStyle(
                      fontSize: FontSizes.headline2,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(MyIcons.location),
                  title: const Text(
                    ' Change Location',
                    style: TextStyle(
                      fontSize: FontSizes.headline2,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(MyIcons.help),
                  title: const Text(
                    ' Help',
                    style: TextStyle(
                      fontSize: FontSizes.headline2,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(MyIcons.privacy),
                  title: const Text(
                    ' Privacy Policy ',
                    style: TextStyle(
                      fontSize: FontSizes.headline2,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(height: ScreenSize.screenHeight * 0.10),
                ListTile(
                  leading: MyElevatedButton(
                    height: ScreenSize.screenHeight * 0.07,
                    width: ScreenSize.screenWidth * 0.3,
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    borderRadius:
                        BorderRadius.circular(RadiusSize.buttonRadius),
                    child: const Text('Log Out'),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
