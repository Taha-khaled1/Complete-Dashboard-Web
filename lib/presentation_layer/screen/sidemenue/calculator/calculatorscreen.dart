import 'package:dashboard/domain_layer/controller/calaculatorcontroller.dart';
import 'package:dashboard/domain_layer/controller/themcontroller.dart';
import 'package:dashboard/domain_layer/utilt/colors.dart';
import 'package:dashboard/presentation_layer/screen/sidemenue/calculator/widget/inputsection.dart';
import 'package:dashboard/presentation_layer/screen/sidemenue/calculator/widget/outputsection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (context) {
        var controller = Get.find<CalculateController>();
        var themeController = Get.find<ThemeController>();
        return Scaffold(
          backgroundColor: themeController.isDark
              ? DarkColors.scaffoldBgColor
              : LightColors.scaffoldBgColor,
          body: Align(
            alignment: Alignment.topCenter,
            child: Container(
              alignment: Alignment.topCenter,
              constraints: const BoxConstraints(
                maxWidth: 1400,
                maxHeight: 935,
              ),
              width: double.infinity,
              height: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    GetBuilder<CalculateController>(
                      builder: (context) {
                        return outPutSection(themeController, controller);
                      },
                    ),
                    inPutSection(themeController, controller),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
