// ignore_for_file: camel_case_types

import 'package:dashboard/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:dashboard/presentation_layer/resource/MangeColor.dart';
import 'package:flutter/material.dart';

class transactionscreen extends StatelessWidget {
  const transactionscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  children: const [],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
