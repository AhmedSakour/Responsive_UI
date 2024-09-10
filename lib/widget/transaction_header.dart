import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class TransactionHeader extends StatelessWidget {
  const TransactionHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20(context),
        ),
        Text('See all',
            style: AppStyles.styleMedium16(context).copyWith(
              color: const Color(0xFF4EB7F2),
            ))
      ],
    );
  }
}
