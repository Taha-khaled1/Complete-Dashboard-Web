// ignore_for_file: file_names

import 'package:dashboard/presentation_layer/Infowidget/models/device_info.dart';
import 'package:flutter/material.dart';

class Listrowtext extends StatelessWidget {
  const Listrowtext({
    Key? key,
    required this.deviceInfo,
  }) : super(key: key);

  final DeviceInfo deviceInfo;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        "Statistics",
        style: Theme.of(context).textTheme.headline5!.copyWith(
              color: Colors.grey[200],
            ),
        textAlign: TextAlign.left,
      ),
    );
  }
}
