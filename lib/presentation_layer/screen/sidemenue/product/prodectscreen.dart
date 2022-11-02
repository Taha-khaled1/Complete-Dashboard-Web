import 'package:dashboard/domain_layer/controller/productcontroller.dart';
import 'package:dashboard/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:dashboard/presentation_layer/handlingView/handlingview.dart';
import 'package:dashboard/presentation_layer/resource/mangecolor.dart';
import 'package:dashboard/presentation_layer/widget/AddTo.dart';
import 'package:dashboard/presentation_layer/widget/neumorphism.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

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
          color: MangerColor.secondaryColor,
          child: InfoWidget(
            builder: (context, deviceInfo) {
              return SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AddTo(
                      deviceInfo: deviceInfo,
                      text: 'Add a new dpartment',
                      isbotoomsheet: 3,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    GetBuilder<ProducetControllerImp>(
                      init: ProducetControllerImp(),
                      builder: (controller) {
                        return HandlingDataView(
                          statusRequest: controller.statusRequest,
                          widget: SingleChildScrollView(
                            child: Wrap(
                              children: [
                                for (var data in controller.data)
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: NeumorphismCard(
                                      productcont: controller,
                                      image: data.itemsImage.toString(),
                                      price: data.itemsPrice.toString(),
                                      title: data.itemsName.toString(),
                                      id: data.itemsId,
                                      isScreenfavorit: false,
                                      data: data,
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
