import 'package:dashboard/data_layer/connectdatabase.dart';
import 'package:dashboard/presentation_layer/resource/mangelinks.dart';

userdeletdata(id) async {
  Curd curd = Curd();
  var respons = await curd.postrequest(
    MangerLinks.userdelete,
    {
      'userid': id.toString(),
    },
  );
  return respons;
}
