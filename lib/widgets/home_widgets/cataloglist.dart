import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../models/catalogs.dart';
import '../../utils/theams.dart';
import '../homepage.dart';



class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return CatalogItem(
          catalog: catalog,
        );
      },
    );
  }
}


class CatalogItem extends StatelessWidget {
  final Items catalog;

  const CatalogItem({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
          children: [
            CatalogImage(
              catalog: catalog.image,
              image: catalog.image,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(9.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      catalog.name.text.bold.make(),
                      catalog.desc.text.textStyle(context.captionStyle).make(),
                      10.heightBox,
                      ButtonBar(
                        buttonPadding: EdgeInsets.zero,
                        alignment: MainAxisAlignment.spaceBetween,
                        children: [
                          catalog.price.text.bold.xl.make(),
                          ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor:
                                  MaterialStateProperty.all(MyTheme.themegreen),
                                  shape:
                                  MaterialStateProperty.all(StadiumBorder())),
                              child: "Buy".text.make())
                        ],
                      ).pOnly(right: 8.0)
                    ]),
              ),
            ),
          ],
        )).white.roundedLg.square(150).make().py4();
  }
}

