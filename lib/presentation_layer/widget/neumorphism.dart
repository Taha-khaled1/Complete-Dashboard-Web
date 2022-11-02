// ignore_for_file: must_be_immutable

import 'package:dashboard/domain_layer/controller/productcontroller.dart';
import 'package:dashboard/domain_layer/models/itemsalldata.dart';
import 'package:dashboard/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:dashboard/presentation_layer/resource/mangecolor.dart';
import 'package:dashboard/presentation_layer/resource/mangelinks.dart';
import 'package:dashboard/presentation_layer/screen/sidemenue/product/widget/bottomsheetforitems.dart';
import 'package:dashboard/presentation_layer/widget/popmenucustom.dart';
import 'package:flutter/material.dart';

String selectedMenu = '';

class NeumorphismCard extends StatelessWidget {
  NeumorphismCard({
    super.key,
    this.isScreenfavorit = false,
    required this.image,
    required this.title,
    required this.price,
    this.id,
    this.productcont,
    this.data,
  });
  final ItemsData? data;
  final String image, title, price;
  final bool isScreenfavorit;
  ProducetControllerImp? productcont;
  int? id;
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      width: 300,
      height: 370,
      decoration: BoxDecoration(
        color: MangerColor.secondaryColor,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.7),
              offset: const Offset(4, 4),
              blurRadius: 15,
              spreadRadius: 1),
          const BoxShadow(
              color: MangerColor.bgColor,
              offset: Offset(-4, -4),
              blurRadius: 15,
              spreadRadius: 1),
        ],
      ),
      child: InfoWidget(
        builder: (context, deviceInfo) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PopmenuCustom(
                onSelected: (enumvalue) {
                  selectedMenu = enumvalue.name;
                  if (enumvalue == ProdectMenu.itemTwo) {
                    productcont!.itemsdeltedcontr(id, image);
                  } else if (enumvalue == ProdectMenu.itemOne) {
                    bottomSheetforproduct(
                        deviceInfo, textTheme, 'Add a new User Product', true,
                        data: data);
                  }
                },
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          radius: 70,
                          backgroundColor: Colors.blue[300]!.withOpacity(0.2),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.network(
                            '${MangerLinks.imagerootitemss}/$image',
                            fit: BoxFit.fill,
                            height: 200,
                            width: 200,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14, bottom: 10, right: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 20,
                        color: MangerColor.isFavoroteOOff,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$ $price',
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: MangerColor.sheet),
                        ),
                        isScreenfavorit == false
                            ? const SizedBox()
                            : const Icon(
                                Icons.favorite,
                                color: MangerColor.isFavoroteOOff,
                                size: 30,
                              ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

enum ProdectMenu {
  itemOne,
  itemTwo,
}
