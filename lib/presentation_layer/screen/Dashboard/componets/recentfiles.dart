import 'package:dashboard/presentation_layer/Infowidget/models/device_info.dart';
import 'package:dashboard/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:dashboard/presentation_layer/resource/mangecolor.dart';
import 'package:dashboard/presentation_layer/resource/mangertextstyel.dart';
import 'package:dashboard/presentation_layer/resource/mangesize.dart';
import 'package:dashboard/presentation_layer/screen/Dashboard/componets/demo.dart';
import 'package:flutter/material.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.all(MangerSize.defaultPadding),
      decoration: const BoxDecoration(
        color: MangerColor.secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: InfoWidget(
        builder: (context, deviceInfo) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Latest Order",
                  style: textTheme.headline6,
                ),
                SizedBox(
                  width: double.infinity,
                  child: DataTable(
                    columnSpacing: MangerSize.defaultPadding,
                    //minWidth: 600,
                    columns: [
                      DataColumn(
                        label: Text(
                          "Products",
                          style: textTheme.subtitle1,
                        ),
                      ),
                      DataColumn(
                        label: Text("Date",
                            style: MangerTextstyel.subtitalcustom(textTheme)),
                      ),
                      DataColumn(
                        label: Text("User name",
                            style: MangerTextstyel.subtitalcustom(textTheme)),
                      ),
                      DataColumn(
                        label: Text("Status",
                            style: MangerTextstyel.subtitalcustom(textTheme)),
                      ),
                      // if (deviceInfo.deviceType != DeviceType.Mobile)
                      //   DataColumn(
                      //     label: Text("Action",
                      //         style: MangerTextstyel.subtitalcustom(textTheme)),
                      //   ),
                    ],
                    rows: List.generate(
                      demoRecentFiles.length,
                      (index) => recentFileDataRow(
                          demoRecentFiles[index], textTheme, deviceInfo),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

DataRow recentFileDataRow(
    RecentFile fileInfo, TextTheme textTheme, DeviceInfo deviceInfo) {
  return DataRow(
    cells: [
      DataCell(
        Text(fileInfo.title!, style: MangerTextstyel.subtitalcustom(textTheme)),
      ),
      DataCell(Text(fileInfo.date!,
          style: MangerTextstyel.subtitalcustom(textTheme))),
      DataCell(Text(fileInfo.nameuser!,
          style: MangerTextstyel.subtitalcustom(textTheme))),
      DataCell(
        Text(fileInfo.size!,
            style: MangerTextstyel.statusorder(fileInfo.size!, textTheme)),
      ),
      // if (deviceInfo.deviceType != DeviceType.Mobile)
      //   DataCell(
      //     IconButton(
      //       onPressed: () {},
      //       icon: Icon(
      //         Icons.details,
      //         color: Colors.teal,
      //       ),
      //     ),
      //   ),
    ],
  );
}
