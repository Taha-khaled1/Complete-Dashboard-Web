// ignore_for_file: file_names

import 'package:dashboard/domain_layer/controller/customercontroller.dart';
import 'package:dashboard/presentation_layer/Infowidget/models/device_info.dart';
import 'package:dashboard/presentation_layer/handlingView/handlingview.dart';
import 'package:dashboard/presentation_layer/widget/Datateblcustom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Datarowforusers extends StatelessWidget {
  const Datarowforusers({
    Key? key,
    required this.textTheme,
    required this.deviceInfo,
  }) : super(key: key);

  final TextTheme textTheme;
  final DeviceInfo deviceInfo;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomerControllerImp>(
      init: CustomerControllerImp(),
      builder: (controller) {
        return HandlingDataView(
          statusRequest: controller.statusRequest,
          widget: DatatablCustom(
            textTheme: textTheme,
            deviceInfo: deviceInfo,
            controller: controller,
            text1: 'User name',
            text2: 'Datatime',
            text3: 'User email',
            text4: 'User id',
          ),
        );
      },
    );
  }
}
