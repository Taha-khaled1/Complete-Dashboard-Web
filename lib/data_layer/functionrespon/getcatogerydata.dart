import 'package:dashboard/data_layer/connectdatabase.dart';
import 'package:dashboard/presentation_layer/resource/mangelinks.dart';

catogergetdata() async {
  Curd curd = Curd();
  var respons = await curd.postrequest(
    MangerLinks.catogerdata,
    {},
  );
  return respons;
}
