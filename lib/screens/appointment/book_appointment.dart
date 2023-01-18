import 'package:doctor/imports.dart';

class BookAppointment extends StatefulWidget {
  const BookAppointment({super.key});

  @override
  State<BookAppointment> createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar.defaultAppBar(
        context,
        title: 'Booking',
        leading: true,
        height: 70,
        color: ColorName.secondaryAccent,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: Paddings.minimum, horizontal: Paddings.minimum),
            child: InkWell(
              onTap: () {},
              child: const Icon(
                MyIcons.dots,
                size: IconSizes.appBarItem,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: Paddings.minimum),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
