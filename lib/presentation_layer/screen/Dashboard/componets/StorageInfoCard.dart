// ignore_for_file: file_names

import 'package:dashboard/presentation_layer/resource/mangecolor.dart';
import 'package:dashboard/presentation_layer/resource/mangesize.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class StorageInfoCard extends StatelessWidget {
  const StorageInfoCard({
    Key? key,
    required this.title,
    required this.numOfFiles,
    required this.percent,
  }) : super(key: key);

  final String title;
  final int numOfFiles;
  final double percent;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      margin: const EdgeInsets.only(top: MangerSize.defaultPadding),
      padding: const EdgeInsets.all(MangerSize.defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(
            width: 2, color: MangerColor.primaryColor.withOpacity(0.15)),
        borderRadius: const BorderRadius.all(
          Radius.circular(MangerSize.defaultPadding),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: MangerSize.defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: textTheme.headline6,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  LinearPercentIndicator(
                    barRadius: const Radius.circular(30),
                    animation: true,
                    animationDuration: 1500,
                    lineHeight: 13,
                    percent: percent / 100,
                    progressColor: Colors.deepPurple,
                    backgroundColor: Colors.deepPurple.shade200,
                  )
                ],
              ),
            ),
          ),
          Text(
            "$percent%",
            style: textTheme.subtitle1,
          )
        ],
      ),
    );
  }
}
