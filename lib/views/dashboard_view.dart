import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/adaptive_layout.dart';
import 'package:responsive_dashboard/widget/custom_drawer.dart';
import 'package:responsive_dashboard/widget/dashboard_desktop_layout.dart';

import '../widget/dashboard_mobile_layout.dart';
import '../widget/dashborad_tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.of(context).size.width < 800
          ? AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black,
                  )))
          : null,
      drawer:
          MediaQuery.of(context).size.width < 800 ? const CustomDrawer() : null,
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobile: (context) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: DashBoarddMobileLayout(),
        ),
        tablet: (context) => const DashBoardTabletLayout(),
        desktop: (context) => const DashBoardDeskTopLayout(),
      ),
    );
  }
}
