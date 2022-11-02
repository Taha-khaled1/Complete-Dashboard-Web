import 'package:dashboard/application_layer/constant.dart';
import 'package:dashboard/domain_layer/controller/calaculatorcontroller.dart';
import 'package:dashboard/domain_layer/controller/themcontroller.dart';
import 'package:dashboard/domain_layer/utilt/colors.dart';
import 'package:dashboard/presentation_layer/screen/sidemenue/product/widget/buttoncalc.dart';
import 'package:flutter/material.dart';

Widget inPutSection(
    ThemeController themeController, CalculateController controller) {
  return Container(
    padding: const EdgeInsets.all(3),
    width: 550,
    height: 700,
    decoration: BoxDecoration(
        color: themeController.isDark
            ? DarkColors.sheetBgColor
            : LightColors.sheetBgColor,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30))),
    child: GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: buttons.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      itemBuilder: (contex, index) {
        switch (index) {

          /// CLEAR BTN
          case 0:
            return CustomButton(
                buttonTapped: () {
                  controller.clearInputAndOutput();
                },
                color: themeController.isDark
                    ? DarkColors.btnBgColor
                    : LightColors.btnBgColor,
                textColor: themeController.isDark
                    ? DarkColors.leftOperatorColor
                    : LightColors.leftOperatorColor,
                text: buttons[index]);

          /// DELETE BTN
          case 1:
            return CustomButton(
                buttonTapped: () {
                  controller.deleteBtnAction();
                },
                color: themeController.isDark
                    ? DarkColors.btnBgColor
                    : LightColors.btnBgColor,
                textColor: themeController.isDark
                    ? DarkColors.leftOperatorColor
                    : LightColors.leftOperatorColor,
                text: buttons[index]);

          /// EQUAL BTN
          case 19:
            return CustomButton(
                buttonTapped: () {
                  controller.equalPressed();
                },
                color: themeController.isDark
                    ? DarkColors.btnBgColor
                    : LightColors.btnBgColor,
                textColor: themeController.isDark
                    ? DarkColors.leftOperatorColor
                    : LightColors.leftOperatorColor,
                text: buttons[index]);

          default:
            return CustomButton(
                buttonTapped: () {
                  controller.onBtnTapped(buttons, index);
                },
                color: themeController.isDark
                    ? DarkColors.btnBgColor
                    : LightColors.btnBgColor,
                textColor: isOperator(buttons[index])
                    ? LightColors.operatorColor
                    : themeController.isDark
                        ? Colors.white
                        : Colors.black,
                text: buttons[index]);
        }
      },
    ),
  );
}
