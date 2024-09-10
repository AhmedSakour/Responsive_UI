import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class QucikInvoiceHeader extends StatelessWidget {
  const QucikInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        const Icon(
          Icons.add,
          color: Color(0xff4EB7F2),
        )
      ],
    );
  }
}
