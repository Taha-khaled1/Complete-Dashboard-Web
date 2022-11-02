// ignore_for_file: file_names

import 'package:dashboard/presentation_layer/resource/mangecolor.dart';
import 'package:dashboard/presentation_layer/resource/mangesize.dart';
import 'package:dashboard/presentation_layer/screen/Dashboard/componets/StorageInfoCard.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StarageDetails extends StatelessWidget {
  const StarageDetails({
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Most Sold Items", style: textTheme.headline5),
          const SizedBox(height: MangerSize.defaultPadding),
          Container(
            // color: Colors.grey,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  MangerColor.isFavoroteOOff,
                  Colors.teal,
                  MangerColor.sheet,
                  MangerColor.isFavoroteOOff,
                ],
              ),
            ),
            // color: Colors.grey,
            child: const Circlechart(),
          ),
          const StorageInfoCard(
            title: "iphone 13 pro",
            numOfFiles: 1328,
            percent: 80,
          ),
          const StorageInfoCard(
            title: "laptop m6800",
            numOfFiles: 1328,
            percent: 70,
          ),
          const StorageInfoCard(
            title: "plastion 4",
            numOfFiles: 1328,
            percent: 65,
          ),
          const StorageInfoCard(
            title: "Canon PIXMA",
            numOfFiles: 140,
            percent: 40,
          ),
        ],
      ),
    );
  }
}

List<GDPData> getChartData() {
  final List<GDPData> chartData = [
    GDPData('iphone 13', 2000),
    GDPData('laptop M600', 900),
    GDPData('plastion 4', 750),
    GDPData('Canon PIXMA', 700),
  ];
  return chartData;
}

class GDPData {
  GDPData(this.continent, this.gdp);
  final String continent;
  final int gdp;
}

class Circlechart extends StatefulWidget {
  const Circlechart({Key? key}) : super(key: key);

  @override
  State<Circlechart> createState() => _CirclechartState();
}

class _CirclechartState extends State<Circlechart> {
  late List<GDPData> _chartData;

  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SfCircularChart(
        legend:
            Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
        tooltipBehavior: _tooltipBehavior,
        series: <CircularSeries>[
          PieSeries<GDPData, String>(
              dataSource: _chartData,
              xValueMapper: (GDPData data, _) => data.continent,
              yValueMapper: (GDPData data, _) => data.gdp,
              dataLabelSettings: const DataLabelSettings(isVisible: true),
              enableTooltip: true,
              strokeColor: Colors.white
              // maximumValue: 40000,
              )
        ],
      ),
    );
  }
}
