import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobile,
      required this.tablet,
      required this.desktop});
  final WidgetBuilder mobile, tablet, desktop;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth + 64 < SizeConfig.tablet) {
        return mobile(context);
      } else if (constrains.maxWidth < SizeConfig.desktop) {
        return tablet(context);
      } else {
        return desktop(context);
      }
    });
  }
}
