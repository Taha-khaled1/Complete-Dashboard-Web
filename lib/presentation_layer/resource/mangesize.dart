import 'package:dashboard/presentation_layer/Infowidget/enums/device_type.dart';
import 'package:dashboard/presentation_layer/Infowidget/models/device_info.dart';

class MangerSize {
  static double whatethischildAspectRatio(DeviceInfo iswhat) {
    if (iswhat.screenWidth > 1230) {
      return 0.92;
    } else if (iswhat.screenWidth > 1065) {
      return 0.8;
    } else if (iswhat.screenWidth > 965) {
      return 0.83;
    } else if (iswhat.screenWidth > 890) {
      return 1;
    } else if (iswhat.deviceType == DeviceType.Tablet) {
      return 0.94;
    } else {
      return 1;
    }
  }

  static const double defaultPadding = 16.0;
  static double whatwidth(DeviceInfo iswhat) {
    if (iswhat.deviceType == DeviceType.Desktop) {
      return 270;
    } else if (iswhat.deviceType == DeviceType.Tablet) {
      return 150;
    } else {
      return 60;
    }
  }

  static int whatcrosscount(DeviceInfo iswhat) {
    if (iswhat.screenWidth > 1230) {
      return 3;
    } else if (iswhat.screenWidth > 1065) {
      return 2;
    } else if (iswhat.screenWidth > 900) {
      return 3;
    } else if (iswhat.screenWidth > 850) {
      return 3;
    } else if (iswhat.deviceType == DeviceType.Tablet) {
      return 3;
    } else {
      return 2;
    }
  }

  static int whatcrosscountforProduct(DeviceInfo iswhat) {
    if (iswhat.screenWidth > 1230) {
      return 4;
    } else if (iswhat.screenWidth > 1065) {
      return 4;
    } else if (iswhat.screenWidth > 900) {
      return 3;
    } else if (iswhat.screenWidth > 850) {
      return 3;
    } else if (iswhat.deviceType == DeviceType.Tablet) {
      return 2;
    } else {
      return 2;
    }
  }
}
