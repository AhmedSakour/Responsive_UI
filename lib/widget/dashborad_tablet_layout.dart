import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/custom_drawer.dart';

import 'dashboard_mobile_layout.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 3,
          child: DashBoarddMobileLayout(),
        ),
        SizedBox(
          width: 24,
        )
      ],
    );
  }
}
