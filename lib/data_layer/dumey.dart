import 'package:dashboard/presentation_layer/resource/mangecolor.dart';
import 'package:flutter/material.dart';

class CloudStorageInfo {
  final String? svgSrc, title, totalStorage;
  final int? numOfFiles, percentage;
  final Color? color;

  CloudStorageInfo({
    this.svgSrc,
    this.title,
    this.totalStorage,
    this.numOfFiles,
    this.percentage,
    this.color,
  });
}

List<CloudStorageInfo> demoMyFiles = [
  CloudStorageInfo(
    title: "Total Users",
    numOfFiles: 728,
    svgSrc: "assets/icons/man.png",
    totalStorage: "1.9GB",
    color: MangerColor.primaryColor,
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Total Order",
    numOfFiles: 1328,
    svgSrc: "assets/icons/order.png",
    totalStorage: "2.9GB",
    color: const Color(0xFFFFA113),
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Total Products",
    numOfFiles: 465,
    svgSrc: "assets/icons/products.png",
    totalStorage: "1GB",
    color: const Color(0xFFA4CDFF),
    percentage: 10,
  ),
  CloudStorageInfo(
    title: "Total Sales",
    numOfFiles: 5328,
    svgSrc: "assets/icons/profit-growth.png",
    totalStorage: "7.3GB",
    color: const Color(0xFF007EE5),
    percentage: 78,
  ),
];
