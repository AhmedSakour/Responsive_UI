import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/tittle_text_field.dart';

import 'custom_button.dart';

class QucikInvoiceForm extends StatelessWidget {
  const QucikInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Expanded(
                child: TitleTextField(
                    title: 'Customer name', hint: 'Type customer name')),
            Expanded(
                child: TitleTextField(
                    title: 'Customer Email', hint: 'Type customer email'))
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Row(
          children: const [
            Expanded(
                child: TitleTextField(
                    title: 'Item name', hint: 'Type customer name')),
            Expanded(child: TitleTextField(title: 'Item mount', hint: 'USD'))
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Row(
          children: const [
            Expanded(
                child: CustomButton(
              text: 'Add more details',
              backgroundColor: Colors.white,
              textColor: Color(0xFF4DB7F2),
            )),
            SizedBox(
              width: 24,
            ),
            Expanded(
                child: CustomButton(
              text: 'Send Money',
            )),
          ],
        ),
      ],
    );
  }
}
