import 'package:dashboard/domain_layer/controller/calaculatorcontroller.dart';
import 'package:dashboard/domain_layer/controller/themcontroller.dart';
import 'package:dashboard/domain_layer/utilt/colors.dart';
import 'package:flutter/material.dart';

Widget outPutSection(
    ThemeController themeController, CalculateController controller) {
  return Align(
    alignment: Alignment.center,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 40,
          decoration: BoxDecoration(
              color: themeController.isDark
                  ? DarkColors.sheetBgColor
                  : LightColors.sheetBgColor,
              borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    themeController.lightTheme();
                  },
                  child: Icon(
                    Icons.light_mode_outlined,
                    color: themeController.isDark ? Colors.grey : Colors.black,
                    size: 25,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    themeController.darkTheme();
                  },
                  child: Icon(
                    Icons.dark_mode_outlined,
                    color: themeController.isDark ? Colors.white : Colors.grey,
                    size: 25,
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: 550,
          child: Padding(
            padding: const EdgeInsets.only(right: 20, top: 70),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    controller.userInput,
                    style: TextStyle(
                      color:
                          themeController.isDark ? Colors.white : Colors.black,
                      fontSize: 25,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    controller.userOutput,
                    style: TextStyle(
                        color: themeController.isDark
                            ? Colors.white
                            : Colors.black,
                        fontSize: 32),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
