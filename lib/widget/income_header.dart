import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Income',
          style: AppStyles.styleSemiBold20(context),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            children: [
              Text(
                'Monthly',
                style: AppStyles.styleMedium16(context),
              ),
              const SizedBox(width: 18),
              Transform.rotate(
                  angle: -1.571,
                  child: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Color(0xFF064060),
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
