// ignore_for_file: file_names

import 'package:dashboard/presentation_layer/resource/mangecolor.dart';
import 'package:dashboard/presentation_layer/screen/sidemenue/calculator/calculatorscreen.dart';
import 'package:dashboard/presentation_layer/screen/sidemenue/catogeryscreen/catogeryscreen.dart';
import 'package:dashboard/presentation_layer/screen/sidemenue/customer/Customer.dart';
import 'package:dashboard/presentation_layer/screen/sidemenue/product/prodectscreen.dart';
import 'package:dashboard/presentation_layer/widget/DrawerListTile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: MangerColor.secondaryColor,
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset("assets/images/logo1.png"),
          ),
          DrawerListTile(
            title: "Dashboard",
            svgSrc: "assets/icons/menu_dashbord.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Transaction Order",
            svgSrc: "assets/icons/menu_tran.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Customer",
            svgSrc: "assets/icons/menu_task.svg",
            press: () {
              Get.to(Customer());
            },
          ),
          DrawerListTile(
            title: "Products",
            svgSrc: "assets/icons/menu_doc.svg",
            press: () {
              Get.to(const ProductScreen());
            },
          ),
          DrawerListTile(
            title: "Catogery",
            svgSrc: "assets/icons/menu_store.svg",
            press: () {
              Get.to(const Catogeryscreen());
            },
          ),
          DrawerListTile(
            title: "Orders",
            svgSrc: "assets/icons/menu_notification.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Calculator",
            svgSrc: "assets/icons/menu_profile.svg",
            press: () {
              Get.to(const CalculatorScreen());
            },
          ),
        ],
      ),
    );
  }
}
