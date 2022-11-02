// ignore_for_file: file_names

import 'package:dashboard/domain_layer/controller/customercontroller.dart';
import 'package:dashboard/domain_layer/models/customermodels.dart';
import 'package:dashboard/presentation_layer/Infowidget/enums/device_type.dart';
import 'package:dashboard/presentation_layer/Infowidget/models/device_info.dart';
import 'package:dashboard/presentation_layer/resource/mangecolor.dart';
import 'package:dashboard/presentation_layer/resource/mangertextstyel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

DataRow recentFileDataRowCustomer(TextTheme textTheme, DeviceInfo deviceInfo,
    CustomerDatamodel? data, CustomerControllerImp x) {
  return DataRow(
    cells: [
      DataCell(
        Text(data!.usersName!,
            style: MangerTextstyel.subtitalcustom(textTheme)),
      ),
      if (deviceInfo.deviceType != DeviceType.Mobile)
        DataCell(Text(data.usersTime!,
            style: MangerTextstyel.subtitalcustom(textTheme))),
      DataCell(
        Text(data.usersEmail!,
            style: MangerTextstyel.subtitalcustom(textTheme)),
      ),
      DataCell(Text(data.usersId!.toString(),
          style: MangerTextstyel.subtitalcustom(textTheme))),
      DataCell(
        PopupMenuButton(
          icon: const Icon(
            Icons.more_vert,
            color: MangerColor.kTextColorteal,
          ),
          itemBuilder: (context) {
            return [
              PopupMenuItem(
                child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Text(
                    'Updata User',
                    style: MangerTextstyel.textpopmenue(
                        textTheme, MangerColor.kTextColorgreen),
                  ),
                ),
              ),
              PopupMenuItem(
                child: InkWell(
                  onTap: () {
                    x.userdeleted(data.usersId);
                    Get.back();
                  },
                  child: Text(
                    'Delete user',
                    style: MangerTextstyel.textpopmenue(
                        textTheme, MangerColor.kTextColorred),
                  ),
                ),
              ),
            ];
          },
        ),
      ),
    ],
  );
}
