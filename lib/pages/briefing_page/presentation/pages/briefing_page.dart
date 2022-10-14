import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:u_strongest/pages/briefing_page/presentation/pages/basic_user_info_page.dart';
import 'package:u_strongest/pages/briefing_page/presentation/pages/extra_user_info_page.dart';
import 'package:u_strongest/src/res/ui/app_colors.dart';
import 'package:u_strongest/src/res/ui/buttons.dart';
import 'package:u_strongest/src/res/ui/pages_links.dart';

class BriefingPage extends StatefulWidget {
  const BriefingPage({Key? key}) : super(key: key);

  @override
  State<BriefingPage> createState() => _BriefingPageState();
}

class _BriefingPageState extends State<BriefingPage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  const SizedBox(width: 20),
                  CustomExitButton(
                    onTap: () {
                      Navigator.of(context).pushNamed(PagesLinks.userPage);
                    },
                    buttonColor: AppColors.lightGrey,
                  ),
                  const SizedBox(width: 110),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 2,
                    effect: const ExpandingDotsEffect(
                      activeDotColor: AppColors.whiteThemeMain,
                      dotHeight: 10,
                      dotWidth: 10,
                      spacing: 10,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 500,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  children: [
                    BasicUserInfoPage(
                      pageController: _controller,
                    ),
                    ExtraUserInfoPage(
                      pageController: _controller,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
