import 'package:dashboard/application_layer/sherdfunction/statusrequst.dart';
import 'package:flutter/material.dart';
// import 'widgets/404Error.dart';
// import 'widgets/NoConnection.dart';
// import 'widgets/SomethingWrong.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? const Center(
            child: SizedBox(child: Text('Islodding')),
          )
        : statusRequest == StatusRequest.offlinefailure
            ? const SizedBox(width: 500, height: 500, child: Text('noconnect'))
            : statusRequest == StatusRequest.serverfailure
                ? const SizedBox(
                    width: 500, height: 500, child: Text('errorserver'))
                : statusRequest == StatusRequest.failure
                    ? const SizedBox(
                        width: 500, height: 500, child: Text('faluirserver'))
                    : widget;
  }
}
