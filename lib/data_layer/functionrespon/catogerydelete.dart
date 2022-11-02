import 'package:dashboard/data_layer/connectdatabase.dart';
import 'package:dashboard/presentation_layer/resource/mangelinks.dart';

catogerydeletdata(id) async {
  Curd curd = Curd();
  var respons = await curd.postrequest(
    MangerLinks.catogerydelete,
    {
      'categories_id': id.toString(),
    },
  );
  return respons;
}
