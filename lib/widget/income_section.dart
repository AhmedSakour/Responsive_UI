import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/custom_background_container.dart';

import 'income_header.dart';
import 'income_section_body.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 0,
      child: Column(
        children: const [
          IncomeHeader(),
          IncomeSectionBody(),
        ],
      ),
    );
  }
}
