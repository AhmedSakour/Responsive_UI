import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/widget/transaction_item.dart';

class TransactionItemListView extends StatelessWidget {
  const TransactionItemListView({super.key});
  static const List<TransactionModel> items = [
    TransactionModel(
        title: 'Cash Withdrawal',
        date: '13 Apr, 2022',
        price: '\$20,129',
        isWithdraw: true),
    TransactionModel(
        title: 'Landing Page project',
        date: '13 Apr, 2022 at 3:30 PM',
        price: '\$2,000',
        isWithdraw: false),
    TransactionModel(
        title: 'Juni Mobile App project',
        date: '13 Apr, 2022',
        price: '\$20,129',
        isWithdraw: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) {
        return TransactionItem(transactionModel: e);
      }).toList(),
    );
  }
}
