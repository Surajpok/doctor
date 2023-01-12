import 'package:doctor/components/category_section.dart';
import 'package:doctor/imports.dart';
import 'package:doctor/model/appointment_model.dart';
import 'package:doctor/model/doctor_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                ((context, index) => _buildBody(context)),
                childCount: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildBody(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(bottom: Margins.bottom),
    child: Stack(
      children: <Widget>[
        const HeroSection(),
        Padding(
          padding: EdgeInsets.only(top: ScreenSize.screenHeight * 0.45),
          child: Container(
            width: ScreenSize.screenWidth,
            decoration: const BoxDecoration(
              color: ColorName.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(RadiusSize.containerRadius),
                topRight: Radius.circular(RadiusSize.containerRadius),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: Paddings.content,
                left: Paddings.normal,
                right: Paddings.normal,
                bottom: Paddings.content,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Ecare Services',
                    style: TextStyle(
                      fontSize: FontSizes.headline2,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const CategorySection(),
                  const SizedBox(
                    height: Paddings.minimum,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'My Appointments',
                        style: TextStyle(
                          fontSize: FontSizes.headline2,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/appointment');
                        },
                        child: const Text(
                          'See All',
                          style: TextStyle(
                            fontSize: FontSizes.headline2,
                            fontWeight: FontWeight.w600,
                            color: ColorName.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 1,
                    padding: EdgeInsets.all(0),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return AppoitmentSection(
                        date: AppointmentModel.appointments[index].date,
                        image: AppointmentModel.appointments[index].image,
                        name: AppointmentModel.appointments[index].name,
                        fromTime: AppointmentModel.appointments[index].fromTime,
                        toTime: AppointmentModel.appointments[index].toTime,
                        isCancelled:
                            AppointmentModel.appointments[index].isCancelled,
                        role: AppointmentModel.appointments[index].role,
                      );
                    },
                  ),
                  const SizedBox(
                    height: Paddings.normal,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Available Doctors',
                        style: TextStyle(
                          fontSize: FontSizes.headline2,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/doctors');
                        },
                        child: const Text(
                          'See All',
                          style: TextStyle(
                            fontSize: FontSizes.headline2,
                            fontWeight: FontWeight.w600,
                            color: ColorName.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  GridView.builder(
                      padding: const EdgeInsets.all(0),
                      shrinkWrap: true,
                      physics:
                          const NeverScrollableScrollPhysics(), //make grid unscrollable
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              childAspectRatio: 2 / 2.89,
                              crossAxisSpacing: Paddings.minimum,
                              mainAxisSpacing: Paddings.minimum),
                      itemCount: 2,
                      itemBuilder: (BuildContext ctx, index) {
                        return DoctorTile(
                          name: DoctorModel.doctors[index].name,
                          image: DoctorModel.doctors[index].image,
                          role: DoctorModel.doctors[index].role,
                          totalRating: DoctorModel.doctors[index].totalRating,
                          onTap: () {},
                        );
                      }),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
