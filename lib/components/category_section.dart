import 'package:doctor/imports.dart';
import 'package:doctor/model/category_model.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: ContainerSizes.categoryItemRowHeight,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Category.categories.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(right: Paddings.normal),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: ContainerSizes.iconBoxHeightWidth,
                      height: ContainerSizes.iconBoxHeightWidth,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: ColorName.secondaryAccent,
                          // color: Color(Category.categories[index].color),
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(RadiusSize.catagoryItemRadius),
                        ),
                      ),
                      child: Material(
                        color: ColorName.white,
                        borderRadius: BorderRadius.circular(
                            RadiusSize.catagoryItemRadius),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image:
                                    AssetImage(Category.categories[index].icon),
                                height: IconSizes.catagoryIcon,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: Paddings.minimum,
                    ),
                    Text(
                      // categoryList[index]['name'],
                      Category.categories[index].name,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: FontSizes.headline2,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
