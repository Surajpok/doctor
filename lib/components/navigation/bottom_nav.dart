import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:doctor/imports.dart';
import 'package:doctor/screens/appointment/appointment_screen.dart';
import 'package:doctor/screens/chat/chat_screen.dart';
import 'package:doctor/screens/home/home_screen.dart';
import 'package:doctor/screens/notification/notification.dart';
import 'package:doctor/screens/profile/profile_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _tabIndex = 2;
  int get tabIndex => _tabIndex;
  set tabIndex(int v) {
    _tabIndex = v;
    setState(() {});
  }

  PageController? pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: _tabIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CircleNavBar(
        activeIcons: const [
          Icon(
            MyIcons.chat,
            color: ColorName.white,
            size: IconSizes.appBarItem,
          ),
          Icon(
            MyIcons.calander,
            color: ColorName.white,
            size: IconSizes.appBarItem,
          ),
          Icon(
            MyIcons.home,
            color: ColorName.white,
            size: IconSizes.appBarItem,
          ),
          Icon(
            MyIcons.bell,
            color: ColorName.white,
            size: IconSizes.appBarItem,
          ),
          Icon(
            MyIcons.profile,
            color: ColorName.white,
            size: IconSizes.appBarItem,
          ),
        ],
        inactiveIcons: const [
          Icon(MyIcons.chat),
          Icon(MyIcons.calander),
          Icon(MyIcons.home),
          Icon(MyIcons.bell),
          Icon(MyIcons.profile),
        ],
        color: ColorName.white,
        height: UiSize.bottomMenuHeight,
        circleWidth: UiSize.bottomCircleWidth,
        circleGradient: const LinearGradient(
            colors: [ColorName.gradientFirst, ColorName.gradientSecond]),
        activeIndex: tabIndex,
        onTap: (index) {
          tabIndex = index;
          pageController?.jumpToPage(tabIndex);
        },
        // padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
        cornerRadius: const BorderRadius.only(
          topLeft: Radius.circular(RadiusSize.bottomMenuRadius),
          topRight: Radius.circular(RadiusSize.bottomMenuRadius),
          bottomRight: Radius.circular(0),
          bottomLeft: Radius.circular(0),
        ),
        shadowColor: ColorName.secondaryAccent,
        elevation: 2,
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (v) {
          tabIndex = v;
        },
        children: const [
          ChatScreen(),
          AppointmentScreen(),
          HomeScreen(),
          NotifyScreen(),
          ProfileScreen(),
        ],
      ),
    );
  }
}
