import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: SizedBox(
        child: PieChart(PieChartData(
            pieTouchData: PieTouchData(
              enabled: true,
              touchCallback: (p0, p1) {
                activeIndex = p1?.touchedSection?.touchedSectionIndex ?? -1;

                setState(() {});
              },
            ),
            sectionsSpace: activeIndex != -1 ? 10 : 0,
            sections: [
              PieChartSectionData(
                color: const Color(0xff208CC8),
                value: 40,
                showTitle: false,
                radius: activeIndex == 0 ? 60 : 50,
              ),
              PieChartSectionData(
                color: const Color(0xff4EB7F2),
                value: 25,
                showTitle: false,
                radius: activeIndex == 1 ? 60 : 50,
              ),
              PieChartSectionData(
                color: const Color(0xff064061),
                value: 20,
                showTitle: false,
                radius: activeIndex == 2 ? 60 : 50,
              ),
              PieChartSectionData(
                color: const Color(0xffE2DECD),
                value: 22,
                showTitle: false,
                radius: activeIndex == 3 ? 60 : 50,
              ),
            ])),
      ),
    );
  }
}
