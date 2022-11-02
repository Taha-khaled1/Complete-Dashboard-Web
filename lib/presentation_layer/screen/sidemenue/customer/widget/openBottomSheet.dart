// ignore_for_file: file_names

import 'package:dashboard/presentation_layer/Infowidget/models/device_info.dart';
import 'package:dashboard/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:dashboard/presentation_layer/resource/mangertextstyel.dart';
import 'package:dashboard/presentation_layer/screen/sidemenue/customer/widget/EcptionBody.dart';
import 'package:dashboard/presentation_layer/widget/custombutten.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../resource/mangecolor.dart';

void bottomSheetforeCustomer(
    DeviceInfo deviceInfo, TextTheme textTheme, String text) {
  Get.bottomSheet(
    backgroundColor: MangerColor.bgColor,
    SingleChildScrollView(
      child: Container(
        alignment: Alignment.center,
        width: 900,
        child: Stack(
          alignment: Alignment.center,
          children: [
            const SizedBox(height: 20),
            Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: 500,
                  height: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      // Textfeild(
                      //   width: 500,
                      //   onsaved: (p0) {},
                      //   titel: 'Username',
                      //   valid: (p0) {},
                      // ),
                      // Textfeild(
                      //   width: 500,
                      //   onsaved: (p0) {},
                      //   titel: 'email',
                      //   valid: (p0) {},
                      // ),
                      // Textfeild(
                      //   width: 500,
                      //   onsaved: (p0) {},
                      //   titel: 'Password',
                      //   valid: (p0) {},
                      // ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Buttenwidget(
                  width: 500,
                  haigh: 70,
                  color: MangerColor.kTextColorteal,
                  text: 'Add Now',
                  press: () {},
                ),
                const SizedBox(
                  height: 7,
                )
              ],
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
            Positioned(
              top: 0,
              right: 30,
              child: SizedBox(
                width: 200,
                child: ExpansionTile(
                  trailing: const Icon(
                    Icons.expand_circle_down_outlined,
                    color: MangerColor.isFavoroteOOff,
                    size: 30,
                  ),
                  backgroundColor: MangerColor.kTextColor,
                  iconColor: MangerColor.kTextColorteal,
                  title: Text(
                    'User Permissions',
                    style: MangerTextstyel.textpopmenue(
                        textTheme, MangerColor.isFavoroteOOff),
                  ),
                  children: [
                    InfoWidget(
                      builder: (context, deviceInfo) {
                        return EcptionBody(
                            textTheme: textTheme,
                            width: deviceInfo.localWidth * 0.85);
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ),
    // backgroundColor: Colors.white,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );
}
