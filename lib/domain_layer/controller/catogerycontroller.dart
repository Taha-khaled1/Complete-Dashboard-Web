import 'dart:io';
import 'package:dashboard/application_layer/sherdfunction/handling.dart';
import 'package:dashboard/application_layer/sherdfunction/statusrequst.dart';
import 'package:dashboard/data_layer/connectdatabase.dart';
import 'package:dashboard/data_layer/functionrespon/catogerydelete.dart';
import 'package:dashboard/data_layer/functionrespon/getcatogerydata.dart';
import 'package:dashboard/domain_layer/models/catogerymodel.dart';
import 'package:dashboard/presentation_layer/resource/mangecolor.dart';
import 'package:dashboard/presentation_layer/resource/mangelinks.dart';
import 'package:dashboard/presentation_layer/resource/mangenamepage.dart';
import 'package:dashboard/presentation_layer/widget/customsnackbar.dart';
import 'package:dashboard/presentation_layer/widget/dialogfordonecatogery.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatogeryControllerImp extends GetxController {
  bool x = false;
  int selectedIndex = 0;
  List<CatogeryDatamodel> data = [];
  File? myfil;
  Curd curd = Curd();
  String? namecatogery, namecatogeryar;
  late StatusRequest statusRequest;
  Catogerymodel? catogerymodel;
  catogerygetdatacontroller() async {
    statusRequest = StatusRequest.loading;
    var responss = await catogergetdata();
    statusRequest = handlingData(responss);
    if (StatusRequest.success == statusRequest) {
      if (responss['status'].toString() == 'success') {
        catogerymodel = Catogerymodel.fromJson(responss);
        data = catogerymodel!.data!;
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
    return responss;
  }

  catogerydeleted(id) async {
    statusRequest = StatusRequest.loading;
    var responss = await catogerydeletdata(id);

    statusRequest = handlingData(responss);
    if (StatusRequest.success == statusRequest) {
      if (responss['status'].toString() == 'success') {
        catogerymodel!.data!
            .removeWhere((element) => element.categoriesId == int.parse('$id'));
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

  String? drobdownvar;
  dropdownButtonsetstate(String catogeryname) {
    drobdownvar = catogeryname;
    update();
  }

  insertnewcatogery() async {
    if (myfil == null) {
      return const Text('found problem');
    }
    await curd.strequestforFile(
        MangerLinks.catogeryadd.toString(),
        'categories_images',
        {
          'categories_name': namecatogery.toString(),
          'categories_name_ar': namecatogeryar.toString(),
        },
        myfil!);
    x = false;
    doneaddcatogery(MangerNamePage.catogeryscreen, true);
  }

  onsavednamecatogery(String? value) {
    namecatogery = value!;
  }

  onsavednamecatogeryar(String? value) {
    namecatogeryar = value!;
  }

  justupdata() {
    update();
  }

  @override
  void onInit() {
    super.onInit();
    catogerygetdatacontroller();
  }
}
