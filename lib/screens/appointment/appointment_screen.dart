import 'package:doctor/imports.dart';
import 'package:doctor/model/appointment_model.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({super.key});

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      appBar: MainAppBar.defaultAppBar(
        context,
        title: 'Appointments',
        leading: false,
        height: 55,
        color: ColorName.secondaryAccent,
        actions: [
          const Padding(
            padding: EdgeInsets.symmetric(
                vertical: Paddings.minimum, horizontal: Paddings.minimum),
            child: Icon(
              MyIcons.search,
              size: IconSizes.appBarItem,
              color: ColorName.black,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(
              top: Paddings.minimum,
              right: Paddings.normal,
              // bottom: Paddings.normal,
              left: Paddings.normal),
          child: Column(
            children: [
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: ColorName.secondaryAccent,
                  borderRadius:
                      BorderRadius.circular(RadiusSize.containerRadiusSmall),
                ),
                child: TabBar(
                  controller: _tabController,
                  labelColor: ColorName.white,
                  unselectedLabelColor: Colors.black,
                  indicator: BoxDecoration(
                    color: ColorName.primaryColor,
                    borderRadius:
                        BorderRadius.circular(RadiusSize.containerRadiusSmall),
                  ),
                  tabs: const [
                    Tab(text: 'Upcomming'),
                    Tab(text: 'Complete'),
                    Tab(text: 'Cancelled'),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    ListView(
                      children: [
                        ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: AppointmentModel.appointments.length,
                          padding:
                              const EdgeInsets.only(bottom: Paddings.normal),
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return AppoitmentSection(
                              date: AppointmentModel.appointments[index].date,
                              image: AppointmentModel.appointments[index].image,
                              name: AppointmentModel.appointments[index].name,
                              fromTime:
                                  AppointmentModel.appointments[index].fromTime,
                              toTime:
                                  AppointmentModel.appointments[index].toTime,
                              isCancelled: AppointmentModel
                                  .appointments[index].isCancelled,
                              role: AppointmentModel.appointments[index].role,
                            );
                          },
                        ),
                      ],
                    ),
                    ListView(
                      children: [
                        ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: AppointmentModel.appointments.length,
                          padding: EdgeInsets.all(0),
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return AppoitmentSection(
                              date: AppointmentModel.appointments[index].date,
                              image: AppointmentModel.appointments[index].image,
                              name: AppointmentModel.appointments[index].name,
                              fromTime:
                                  AppointmentModel.appointments[index].fromTime,
                              toTime:
                                  AppointmentModel.appointments[index].toTime,
                              isCancelled: AppointmentModel
                                  .appointments[index].isCancelled,
                              role: AppointmentModel.appointments[index].role,
                            );
                          },
                        )
                      ],
                    ),
                    ListView(
                      children: [
                        ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: AppointmentModel.appointments.length,
                          padding: EdgeInsets.all(0),
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return AppoitmentSection(
                              date: AppointmentModel.appointments[index].date,
                              image: AppointmentModel.appointments[index].image,
                              name: AppointmentModel.appointments[index].name,
                              fromTime:
                                  AppointmentModel.appointments[index].fromTime,
                              toTime:
                                  AppointmentModel.appointments[index].toTime,
                              isCancelled: AppointmentModel
                                  .appointments[index].isCancelled,
                              role: AppointmentModel.appointments[index].role,
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
