// ignore_for_file: file_names

import 'package:dashboard/data_layer/connectdatabase.dart';
import 'package:dashboard/presentation_layer/resource/mangelinks.dart';

useralldata() async {
  Curd curd = Curd();
  var respons = await curd.postrequest(
    MangerLinks.userdata,
    {},
  );
  return respons;
}
