// ignore_for_file: file_names

import 'package:dashboard/presentation_layer/resource/mangenamepage.dart';
import 'package:dashboard/presentation_layer/screen/Homescreen/homescreen.dart';
import 'package:dashboard/presentation_layer/screen/sidemenue/calculator/calculatorscreen.dart';
import 'package:dashboard/presentation_layer/screen/sidemenue/catogeryscreen/catogeryscreen.dart';
import 'package:dashboard/presentation_layer/screen/sidemenue/customer/Customer.dart';
import 'package:dashboard/presentation_layer/screen/sidemenue/product/prodectscreen.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? getPage = [
  GetPage(name: '/', page: () => Homescreen()),
  GetPage(
      name: MangerNamePage.catogeryscreen, page: () => const Catogeryscreen()),
  GetPage(
      name: MangerNamePage.productscreen, page: () => const ProductScreen()),
  GetPage(
      name: MangerNamePage.calclutorscreen,
      page: () => const CalculatorScreen()),
  GetPage(name: MangerNamePage.customerscreen, page: () => Customer()),
];
