import 'dart:io';

import 'package:dashboard/application_layer/sherdfunction/handling.dart';
import 'package:dashboard/application_layer/sherdfunction/statusrequst.dart';
import 'package:dashboard/data_layer/connectdatabase.dart';
import 'package:dashboard/data_layer/functionrespon/itemdelete.dart';
import 'package:dashboard/data_layer/functionrespon/itemsalldata.dart';
import 'package:dashboard/domain_layer/models/itemsalldata.dart';
import 'package:dashboard/presentation_layer/resource/MangeColor.dart';
import 'package:dashboard/presentation_layer/resource/mangelinks.dart';
import 'package:dashboard/presentation_layer/resource/mangenamepage.dart';
import 'package:dashboard/presentation_layer/widget/customsnackbar.dart';
import 'package:dashboard/presentation_layer/widget/dialogfordonecatogery.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProducetControllerImp extends GetxController {
  //int selectedIndex = 0;
  bool isChecked = true;
  List<ItemsData> data = [];
  File? myfil;
  Curd curd = Curd();
  String? nameproduct,
      nameproductar,
      descrbtionnameproduct,
      descrbtionproductar;
  int? discount, qountaty, numbersection, priceproduct;
  int idsection = 0;
  late StatusRequest statusRequest;
  ItemsAlldata? itemsmodel;
  itemsgetdatacontroller() async {
    statusRequest = StatusRequest.loading;
    var responss = await itemsgetdata();
    statusRequest = handlingData(responss);
    if (StatusRequest.success == statusRequest) {
      if (responss['status'].toString() == 'success') {
        itemsmodel = ItemsAlldata.fromJson(responss);
        data = itemsmodel!.data!;
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
    return responss;
  }

  ischeck(bool value) {
    isChecked = value;
    update();
  }

  onsavednameproduct(String? value) {
    nameproduct = value!;
  }

  onsavednameproductar(String? value) {
    nameproductar = value!;
  }

  onsavedDescrebtionproduct(String? value) {
    descrbtionnameproduct = value!;
  }

  onsavedDescrebtionproductar(String? value) {
    descrbtionproductar = value!;
  }

  onsavedquantityproduct(String? value) {
    qountaty = int.parse(value!);
  }

  onsaveddiscountproduct(String? value) {
    discount = int.parse(value!);
  }

  onsavedPriceproduct(String? value) {
    priceproduct = int.parse(value!);
  }

  onsavedNumbersectionproduct(String? value) {
    numbersection = int.parse(value!);
  }

  insertnewProduct() async {
    if (myfil == null) {
      return const Text('found problem');
    }
    await curd.strequestforFile(
        MangerLinks.productdd.toString(),
        'items_image',
        {
          'items_name': nameproduct.toString(),
          'items_name_ar': nameproductar.toString(),
          'items_descrbtion': descrbtionnameproduct.toString(),
          'items_descrbtion_ar': descrbtionproductar.toString(),
          'items_count': qountaty.toString(),
          'items_price': priceproduct.toString(),
          'items_discount': discount.toString(),
          'items_reletion': idsection.toString(),
          'items_active': isChecked == false ? 0 : 1,
          //'items_reletion': namecatogeryar.toString(),
        },
        myfil!);
    doneaddcatogery(MangerNamePage.productscreen, false);
  }

  itemsdeltedcontr(id, image) async {
    statusRequest = StatusRequest.loading;
    var responss = await productdeleted(id, image);

    statusRequest = handlingData(responss);
    if (StatusRequest.success == statusRequest) {
      if (responss['status'].toString() == 'success') {
        itemsmodel!.data!
            .removeWhere((element) => element.itemsId == int.parse('$id'));
        snackbarcustom(
          Icons.done,
          'Section has been deleted successfully',
          MangerColor.kTextColorgreen,
          MangerColor.isFavoroteOOff,
        );
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
    return responss;
  }

  @override
  void onInit() {
    super.onInit();
    itemsgetdatacontroller();
  }

  productupdata(id, imagename) async {
    if (myfil == null) {
      await curd.postrequest(
        MangerLinks.productupdata,
        {
          'items_id': id.toString(),
          'items_name': nameproduct.toString(),
          'items_name_ar': nameproductar.toString(),
          'items_descrbtion': descrbtionnameproduct.toString(),
          'items_descrbtion_ar': descrbtionproductar.toString(),
          'items_count': qountaty.toString(),
          'items_price': priceproduct.toString(),
          'items_discount': discount.toString(),
          'items_image': imagename.toString(),
          'items_reletion': idsection.toString(),
          'items_active': isChecked == false ? 0 : 1,
          //'items_reletion': namecatogeryar.toString(),
        },
      );
      doneaddcatogery(MangerNamePage.productscreen, false);
    } else {
      await curd.strequestforFile(
          MangerLinks.productupdata,
          'image',
          {
            'items_id': id.toString(),
            'items_name': nameproduct.toString(),
            'items_name_ar': nameproductar.toString(),
            'items_descrbtion': descrbtionnameproduct.toString(),
            'items_descrbtion_ar': descrbtionproductar.toString(),
            'items_count': qountaty.toString(),
            'items_image': imagename.toString(),
            'items_price': priceproduct.toString(),
            'items_discount': discount.toString(),
            'items_reletion': idsection.toString(),
            'items_active': isChecked == false ? 0 : 1,
            //'items_reletion': namecatogeryar.toString(),
          },
          myfil!);
      doneaddcatogery(MangerNamePage.productscreen, false);
    }
  }
}
