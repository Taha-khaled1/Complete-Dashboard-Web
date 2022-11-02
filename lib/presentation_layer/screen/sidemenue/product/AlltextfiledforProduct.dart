// ignore_for_file: file_names

import 'package:dashboard/application_layer/sherdfunction/valid.dart';
import 'package:dashboard/domain_layer/controller/productcontroller.dart';
import 'package:dashboard/domain_layer/models/itemsalldata.dart';
import 'package:dashboard/presentation_layer/widget/customtextfild.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class AlltextfiledforProduct extends StatelessWidget {
  const AlltextfiledforProduct({
    Key? key,
    required this.controller,
    required this.data,
  }) : super(key: key);
  final ProducetControllerImp controller;
  final ItemsData? data;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Textfeild(
          initialValue: data?.itemsName.toString(),
          width: 500,
          onsaved: (value) {
            controller.onsavednameproduct(value);
          },
          titel: 'Name En',
          valid: (val) {
            return validInput(val!, 2, 100, 'name');
          },
        ),
        Textfeild(
          initialValue: data?.itemsNameAr.toString(),
          width: 500,
          onsaved: (value) {
            controller.onsavednameproductar(value);
          },
          titel: 'Name Ar',
          valid: (val) {
            return validInput(val!, 2, 100, 'name');
          },
        ),
        Textfeild(
          initialValue: data?.itemsDescrbtion,
          width: 500,
          onsaved: (value) {
            controller.onsavedDescrebtionproduct(value);
          },
          titel: 'Description En',
          valid: (val) {
            return validInput(val!, 4, 400, 'name');
          },
        ),
        Textfeild(
          initialValue: data?.itemsDescrbtionAr,
          width: 500,
          onsaved: (value) {
            controller.onsavedDescrebtionproductar(value);
          },
          titel: 'Description AR',
          valid: (val) {
            return validInput(val!, 4, 400, 'name');
          },
        ),
        Row(
          children: [
            Expanded(
              child: Textfeild(
                initialValue: data?.itemsCount.toString(),
                width: 500,
                onsaved: (value) {
                  controller.onsavedquantityproduct(value);
                },
                titel: 'Quantity',
                valid: (val) {
                  return validInput(val!, 1, 50, 'name');
                },
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Textfeild(
                //  initialValue: data?.itemsDiscount.toString(),
                width: 500,
                onsaved: (value) {
                  controller.onsaveddiscountproduct(value);
                },
                titel: 'Discount',
                valid: (val) {
                  return validInput(val!, 1, 4, 'price');
                },
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: GetBuilder<ProducetControllerImp>(
                builder: (controller) {
                  return CheckboxListTile(
                    title: const Text('Active or No'),
                    value: controller.isChecked,
                    onChanged: (bool? value) {
                      controller.ischeck(value!);
                    },
                  );
                },
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Textfeild(
                initialValue: data?.itemsPrice.toString(),
                width: 500,
                onsaved: (value) {
                  controller.onsavedPriceproduct(value);
                },
                titel: 'Price',
                valid: (val) {
                  return validInput(val!, 1, 20, 'price');
                },
              ),
            )
          ],
        ),
      ],
    );
  }
}
