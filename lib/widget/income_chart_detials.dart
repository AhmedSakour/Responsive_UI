import 'package:flutter/material.dart';

import '../models/item_chart_model.dart';
import 'item_chart_details.dart';

class IncomeChartDetails extends StatelessWidget {
  const IncomeChartDetails({super.key});
  static const List<ItemChartModel> items = [
    ItemChartModel(
      title: 'Design service',
      percent: '40%',
      color: Color(0xFF208BC7),
    ),
    ItemChartModel(
      title: 'Design product',
      percent: '25%',
      color: Color(0xFF4DB7F2),
    ),
    ItemChartModel(
      title: 'Product royalti',
      percent: '20%',
      color: Color(0xFF064060),
    ),
    ItemChartModel(
      title: 'Other',
      percent: '22%',
      color: Color(0xFFE2DECD),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        children: items.map((e) {
      return ItemChartDetails(itemChartModel: e);
    }).toList());
  }
}
