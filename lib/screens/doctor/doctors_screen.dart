import 'package:doctor/imports.dart';
import 'package:doctor/model/doctor_model.dart';

class DoctorScreen extends StatelessWidget {
  const DoctorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            CustomScrollView(
              slivers: <Widget>[
                SliverPadding(
                  padding: const EdgeInsets.only(
                    left: 0,
                    right: 0,
                  ),
                  sliver: SliverAppBar(
                    toolbarHeight: 70,
                    automaticallyImplyLeading: false,
                    pinned: true,
                    centerTitle: true,
                    expandedHeight: 165,
                    backgroundColor: ColorName.primaryColor,
                    leading: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: Paddings.minimum,
                          horizontal: Paddings.minimum),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          MyIcons.back,
                          size: IconSizes.appBarItem,
                          color: ColorName.white,
                        ),
                      ),
                    ),
                    title: const Text(
                      "Doctors",
                      overflow: TextOverflow.clip,
                      maxLines: 1,
                      style: TextStyle(
                          color: ColorName.white,
                          fontSize: FontSizes.headline2,
                          fontWeight: FontWeight.w600),
                    ),

                    flexibleSpace: FlexibleSpaceBar(
                      background: Column(
                        children: <Widget>[
                          SizedBox(height: ScreenSize.screenHeight * 0.15),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: Paddings.minimum,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        RadiusSize.containerRadius),
                                    color: ColorName.white,
                                  ),
                                  width: ScreenSize.screenWidth * 0.75,
                                  child: const TextField(
                                    textAlignVertical: TextAlignVertical.center,
                                    style: TextStyle(
                                      color: ColorName.black,
                                      fontSize: FontSizes.normal,
                                    ),
                                    decoration: InputDecoration(
                                      isDense: true,
                                      hintText: 'Search',
                                      hintStyle: TextStyle(
                                          color: ColorName.gray,
                                          fontSize: FontSizes.normal),
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      prefixIcon: Icon(
                                        MyIcons.search,
                                        size: IconSizes.smallIcon,
                                        color: ColorName.gray,
                                      ),
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: Paddings.content,
                                          vertical: Paddings.normal),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: ColorName.white,
                                    borderRadius: BorderRadius.circular(
                                        RadiusSize.containerRadiusSmall),
                                  ),
                                  child: IconButton(
                                    icon: const Icon(MyIcons.filter),
                                    // iconSize: IconSizes.smallIcon,
                                    color: ColorName.gray,
                                    onPressed: () {},
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    actions: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: Paddings.minimum,
                            horizontal: Paddings.minimum),
                        child: InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return Text('data');
                              },
                            );
                          },
                          child: const Icon(
                            MyIcons.dots,
                            size: IconSizes.appBarItem,
                            color: ColorName.white,
                          ),
                        ),
                      ),
                    ],
                    // MainAppBar.defaultAppBar(context),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.all(Paddings.minimum),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      ((context, index) => _buildBody(context)),
                      childCount: 1,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      child: GridView.builder(
        padding: const EdgeInsets.all(0),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 2 / 2.79,
          crossAxisSpacing: Paddings.minimum,
          // mainAxisSpacing: Paddings.minimum,
        ),
        itemCount: DoctorModel.doctors.length,
        itemBuilder: (BuildContext ctx, index) {
          return DoctorTile(
            name: DoctorModel.doctors[index].name,
            image: DoctorModel.doctors[index].image,
            role: DoctorModel.doctors[index].role,
            totalRating: DoctorModel.doctors[index].totalRating,
            onTap: () {
              Navigator.pushNamed(context, '/doctor-details');
            },
          );
        },
      ),
    );
  }
}
