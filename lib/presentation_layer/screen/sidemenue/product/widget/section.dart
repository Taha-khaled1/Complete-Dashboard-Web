// ignore_for_file: must_be_immutable, camel_case_types

import 'package:dashboard/domain_layer/controller/catogerycontroller.dart';
import 'package:dashboard/domain_layer/controller/productcontroller.dart';
import 'package:dashboard/domain_layer/models/catogerymodel.dart';
import 'package:dashboard/presentation_layer/Infowidget/ui_components/info_widget.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class section extends StatelessWidget {
  section({
    Key? key,
    required this.controllerImp,
    required this.textTheme,
  }) : super(key: key);
  final TextTheme textTheme;
  ProducetControllerImp controllerImp;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 30,
      child: SizedBox(
        width: 200,
        child: InfoWidget(
          builder: (context, deviceInfo) {
            return GetBuilder<CatogeryControllerImp>(
              init: CatogeryControllerImp(),
              builder: (controller) {
                return DropdownButton(
                  hint: controller.drobdownvar == null
                      ? const Text('product section')
                      : Text(
                          controller.drobdownvar!,
                          style: const TextStyle(color: Colors.blue),
                        ),
                  isExpanded: true,
                  iconSize: 30.0,
                  style: const TextStyle(color: Colors.blue),
                  items: controller.data.map(
                    (val) {
                      return DropdownMenuItem<CatogeryDatamodel>(
                        value: val,
                        child: Text(val.categoriesName!),
                      );
                    },
                  ).toList(),
                  onChanged: (val) {
                    controller.dropdownButtonsetstate(val!.categoriesName!);
                    controllerImp.idsection = val.categoriesId!;
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
