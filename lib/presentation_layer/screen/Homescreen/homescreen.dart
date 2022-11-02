// ignore_for_file: must_be_immutable, file_names
import 'package:dashboard/domain_layer/controller/MenuController.dart';
import 'package:dashboard/presentation_layer/Infowidget/enums/device_type.dart';
import 'package:dashboard/presentation_layer/resource/mangecolor.dart';
import 'package:dashboard/presentation_layer/screen/Dashboard/Dashboard.dart';
import 'package:dashboard/presentation_layer/screen/Homescreen/componates/SideMenu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Infowidget/ui_components/info_widget.dart';

class Homescreen extends StatelessWidget {
  Homescreen({Key? key}) : super(key: key);
  MenuController controller = Get.put(MenuController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      drawer: const SideMenu(),
      backgroundColor: MangerColor.bgColor,
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          constraints: const BoxConstraints(
            maxWidth: 1600,
          ),
          child: InfoWidget(
            builder: (context, deviceInfo) {
              return Row(
                children: [
                  deviceInfo.deviceType != DeviceType.Desktop
                      ? const SizedBox()
                      : SizedBox(
                          width: deviceInfo.localWidth * 0.23,
                          height: deviceInfo.localHeight,
                          child: const SideMenu(),
                        ),
                  SizedBox(
                    width: deviceInfo.deviceType != DeviceType.Desktop
                        ? deviceInfo.localWidth
                        : deviceInfo.localWidth * 0.72,
                    height: deviceInfo.localHeight,
                    child: const Dashboard(),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
