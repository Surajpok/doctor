import 'dart:ui';

import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:doctor/imports.dart';
import 'package:intl/intl.dart';

class BookAppointment extends StatelessWidget {
  const BookAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
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
    padding: const EdgeInsets.symmetric(horizontal: Paddings.minimum),
    child: Column(
      children: [
        _buildProfile(context),
        _buildDatePicker(context),
      ],
    ),
  );
}

Widget _buildProfile(BuildContext context) {
  return Column(
    children: [
      Container(
        padding: const EdgeInsets.symmetric(
          vertical: Paddings.normal,
          horizontal: Paddings.normal,
        ),
        margin: const EdgeInsets.only(
            top: Paddings.minimum, bottom: Paddings.content),
        decoration: BoxDecoration(
          color: ColorName.gradientFirst,
          borderRadius: BorderRadius.circular(RadiusSize.containerRadiusTiny),
          image: DecorationImage(
            image: AssetImage(Assets.images.doctor.path),
            fit: BoxFit.contain,
            alignment: FractionalOffset.centerRight,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Dr. Nabin K. Bhattarai',
                    overflow: TextOverflow.clip,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: FontSizes.big,
                      color: ColorName.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: Margins.small,
                  ),
                  const Text(
                    'Dentist at Rangpur, Hospital',
                    overflow: TextOverflow.clip,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: FontSizes.small,
                      color: ColorName.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: Paddings.normal,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: Paddings.minimum,
                      horizontal: Paddings.normal,
                    ),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(RadiusSize.containerRadiusTiny),
                      color: ColorName.primaryAccent,
                    ),
                    child: const Text(
                      'Available',
                      overflow: TextOverflow.clip,
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: FontSizes.normal,
                        color: ColorName.gradientSecond,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget _buildDatePicker(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Align(
        alignment: Alignment.topLeft,
        child: Text(
          DateFormat.yMMMMd().format(
            DateTime.now(),
          ),
          style: const TextStyle(
            fontSize: FontSizes.normal,
            color: ColorName.gray,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(vertical: Paddings.minimum),
        child: DatePicker(
          DateTime.now(),
          height: 100,
          width: 80,
          initialSelectedDate: DateTime.now(),
          selectionColor: ColorName.primaryColor,
          selectedTextColor: ColorName.white,
          locale: 'en-NP',
        ),
      ),
      const SizedBox(
        height: Margins.normal,
      ),
      const Text(
        'Morning Slots',
        overflow: TextOverflow.clip,
        maxLines: 1,
        style: TextStyle(
          fontSize: FontSizes.headline2,
          color: ColorName.black,
          fontWeight: FontWeight.w500,
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: Paddings.minimum),
        child: GridView.builder(
          padding: const EdgeInsets.all(0),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 150,
            childAspectRatio: 2 / .9,
            crossAxisSpacing: Paddings.minimum,
            mainAxisSpacing: Paddings.minimum,
          ),
          itemCount: 3,
          itemBuilder: (BuildContext ctx, index) {
            return Container(
              child: MyTextButton(
                onPressed: () {},
                child: const Text(
                  '1 : 30 AM',
                  style: TextStyle(
                    color: ColorName.black,
                  ),
                ),
              ),
            );
          },
        ),
      ),
      const SizedBox(
        height: Paddings.normal,
      ),
      const Text(
        'Afternoon Slots',
        overflow: TextOverflow.clip,
        maxLines: 1,
        style: TextStyle(
          fontSize: FontSizes.headline2,
          color: ColorName.black,
          fontWeight: FontWeight.w500,
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: Paddings.minimum),
        child: GridView.builder(
          padding: const EdgeInsets.all(0),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 150,
            childAspectRatio: 2 / .9,
            crossAxisSpacing: Paddings.minimum,
            mainAxisSpacing: Paddings.minimum,
          ),
          itemCount: 4,
          itemBuilder: (BuildContext ctx, index) {
            return Container(
              child: MyTextButton(
                onPressed: () {},
                child: const Text(
                  '1 : 30 AM',
                  style: TextStyle(
                    color: ColorName.black,
                  ),
                ),
              ),
            );
          },
        ),
      ),
      const SizedBox(
        height: Paddings.content,
      ),
      const Text(
        'Afternoon Slots',
        overflow: TextOverflow.clip,
        maxLines: 1,
        style: TextStyle(
          fontSize: FontSizes.headline2,
          color: ColorName.black,
          fontWeight: FontWeight.w500,
        ),
      ),
      const SizedBox(
        height: Paddings.minimum,
      ),
      MyElevatedButton(
        height: ScreenSize.screenHeight * 0.07,
        width: double.infinity,
        onPressed: () {
          Navigator.pushNamed(context, '/book-appointment');
        },
        borderRadius: BorderRadius.circular(RadiusSize.buttonRadius),
        child: const Text(
          'Select Payment Method',
          style: TextStyle(
            fontSize: FontSizes.normal,
          ),
        ),
      ),
    ],
  );
}
