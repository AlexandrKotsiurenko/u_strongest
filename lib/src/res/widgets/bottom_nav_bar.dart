import 'package:flutter/material.dart';
import 'package:u_strongest/src/res/ui/app_colors.dart';
import 'package:u_strongest/src/res/ui/pages_links.dart';

class BottomNavBar extends StatefulWidget {

  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBar();
}

class _BottomNavBar extends State<BottomNavBar> {
  PageEnum selectIndex = PageEnum.home;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: AppColors.whiteThemeBGSecondary,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavBarItem(
              icon: Icons.home_filled,
              isSelect: (selectIndex == PageEnum.home),
              onTap: () => onTap(PageEnum.home),
            ),
            NavBarItem(
              icon: Icons.list_alt,
              isSelect: (selectIndex == PageEnum.trainingPrograms),
              onTap: () => onTap(PageEnum.trainingPrograms),
            ),
            NavBarItem(
              icon: Icons.person,
              isSelect: (selectIndex == PageEnum.user),
              onTap: () => onTap(PageEnum.user),
            ),
          ],
        ),
      ),
    );
  }

  void onTap(PageEnum index) {
    selectIndex = index;
    setState(
      () {
        if (selectIndex == PageEnum.home) {
          Navigator.of(context).pushNamed(PagesLinks.homePage);
          selectIndex == PageEnum.home;
        } else if (selectIndex == PageEnum.user) {
          Navigator.of(context).pushNamed(PagesLinks.userPage);
          selectIndex == PageEnum.user;
        } else if (selectIndex == PageEnum.trainingPrograms) {
          Navigator.of(context).pushNamed(PagesLinks.trainingPage);
          selectIndex == PageEnum.trainingPrograms;
        }
      },
    );
  }
}

class NavBarItem extends StatelessWidget {
  final IconData icon;
  final bool isSelect;
  final void Function() onTap;

  const NavBarItem(
      {Key? key,
      required this.icon,
      required this.onTap,
      this.isSelect = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Icon(
        icon,
        color: isSelect ? AppColors.whiteThemeMain : AppColors.black,
        size: 30,
      ),
    );
  }
}

enum PageEnum {
  home,
  user,
  trainingPrograms,
}
