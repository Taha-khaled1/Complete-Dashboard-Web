import 'package:dashboard/domain_layer/controller/catogerycontroller.dart';
import 'package:dashboard/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:dashboard/presentation_layer/handlingView/handlingview.dart';
import 'package:dashboard/presentation_layer/resource/MangeColor.dart';
import 'package:dashboard/presentation_layer/screen/Dashboard/componets/FileInfoCard.dart';
import 'package:dashboard/presentation_layer/widget/AddTo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Catogeryscreen extends StatelessWidget {
  const Catogeryscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          constraints: const BoxConstraints(
            maxWidth: 1400,
            maxHeight: 1200,
          ),
          width: double.infinity,
          height: double.infinity,
          color: MangerColor.bgColor,
          child: InfoWidget(
            builder: (context, deviceInfo) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    AddTo(
                      deviceInfo: deviceInfo,
                      text: 'Add a new dpartment',
                      isbotoomsheet: 2,
                    ),
                    GetBuilder<CatogeryControllerImp>(
                      init: CatogeryControllerImp(),
                      builder: (controller) {
                        return HandlingDataView(
                          statusRequest: controller.statusRequest,
                          widget: SingleChildScrollView(
                            child: Wrap(
                              direction: Axis.horizontal,
                              children: [
                                for (var i in controller.data)
                                  Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: FileInfoCard(
                                      height: 210,
                                      width: 260,
                                      controllerImp: controller,
                                      issvg: true,
                                      color: MangerColor.secondaryColor,
                                      id: i.categoriesId.toString(),
                                      svg: i.categoriesImages.toString(),
                                      titel: i.categoriesName.toString(),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
