import 'package:doctor/imports.dart';
import 'package:doctor/model/chat_details_model.dart';

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
      appBar: MainAppBar.defaultAppBar(
        context,
        title: 'Dr. Kawsar Ahmad',
        leading: true,
        height: 70,
        color: ColorName.secondaryAccent,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: Paddings.minimum, horizontal: Paddings.minimum),
            child: Container(
              width: ContainerSizes.appBarImgHeightWidth,
              height: ContainerSizes.appBarImgHeightWidth,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(RadiusSize.containerRadius),
                image: DecorationImage(
                  image: AssetImage(Assets.images.doctor.path),
                  fit: BoxFit.cover, //change image fill type
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            CustomScrollView(
              slivers: [
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
            _buildFloatBar()
          ],
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: ChatDetailsModel.messages.length,
          padding: EdgeInsets.all(0),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return ChatDetailsTile(
              date: ChatDetailsModel.messages[index].message,
              image: ChatDetailsModel.messages[index].image,
              message: ChatDetailsModel.messages[index].message,
              name: ChatDetailsModel.messages[index].name,
              time: ChatDetailsModel.messages[index].time,
              messageType: ChatDetailsModel.messages[index].messageType,
            );
          },
        ),
      ],
    );
  }

  Widget _buildFloatBar() {
    return Positioned(
      bottom: 10,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.only(
            left: Paddings.normal, right: Paddings.normal),
        child: Container(
          padding: const EdgeInsets.only(
              left: Paddings.minimum, right: Paddings.minimum),
          decoration: BoxDecoration(
              color: ColorName.primaryColor,
              borderRadius:
                  BorderRadius.circular(RadiusSize.containerRadiusSmall)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: ScreenSize.screenWidth * 0.55,
                child: TextFormField(
                  style: const TextStyle(
                    color: ColorName.white,
                    fontSize: FontSizes.normal,
                  ),
                  onChanged: (value) {
                    if (value.isNotEmpty) {
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
    );
  }
}
