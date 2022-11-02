import 'package:dashboard/presentation_layer/Infowidget/enums/device_type.dart';
import 'package:dashboard/presentation_layer/Infowidget/models/device_info.dart';
import 'package:flutter/material.dart';

class MangerTextstyel {
  static TextStyle whattextstyel(DeviceInfo iswhat, TextTheme textTheme) {
    if (iswhat.deviceType == DeviceType.Desktop) {
      return textTheme.headline3!.copyWith(color: Colors.grey[200]);
    } else if (iswhat.deviceType == DeviceType.Tablet) {
      return textTheme.headline4!.copyWith(color: Colors.grey[200]);
    } else {
      return textTheme.headline5!.copyWith(color: Colors.grey[200]);
    }
  }

  static TextStyle statusorder(String textstu, TextTheme textTheme) {
    if (textstu == 'Completed') {
      return textTheme.subtitle1!.copyWith(color: Colors.green[300]);
    } else if (textstu == 'Ongoing') {
      return textTheme.subtitle1!
          .copyWith(color: const Color.fromARGB(255, 165, 134, 218));
    } else {
      return textTheme.subtitle1!.copyWith(color: Colors.red[300]);
    }
  }

  static TextStyle subtitalcustom(TextTheme textTheme) {
    return textTheme.subtitle1!.copyWith(
      overflow: TextOverflow.ellipsis,
    );
  }

  static TextStyle textpopmenue(TextTheme textTheme, Color color) {
    return textTheme.subtitle1!.copyWith(
      color: color,
      overflow: TextOverflow.ellipsis,
    );
  }
}
