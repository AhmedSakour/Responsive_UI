import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/custom_background_container.dart';
import 'package:responsive_dashboard/widget/transaction_history.dart';

import 'my_card_section.dart';

class MyCardTransactionSection extends StatelessWidget {
  const MyCardTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 30,
      child: Column(
        children: const [
          MyCardSection(),
          Divider(
            color: Color(0xFFF1F1F1),
            height: 40,
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}
