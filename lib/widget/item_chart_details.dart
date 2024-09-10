import 'package:flutter/material.dart';

import '../models/item_chart_model.dart';
import '../utils/app_styles.dart';

class ItemChartDetails extends StatelessWidget {
  const ItemChartDetails({super.key, required this.itemChartModel});
  final ItemChartModel itemChartModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemChartModel.color,
          shape: const CircleBorder(),
        ),
      ),
      title: Text(
        itemChartModel.title,
        style: AppStyles.styleRegular16(context),
        maxLines: 2,
      ),
      trailing: Text(
        itemChartModel.percent,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
