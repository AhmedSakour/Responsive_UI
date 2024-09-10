import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widget/dots_indicator.dart';
import 'package:responsive_dashboard/widget/my_cards_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  int currentPageindex = 0;
  late PageController pageController;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageindex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 420,
          child: Text('My card', style: AppStyles.styleSemiBold20(context)),
        ),
        const SizedBox(
          height: 20,
        ),
        MyCardsPageView(controller: pageController),
        const SizedBox(
          height: 19,
        ),
        DotsIndicator(currentPageindex: currentPageindex),
      ],
    );
  }
}
