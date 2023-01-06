import 'package:doctor/imports.dart';

class ChatDetails extends StatefulWidget {
  const ChatDetails({super.key});

  @override
  State<ChatDetails> createState() => _ChatDetailsState();
}

class _ChatDetailsState extends State<ChatDetails> {
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
              slivers: [
                SliverAppBar(
                  pinned: true,
                  toolbarHeight: 75,
                  leading: IconButton(
                    icon: const Icon(
                      MyIcons.back,
                      size: IconSizes.smallIcon,
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: Paddings.minimum,
                          horizontal: Paddings.minimum),
                      child: Container(
                        width: ScreenSize.screenWidth *
                            ContainerSizes.appBarImgHeightWidth,
                        height: ScreenSize.screenHeight *
                            ContainerSizes.appBarImgHeightWidth,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius:
                              BorderRadius.circular(RadiusSize.containerRadius),
                          image: DecorationImage(
                            image: AssetImage(Assets.images.doctor.path),
                            fit: BoxFit.cover, //change image fill type
                          ),
                        ),
                      ),
                    ),
                  ],
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      color: ColorName.secondaryAccent,
                    ),
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
            _buldFloatBar()
          ],
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text('hello'),
      ],
    );
  }

  Widget _buldFloatBar() {
    return Positioned(
      bottom: 10,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.only(
            left: Paddings.normal, right: Paddings.normal),
        child: Container(
          decoration: BoxDecoration(
              color: ColorName.primaryColor,
              borderRadius:
                  BorderRadius.circular(RadiusSize.containerRadiusSmall)),
          child: Padding(
            padding: const EdgeInsets.only(
                left: Paddings.minimum, right: Paddings.minimum),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: ScreenSize.screenWidth * 0.55,
                  child: TextFormField(
                    style: const TextStyle(
                      color: ColorName.white,
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
                      hintText: 'Enter a message',
                      hintStyle: TextStyle(color: ColorName.white),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: Paddings.minimum,
                          vertical: Paddings.normal),
                    ),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      child: IconButton(
                        icon: Icon(MyIcons.attachment),
                        color: ColorName.white,
                        iconSize: IconSizes.smallIcon,
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      child: IconButton(
                        icon: Icon(sendButton ? MyIcons.send : MyIcons.mic),
                        color: ColorName.white,
                        iconSize: IconSizes.smallIcon,
                        onPressed: () {},
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
