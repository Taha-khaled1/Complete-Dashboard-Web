// ignore_for_file: file_names, must_be_immutable

import 'package:dashboard/domain_layer/controller/productcontroller.dart';
import 'package:dashboard/presentation_layer/resource/MangeColor.dart';
import 'package:dashboard/presentation_layer/widget/custombutten.dart';
import 'package:dashboard/presentation_layer/widget/customdialogforcatogery.dart';
import 'package:flutter/material.dart';

class Towbutton extends StatelessWidget {
  Towbutton({
    Key? key,
    required this.controllerImp,
    required this.formkey,
    required this.isupdata,
    this.id,
    this.image,
  }) : super(key: key);
  final ProducetControllerImp controllerImp;
  final GlobalKey<FormState> formkey;
  final bool isupdata;
  int? id;
  String? image;
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Buttenwidget(
          width: 250,
          haigh: 70,
          color: MangerColor.kTextColorteal,
          text: 'Uplod Image',
          press: () {
            customdialog(textTheme, controllerImp);
          },
        ),
        Buttenwidget(
          width: 250,
          haigh: 70,
          color: MangerColor.kTextColorteal,
          text: 'Add Product',
          press: () {
            if (formkey.currentState!.validate()) {
              formkey.currentState!.save();
              if (isupdata == true) {
                controllerImp.productupdata(id, image);
              } else {
                controllerImp.insertnewProduct();
              }
            }
          },
        ),
      ],
    );
  }
}
