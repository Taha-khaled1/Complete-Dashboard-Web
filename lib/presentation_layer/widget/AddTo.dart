// ignore_for_file: file_names

import 'package:dashboard/presentation_layer/Infowidget/enums/device_type.dart';
import 'package:dashboard/presentation_layer/Infowidget/models/device_info.dart';
import 'package:dashboard/presentation_layer/resource/mangesize.dart';
import 'package:dashboard/presentation_layer/screen/sidemenue/customer/widget/bootomshettcatogeris.dart';
import 'package:dashboard/presentation_layer/screen/sidemenue/customer/widget/openBottomSheet.dart';
import 'package:dashboard/presentation_layer/screen/sidemenue/product/widget/bottomsheetforitems.dart';
import 'package:flutter/material.dart';

class AddTo extends StatelessWidget {
  const AddTo({
    Key? key,
    required this.deviceInfo,
    required this.text,
    required this.isbotoomsheet,
  }) : super(key: key);

  final DeviceInfo deviceInfo;
  final String text;
  final int isbotoomsheet;
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: textTheme.subtitle1,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  //
                  if (isbotoomsheet == 1) {
                    bottomSheetforeCustomer(
                        deviceInfo, textTheme, 'Add a new User');
                  } else if (isbotoomsheet == 2) {
                    bottomshetforCatogeris(
                        deviceInfo, textTheme, 'Add a new dpartment');
                  } else {
                    bottomSheetforproduct(
                        deviceInfo, textTheme, 'Add a new User Product', false);
                  }
                },
                icon: const Icon(Icons.add),
                label: const Text("Add New"),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: MangerSize.defaultPadding * 1.5,
                    vertical: MangerSize.defaultPadding /
                        (deviceInfo.deviceType == DeviceType.Mobile ? 2 : 1),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
