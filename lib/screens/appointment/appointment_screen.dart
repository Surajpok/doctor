import 'package:doctor/imports.dart';

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
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: Paddings.normal, vertical: Paddings.normal),
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
                      children: const [
                        AppoitmentSection(),
                        AppoitmentSection(),
                        AppoitmentSection(),
                        AppoitmentSection(),
                      ],
                    ),
                    ListView(
                      children: const [
                        AppoitmentSection(),
                        AppoitmentSection(),
                        AppoitmentSection(),
                        AppoitmentSection(),
                      ],
                    ),
                    ListView(
                      children: const [
                        AppoitmentSection(),
                        AppoitmentSection(),
                        AppoitmentSection(),
                        AppoitmentSection(),
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
