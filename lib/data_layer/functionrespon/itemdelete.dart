import 'package:dashboard/presentation_layer/resource/mangelinks.dart';

import '../connectdatabase.dart';

productdeleted(id, nameimage) async {
  Curd curd = Curd();
  var respons = await curd.postrequest(
    MangerLinks.productdeleted,
    {
      'items_id': id.toString(),
      'items_image': nameimage.toString(),
    },
  );
  return respons;
}
