import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widget/transaction_header.dart';
import 'package:responsive_dashboard/widget/transcation_item_listview.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHeader(),
        const SizedBox(
          height: 20,
        ),
        Text('13 April 2022',
            style: AppStyles.styleMedium16(context).copyWith(
              color: const Color(0xFFAAAAAA),
            )),
        const SizedBox(
          height: 16,
        ),
        const TransactionItemListView(),
      ],
    );
  }
}
