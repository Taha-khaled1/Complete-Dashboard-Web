import 'package:dashboard/presentation_layer/resource/MangeColor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../application_layer/sherdfunction/photoslected.dart';

void customdialog(TextTheme textTheme, catogeryControllerImp) {
  Get.defaultDialog(
    title: 'choice image',
    content: Container(
      width: 300,
      height: 130,
      color: MangerColor.isFavoroteOOff,
      child: Column(
        children: [
          Material(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 1,
            child: ListTile(
              onTap: () async {
                await photoslectedproduct(
                    catogeryControllerImp, ImageSource.camera);
              },
              leading: const Icon(Icons.camera),
              title: const Text(
                'choice from camera',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Material(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 1,
            child: ListTile(
              onTap: () async {
                await photoslectedproduct(
                    catogeryControllerImp, ImageSource.gallery);
              },
              leading: const Icon(Icons.camera),
              title: const Text('choice from gallery',
                  style: TextStyle(color: Colors.black)),
            ),
          ),
        ],
      ),
    ),
    backgroundColor: MangerColor.isFavoroteOOff,
    titleStyle: const TextStyle(color: Colors.black),
  );
}
