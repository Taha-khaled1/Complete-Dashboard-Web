// ignore_for_file: file_names
import 'package:dashboard/domain_layer/controller/catogerycontroller.dart';
import 'package:dashboard/presentation_layer/resource/mangecolor.dart';
import 'package:dashboard/presentation_layer/resource/mangelinks.dart';
import 'package:dashboard/presentation_layer/resource/mangesize.dart';
import 'package:dashboard/presentation_layer/widget/popmenuCustom.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FileInfoCard extends StatelessWidget {
  FileInfoCard(
      {Key? key,
      this.controllerImp,
      required this.svg,
      required this.titel,
      required this.id,
      required this.color,
      this.issvg = false,
      required this.width,
      required this.height})
      : super(key: key);
  final String svg, titel, id;
  final Color color;
  final bool issvg;
  final double width;
  final double height;
  final CatogeryControllerImp? controllerImp;
  String selectedMenu = '';
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.all(MangerSize.defaultPadding),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(MangerSize.defaultPadding * 0.75),
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: issvg
                    ? Image.network('${MangerLinks.imagerootcatogery}/$svg')
                    : Image.asset(
                        svg,
                        color: MangerColor.isFavoroteOOff,
                      ),
              ),
              issvg
                  ? PopmenuCustom(
                      onSelected: (enumvalue) {
                        selectedMenu = enumvalue.name;
                        if (enumvalue == Menu.itemTwo) {
                          controllerImp!.catogerydeleted(id);
                        }
                      },
                    )
                  : const Icon(Icons.more_vert, color: Colors.white54)
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                titel,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: textTheme.headline6,
              ),
              Text(
                issvg ? 'Id catogery  :   $id' : id,
                style: textTheme.subtitle1,
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

enum Menu {
  itemOne,
  itemTwo,
}
