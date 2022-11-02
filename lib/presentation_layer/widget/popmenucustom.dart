// ignore_for_file: must_be_immutable, camel_case_types, file_names
import 'package:dashboard/presentation_layer/resource/MangeColor.dart';
import 'package:dashboard/presentation_layer/widget/neumorphism.dart';
import 'package:flutter/material.dart';

class PopmenuCustom extends StatelessWidget {
  PopmenuCustom({
    Key? key,
    required this.onSelected,
    //required this.menu,
  }) : super(key: key);
  //final Enum menu;
  void Function(ProdectMenu)? onSelected;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      onSelected: onSelected,
      // onSelected: (ProdectMenu item) {
      //   selectedMenu = item.name;
      //   if (item == ProdectMenu.itemTwo) {}
      // },
      icon: const Icon(
        Icons.more_vert,
        color: MangerColor.kTextColorteal,
        size: 35,
      ),
      itemBuilder: (context) {
        return [
          const PopupMenuItem(
            value: ProdectMenu.itemOne,
            child: Text(
              'Update',
              style: TextStyle(
                color: MangerColor.kTextColorgreen,
              ),
            ),
          ),
          const PopupMenuItem(
            value: ProdectMenu.itemTwo,
            child: Text(
              'Delete',
              style: TextStyle(
                color: MangerColor.kTextColorred,
              ),
            ),
          ),
        ];
      },
    );
  }
}
