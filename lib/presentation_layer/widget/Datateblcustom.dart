// ignore_for_file: file_names, must_be_immutable

import 'package:dashboard/domain_layer/controller/customercontroller.dart';
import 'package:dashboard/presentation_layer/Infowidget/enums/device_type.dart';
import 'package:dashboard/presentation_layer/Infowidget/models/device_info.dart';
import 'package:dashboard/presentation_layer/resource/mangertextstyel.dart';
import 'package:dashboard/presentation_layer/resource/mangesize.dart';
import 'package:dashboard/presentation_layer/screen/sidemenue/customer/widget/datarow.dart';
import 'package:flutter/material.dart';

class DatatablCustom extends StatelessWidget {
  DatatablCustom({
    Key? key,
    required this.textTheme,
    required this.deviceInfo,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    this.controller,
  }) : super(key: key);
  CustomerControllerImp? controller;
  final TextTheme textTheme;
  final DeviceInfo deviceInfo;
  final String text1, text2, text3, text4;

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columnSpacing: MangerSize.defaultPadding,
      columns: [
        DataColumn(
          label: Text(
            text1,
            style: textTheme.subtitle1,
          ),
        ),
        if (deviceInfo.deviceType != DeviceType.Mobile)
          DataColumn(
            label: Text(text2, style: textTheme.subtitle1),
          ),
        DataColumn(
          label: Text(
            text3,
            style: textTheme.subtitle1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        DataColumn(
          label: Text(text4, style: MangerTextstyel.subtitalcustom(textTheme)),
        ),
        DataColumn(
          label:
              Text("Action", style: MangerTextstyel.subtitalcustom(textTheme)),
        ),
      ],
      rows: List.generate(
        controller!.selectedIndex,
        (index) => recentFileDataRowCustomer(textTheme, deviceInfo,
            controller!.customerDatamodel?.data![index], controller!),
      ),
    );
  }
}
