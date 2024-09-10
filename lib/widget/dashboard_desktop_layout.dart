import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/custom_drawer.dart';

import 'allExpenses_Invoice_section.dart';
import 'income_section.dart';
import 'mycard_transaction_section.dart';

class DashBoardDeskTopLayout extends StatelessWidget {
  const DashBoardDeskTopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: CustomDrawer()),
        const SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    const Expanded(
                      flex: 2,
                      child: AllExpenses_Invoice_section(),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    Expanded(
                        child: Column(
                      children: const [
                        MyCardTransactionSection(),
                        Expanded(child: IncomeSection()),
                      ],
                    )),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
