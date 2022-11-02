import 'package:dashboard/domain_layer/controller/catogerycontroller.dart';
import 'package:dashboard/domain_layer/controller/productcontroller.dart';
import 'package:dashboard/presentation_layer/resource/MangeColor.dart';
import 'package:dashboard/presentation_layer/screen/Homescreen/homescreen.dart';
import 'package:dashboard/presentation_layer/widget/custombutten.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void doneaddcatogery(String namepage, bool isprodct) {
  final CatogeryControllerImp catogeryControllerImp =
      Get.put(CatogeryControllerImp());
  final ProducetControllerImp prodControllerImp =
      Get.put(ProducetControllerImp());
  Get.defaultDialog(
    barrierDismissible: false,
    title: 'Statues',
    content: SizedBox(
        width: 380,
        height: 180,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.done,
              size: 70,
              color: MangerColor.kTextColorgreen,
            ),
            const Text(
              'Section has been added successfully',
              style: TextStyle(fontSize: 21, color: MangerColor.isFavoroteOOff),
            ),
            Row(
              children: [
                Expanded(
                  child: Buttenwidget(
                    color: MangerColor.sheet,
                    width: 350 / 2,
                    haigh: 55,
                    press: () {
                      Get.offAll(Homescreen());
                    },
                    text: 'Dashboard',
                  ),
                ),
                Expanded(
                  child: Buttenwidget(
                    color: MangerColor.kTextColorgreen,
                    width: 350 / 2,
                    haigh: 55,
                    press: () async {
                      isprodct == true
                          ? await catogeryControllerImp
                              .catogerygetdatacontroller()
                          : await prodControllerImp.itemsgetdatacontroller();
                      Get.offAllNamed(namepage);
                    },
                    text: 'OK',
                  ),
                ),
              ],
            )
          ],
        )),
    backgroundColor: MangerColor.bgColor,
    titleStyle: const TextStyle(color: Colors.white),
  );
}
