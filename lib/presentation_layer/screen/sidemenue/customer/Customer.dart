// ignore_for_file: file_names

import 'package:dashboard/domain_layer/controller/customercontroller.dart';
import 'package:dashboard/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:dashboard/presentation_layer/resource/mangecolor.dart';
import 'package:dashboard/presentation_layer/screen/sidemenue/customer/widget/datarowforusers.dart';
import 'package:dashboard/presentation_layer/widget/AddTo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Customer extends StatelessWidget {
  Customer({Key? key}) : super(key: key);
  final CustomerControllerImp controller = Get.put(CustomerControllerImp());
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: MangerColor.bgColor,
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          constraints: const BoxConstraints(
            maxWidth: 1400,
            maxHeight: 900,
          ),
          width: double.infinity,
          height: double.infinity,
          color: MangerColor.secondaryColor,
          child: InfoWidget(
            builder: (context, deviceInfo) {
              return SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    AddTo(
                      isbotoomsheet: 1,
                      deviceInfo: deviceInfo,
                      text: 'Add a new user',
                    ),
                    Datarowforusers(
                        textTheme: textTheme, deviceInfo: deviceInfo),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
