import 'package:dashboard/domain_layer/controller/MenuController.dart';
import 'package:dashboard/presentation_layer/Infowidget/enums/device_type.dart';
import 'package:dashboard/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:dashboard/presentation_layer/resource/mangertextstyel.dart';
import 'package:dashboard/presentation_layer/resource/mangesize.dart';
import 'package:dashboard/presentation_layer/screen/Homescreen/componates/SearchField.dart';
import 'package:dashboard/presentation_layer/screen/Homescreen/componates/caedpicture.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final MenuController controller = Get.put(MenuController());
    TextTheme textTheme = Theme.of(context).textTheme;
    return SizedBox(
      width: double.infinity,
      child: InfoWidget(
        builder: (context, deviceInfo) {
          return SizedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      deviceInfo.deviceType != DeviceType.Desktop
                          ? InkWell(
                              onTap: () => controller.controlMenu(),
                              child: const Icon(
                                Icons.menu,
                                size: 50,
                                color: Colors.white,
                              ),
                            )
                          : const SizedBox(),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: MangerSize.defaultPadding - 6),
                        child: Text('Dashboard',
                            style: MangerTextstyel.whattextstyel(
                                deviceInfo, textTheme)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MangerSize.whatwidth(deviceInfo),
                        child: const SearchField(),
                      ),
                      const ProfileCard(),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
