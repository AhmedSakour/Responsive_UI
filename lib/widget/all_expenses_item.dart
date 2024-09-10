import 'package:flutter/material.dart';

import 'package:responsive_dashboard/widget/active_inactive_all_expenses_item.dart';

import '../models/all_expenses_item_model.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.allExpensesItemModel, required this.isSelect});
  final AllExpensesItemModel allExpensesItemModel;
  final bool isSelect;

  @override
  Widget build(BuildContext context) {
    return isSelect
        ? ActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel)
        : InActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel);
  }
}
