// ignore_for_file: file_names

import 'package:dashboard/data_layer/dumey.dart';
import 'package:dashboard/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:dashboard/presentation_layer/resource/mangecolor.dart';
import 'package:dashboard/presentation_layer/resource/mangesize.dart';
import 'package:dashboard/presentation_layer/screen/Dashboard/componets/FileInfoCard.dart';
import 'package:flutter/material.dart';

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InfoWidget(
      builder: (context, deviceInfo) {
        return GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: demoMyFiles.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: MangerSize.whatcrosscount(deviceInfo),
            crossAxisSpacing: MangerSize.defaultPadding,
            mainAxisSpacing: MangerSize.defaultPadding,
            childAspectRatio: MangerSize.whatethischildAspectRatio(deviceInfo),
          ),
          itemBuilder: (context, index) => FileInfoCard(
            height: 220,
            width: 260,
            color: MangerColor.secondaryColor,
            id: demoMyFiles[index].numOfFiles.toString(),
            svg: demoMyFiles[index].svgSrc.toString(),
            titel: demoMyFiles[index].title.toString(),
          ),
        );
      },
    );
  }
}
