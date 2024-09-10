import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_images.dart';

import '../models/all_expenses_item_model.dart';
import 'all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final List<AllExpensesItemModel> allExpensesItemModel = const [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        price: '\$20,129',
        date: 'April 2022'),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        price: '\$20,129',
        date: 'April 2022'),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        price: '\$20,129',
        date: 'April 2022'),
  ];
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensesItem(
                isSelect: selectIndex == 0,
                allExpensesItemModel: allExpensesItemModel[0]),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensesItem(
                isSelect: selectIndex == 1,
                allExpensesItemModel: allExpensesItemModel[1]),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensesItem(
                isSelect: selectIndex == 2,
                allExpensesItemModel: allExpensesItemModel[2]),
          ),
        ),
      ],
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectIndex = index;
    });
  }
}
