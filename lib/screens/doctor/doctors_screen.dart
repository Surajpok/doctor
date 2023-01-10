import 'package:doctor/imports.dart';

class DoctorScreen extends StatelessWidget {
  const DoctorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar.defaultAppBar(
        context,
        title: 'Doctors',
        leading: true,
        height: 70,
        color: ColorName.secondaryAccent,
        actions: [
          const Padding(
            padding: EdgeInsets.symmetric(
                vertical: Paddings.minimum, horizontal: Paddings.minimum),
            child: Icon(
              MyIcons.search,
              size: IconSizes.appBarItem,
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: Paddings.minimum),
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(5, (index) {
            return Expanded(
              child: Doctortile(),
            );
          }),
        ),
      ),
    );
  }
}
