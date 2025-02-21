import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/quick_invoice_form.dart';

import '../utils/app_styles.dart';
import 'latest_transaction_listview.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        const LatestTransactionListView(),
        const Divider(
          height: 48,
        ),
        const QucikInvoiceForm(),
      ],
    );
  }
}
