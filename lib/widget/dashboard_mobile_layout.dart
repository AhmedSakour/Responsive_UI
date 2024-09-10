import 'package:flutter/material.dart';

import 'allExpenses_Invoice_section.dart';
import 'income_section.dart';
import 'mycard_transaction_section.dart';

class DashBoarddMobileLayout extends StatelessWidget {
  const DashBoarddMobileLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          SizedBox(
            height: 25,
          ),
          AllExpenses_Invoice_section(),
          MyCardTransactionSection(),
          IncomeSection(),
        ],
      ),
    );
  }
}
