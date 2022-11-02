import 'package:dashboard/data_layer/connectdatabase.dart';
import 'package:dashboard/presentation_layer/resource/mangelinks.dart';

itemsgetdata() async {
  Curd curd = Curd();
  var respons = await curd.postrequest(
    MangerLinks.itemsalldata,
    {},
  );
  return respons;
}
