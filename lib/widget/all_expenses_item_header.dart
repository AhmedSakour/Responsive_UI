import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key,
      required this.image,
      this.backgroundColorImage,
      this.imageColor});
  final String image;
  final Color? backgroundColorImage, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: AspectRatio(
            aspectRatio: 1,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 60),
              child: Container(
                decoration: ShapeDecoration(
                  color: backgroundColorImage ?? const Color(0xFFFAFAFA),
                  shape: const CircleBorder(),
                ),
                child: SvgPicture.asset(
                  image,
                  color: imageColor ?? const Color(0xFF4DB7F2),
                ),
              ),
            ),
          ),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        Transform.rotate(
            angle: -1.571 * 2,
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: imageColor ?? const Color(0xFF064060),
            ))
      ],
    );
  }
}
