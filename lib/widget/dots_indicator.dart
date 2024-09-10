import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentPageindex});
  final int currentPageindex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          3,
          (index) => Padding(
                padding: const EdgeInsets.only(right: 6),
                child: CustomDotIndicator(isActive: currentPageindex == index),
              )),
    );
  }
}
