import 'package:doctor/imports.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool sendButton = false;
  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
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
                    centerTitle: false,
                    expandedHeight: 165,
                    backgroundColor: ColorName.primaryColor,
                    leading: null,
                    title: const Text(
                      "Messages",
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
                                  width: ScreenSize.screenWidth * 0.8,
                                  child: TextField(
                                    style: const TextStyle(
                                      color: ColorName.black,
                                      fontSize: FontSizes.normal,
                                    ),
                                    onChanged: (value) {
                                      if (value.length > 0) {
                                        setState(() {
                                          sendButton = true;
                                        });
                                      } else {
                                        setState(() {
                                          sendButton = false;
                                        });
                                      }
                                    },
                                    decoration: const InputDecoration(
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
                        padding: const EdgeInsets.only(
                            left: Paddings.minimum,
                            right: Paddings.minimum,
                            top: Paddings.minimum,
                            bottom: Paddings.minimum),
                        child: Container(
                          width: ContainerSizes.appBarImgHeightWidth,
                          height: ContainerSizes.appBarImgHeightWidth,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(
                                RadiusSize.containerRadius),
                            image: DecorationImage(
                              image: AssetImage(Assets.images.doctor.path),
                              fit: BoxFit.cover, //change image fill type
                            ),
                          ),
                        ),
                      ),
                    ],
                    // MainAppBar.defaultAppBar(context),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.all(Paddings.normal),
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Messagetile(),
        Messagetile(),
        Messagetile(),
        Messagetile(),
        Messagetile(),
        Messagetile(),
        Messagetile(),
      ],
    );
  }
}
