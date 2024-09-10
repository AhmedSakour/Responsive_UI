import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeChartContainDetails extends StatefulWidget {
  const IncomeChartContainDetails({super.key});

  @override
  State<IncomeChartContainDetails> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChartContainDetails> {
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
                titlePositionPercentageOffset: activeIndex == 0 ? 1.4 : null,
                color: const Color(0xff208CC8),
                title: activeIndex == 0 ? 'Design service' : '40%',
                titleStyle: activeIndex == 0
                    ? AppStyles.styleMedium16(context)
                    : AppStyles.styleMedium16(context)
                        .copyWith(color: Colors.white),
                value: 40,
                showTitle: true,
                radius: activeIndex == 0 ? 60 : 50,
              ),
              PieChartSectionData(
                titlePositionPercentageOffset: activeIndex == 1 ? 2 : null,
                color: const Color(0xff4EB7F2),
                title: activeIndex == 1 ? 'Design product' : '25%',
                titleStyle: activeIndex == 1
                    ? AppStyles.styleMedium16(context)
                    : AppStyles.styleMedium16(context)
                        .copyWith(color: Colors.white),
                value: 25,
                showTitle: true,
                radius: activeIndex == 1 ? 60 : 50,
              ),
              PieChartSectionData(
                titlePositionPercentageOffset: activeIndex == 2 ? 1.4 : null,
                color: const Color(0xff064061),
                title: activeIndex == 2 ? 'Product royalti' : '20%',
                titleStyle: activeIndex == 2
                    ? AppStyles.styleMedium16(context)
                    : AppStyles.styleMedium16(context)
                        .copyWith(color: Colors.white),
                value: 20,
                showTitle: true,
                radius: activeIndex == 2 ? 60 : 50,
              ),
              PieChartSectionData(
                titlePositionPercentageOffset: activeIndex == 3 ? 1.3 : null,
                title: activeIndex == 3 ? 'Other' : '22%',
                titleStyle: activeIndex == 3
                    ? AppStyles.styleMedium16(context)
                    : AppStyles.styleMedium16(context)
                        .copyWith(color: Colors.white),
                color: const Color(0xffE2DECD),
                value: 22,
                showTitle: true,
                radius: activeIndex == 3 ? 60 : 50,
              ),
            ])),
      ),
    );
  }
}
