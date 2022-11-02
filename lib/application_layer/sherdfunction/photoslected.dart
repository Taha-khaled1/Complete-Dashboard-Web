import 'dart:io';
import 'package:dashboard/domain_layer/controller/catogerycontroller.dart';
import 'package:dashboard/domain_layer/controller/productcontroller.dart';
import 'package:dashboard/presentation_layer/screen/sidemenue/customer/widget/bootomshettcatogeris.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

photoslected(
    CatogeryControllerImp catogeryControllerImp, ImageSource source) async {
  XFile? xFil = await picker.pickImage(source: source);
  if (xFil != null) {
    catogeryControllerImp.myfil = File(xFil.path);
    catogeryControllerImp.x = true;
    catogeryControllerImp.justupdata();
    Get.back();
  } else {
    const SizedBox(
      child: Text('Prudect issue'),
    );
  }
}

/////////
photoslectedproduct(
    ProducetControllerImp catogeryControllerImp, ImageSource source) async {
  XFile? xFil = await picker.pickImage(source: source);
  if (xFil != null) {
    catogeryControllerImp.myfil = File(xFil.path);

    Get.back();
  } else {
    const SizedBox(
      child: Text('Prudect issue'),
    );
  }
}
