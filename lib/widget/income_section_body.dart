import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

import 'income_chart.dart';
import 'income_chart_contain_details.dart';
import 'income_chart_detials.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return width > SizeConfig.desktop + 64 && width < 1400
        ? const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: IncomeChartContainDetails(),
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Expanded(child: IncomeChart()),
              Expanded(flex: 2, child: IncomeChartDetails()),
            ],
          );
  }
}
