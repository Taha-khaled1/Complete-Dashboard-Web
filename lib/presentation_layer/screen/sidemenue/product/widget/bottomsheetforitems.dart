import 'package:dashboard/domain_layer/controller/productcontroller.dart';
import 'package:dashboard/domain_layer/models/itemsalldata.dart';
import 'package:dashboard/presentation_layer/Infowidget/models/device_info.dart';
import 'package:dashboard/presentation_layer/screen/sidemenue/product/AlltextfiledforProduct.dart';
import 'package:dashboard/presentation_layer/screen/sidemenue/product/widget/Towbutton.dart';
import 'package:dashboard/presentation_layer/screen/sidemenue/product/widget/section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../resource/mangecolor.dart';

void bottomSheetforproduct(
  DeviceInfo deviceInfo,
  TextTheme textTheme,
  String text,
  bool isupdata, {
  ItemsData? data,
}) {
  final ProducetControllerImp controller = Get.put(ProducetControllerImp());
  final GlobalKey<FormState> formkey = GlobalKey();
  Get.bottomSheet(
    backgroundColor: MangerColor.bgColor,
    SingleChildScrollView(
      child: Container(
        alignment: Alignment.center,
        width: 900,
        // height: 600,
        child: Stack(
          alignment: Alignment.center,
          children: [
            const SizedBox(height: 20),
            Form(
              key: formkey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: 500,
                    height: 500,
                    child: AlltextfiledforProduct(
                        controller: controller, data: data),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Towbutton(
                    controllerImp: controller,
                    formkey: formkey,
                    isupdata: isupdata,
                    id: data?.itemsId,
                    image: data?.itemsImage,
                  ),
                  const SizedBox(
                    height: 7,
                  )
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 40,
              child: Text(
                text,
                style: textTheme.headline6,
                textAlign: TextAlign.left,
              ),
            ),
            section(
              controllerImp: controller,
              textTheme: textTheme,
            )
          ],
        ),
      ),
    ),
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );
}
