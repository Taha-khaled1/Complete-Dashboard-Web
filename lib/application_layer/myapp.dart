import 'package:dashboard/application_layer/themdatamain.dart';
import 'package:dashboard/domain_layer/mybinding/calcualtorbinding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getPages.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      getPages: getPage,
      initialBinding: MyBindings(),
    );
  }
}
