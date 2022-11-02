import 'package:dashboard/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:dashboard/presentation_layer/resource/mangecolor.dart';
import 'package:dashboard/presentation_layer/resource/mangesize.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: MangerSize.defaultPadding / 2),
      padding: const EdgeInsets.symmetric(
        horizontal: MangerSize.defaultPadding / 2,
        vertical: MangerSize.defaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: MangerColor.secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.white10),
      ),
      child: InfoWidget(
        builder: (context, deviceInfo) {
          return Row(
            children: [
              Image.asset(
                "assets/images/man.png",
                height: 40,
              ),
              const Icon(Icons.keyboard_arrow_down),
            ],
          );
        },
      ),
    );
  }
}
