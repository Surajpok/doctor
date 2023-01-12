import 'package:doctor/imports.dart';
import 'package:doctor/model/doctor_model.dart';

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
        child: GridView.builder(
            padding: const EdgeInsets.all(0),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 2 / 3,
                crossAxisSpacing: Paddings.minimum,
                mainAxisSpacing: Paddings.minimum),
            itemCount: DoctorModel.doctors.length,
            itemBuilder: (BuildContext ctx, index) {
              return DoctorTile(
                name: DoctorModel.doctors[index].name,
                image: DoctorModel.doctors[index].image,
                role: DoctorModel.doctors[index].role,
                totalRating: DoctorModel.doctors[index].totalRating,
                onTap: () {},
              );
            }),
      ),
    );
  }
}
