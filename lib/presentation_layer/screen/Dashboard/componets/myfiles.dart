import 'package:dashboard/presentation_layer/Infowidget/models/device_info.dart';
import 'package:dashboard/presentation_layer/resource/mangesize.dart';
import 'package:dashboard/presentation_layer/screen/Dashboard/componets/FileInfoCardGridView.dart';
import 'package:dashboard/presentation_layer/screen/Dashboard/componets/Listrowtext.dart';
import 'package:flutter/material.dart';

class Myfiles extends StatelessWidget {
  const Myfiles({
    Key? key,
    required this.deviceInfo,
  }) : super(key: key);
  final DeviceInfo deviceInfo;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Listrowtext(deviceInfo: deviceInfo),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding:
                EdgeInsets.symmetric(horizontal: MangerSize.defaultPadding),
            child: FileInfoCardGridView(),
          ),
        ],
      ),
    );
  }
}
