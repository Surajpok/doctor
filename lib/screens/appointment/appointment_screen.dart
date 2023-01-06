import 'package:doctor/imports.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: const [
              AppoitmentSection(),
            ],
          ),
        ),
      ),
    );
  }
}
