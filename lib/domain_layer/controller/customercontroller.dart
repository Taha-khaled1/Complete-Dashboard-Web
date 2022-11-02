import 'package:dashboard/application_layer/sherdfunction/handling.dart';
import 'package:dashboard/application_layer/sherdfunction/statusrequst.dart';
import 'package:dashboard/data_layer/functionrespon/userdelet.dart';
import 'package:dashboard/data_layer/functionrespon/deleteuser.dart';
import 'package:dashboard/domain_layer/models/customermodels.dart';
import 'package:get/get.dart';

// abstract class CustomerController extends GetxController {}

class CustomerControllerImp extends GetxController {
  int selectedIndex = 0;
  String? id;

  late StatusRequest statusRequest;
  Customerdata? customerDatamodel;
  useralldataget() async {
    statusRequest = StatusRequest.loading;
    var responss = await useralldata();
    statusRequest = handlingData(responss);
    if (StatusRequest.success == statusRequest) {
      if (responss['status'].toString() == 'success') {
        customerDatamodel = Customerdata.fromJson(responss);
        selectedIndex = customerDatamodel!.data!.length;
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
    return responss;
  }

  userdeleted(id) async {
    statusRequest = StatusRequest.loading;
    var responss = await userdeletdata(id);
    statusRequest = handlingData(responss);
    if (StatusRequest.success == statusRequest) {
      if (responss['status'].toString() == 'success') {
        customerDatamodel!.data!
            .removeWhere((element) => element.usersId == id);
        selectedIndex = customerDatamodel!.data!.length;
        Get.snackbar('done deleted', 'deleted users');
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
    return responss;
  }

  @override
  void onInit() {
    super.onInit();
    useralldataget();
  }
}
