import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/quick_invo.dart';

import 'all_expenses.dart';

class AllExpenses_Invoice_section extends StatelessWidget {
  const AllExpenses_Invoice_section({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: const [
          AllExpenses(),
          SizedBox(
            height: 24,
          ),
          QuickInvoice(),
        ],
      ),
    );
  }
}
