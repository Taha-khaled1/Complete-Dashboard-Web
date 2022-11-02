// ignore_for_file: file_names

import 'package:dashboard/presentation_layer/Infowidget/enums/device_type.dart';
import 'package:dashboard/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:dashboard/presentation_layer/resource/mangecolor.dart';
import 'package:dashboard/presentation_layer/screen/Dashboard/componets/Header.dart';
import 'package:dashboard/presentation_layer/screen/Dashboard/componets/Myfiles.dart';
import 'package:dashboard/presentation_layer/screen/Dashboard/componets/StarageDetails.dart';
import 'package:dashboard/presentation_layer/screen/Dashboard/componets/recentfiles.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: InfoWidget(
        builder: (context, deviceInfo) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                  child: Header(),
                ),
                // SizedBox(
                //   height: MangerSize.defaultPadding - 10,
                // ),
                Row(
                  children: [
                    SizedBox(
                      width: deviceInfo.deviceType != DeviceType.Desktop
                          ? deviceInfo.localWidth
                          : deviceInfo.localWidth * 0.65,
                      child: Column(
                        children: [
                          Myfiles(
                            deviceInfo: deviceInfo,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: RecentFiles(),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          deviceInfo.deviceType != DeviceType.Desktop
                              ? const StarageDetails()
                              : const SizedBox(),
                        ],
                      ),
                    ),
                    deviceInfo.deviceType != DeviceType.Desktop
                        ? const SizedBox()
                        : Container(
                            // height: 760,
                            width: deviceInfo.localWidth * 0.35,
                            color: MangerColor.secondaryColor,
                            child: const StarageDetails(),
                          ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
