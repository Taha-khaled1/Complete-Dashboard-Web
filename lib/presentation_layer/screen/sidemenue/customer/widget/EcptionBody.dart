// ignore_for_file: must_be_immutable, file_names

import 'package:dashboard/presentation_layer/resource/mangertextstyel.dart';
import 'package:flutter/material.dart';

import '../../../../resource/mangecolor.dart';

class EcptionBody extends StatelessWidget {
  EcptionBody({
    Key? key,
    required this.width,
    required this.textTheme,
    this.text1,
    this.text2,
    this.text3,
  }) : super(key: key);
  final double width;
  final TextTheme textTheme;
  String? text1, text2, text3;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 40,
            width: width,
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                'Admin',
                style:
                    MangerTextstyel.textpopmenue(textTheme, MangerColor.sheet),
              ),
            ),
          ),
          SizedBox(
            height: 40,
            width: width,
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                'Delivery',
                style: MangerTextstyel.textpopmenue(
                    textTheme, MangerColor.kTextColorred),
              ),
            ),
          ),
          SizedBox(
            height: 40,
            width: width,
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                'User',
                style: MangerTextstyel.textpopmenue(
                    textTheme, MangerColor.kTextColorpupdeep),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
