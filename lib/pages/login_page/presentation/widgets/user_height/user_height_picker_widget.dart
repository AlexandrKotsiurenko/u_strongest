import 'package:flutter/material.dart';
import 'package:u_strongest/pages/login_page/presentation/widgets/user_height/user_height_slider_widget.dart';
import 'package:u_strongest/src/res/ui/app_colors.dart';
import 'package:u_strongest/src/res/ui/text_styles.dart';

class UserHeightPicker extends StatefulWidget {
  final ValueChanged<int> onHeightChanged;

  const UserHeightPicker({
    Key? key,
    required this.onHeightChanged,
  }) : super(key: key);

  @override
  State<UserHeightPicker> createState() => _UserHeightPickerState();
}

class _UserHeightPickerState extends State<UserHeightPicker> {
  int? height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20),
            ),
          ),
          builder: (context) => SizedBox(
            height: 260,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                UserHeightSlider(
                  onHeightChanged: (int value) {
                    setState(() {
                      height = value;
                    });
                    widget.onHeightChanged(height!);
                  },
                ),
              ],
            ),
          ),
        );
      },
      child: Container(
        height: 60,
        width: 170,
        decoration: BoxDecoration(
          color: AppColors.whiteThemeBGSecondary,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: AppColors.lightGrey,
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              const Icon(
                Icons.height_rounded,
                size: 25,
                color: AppColors.whiteThemeMain,
              ),
              const SizedBox(width: 3),
              Text(
                height == null ? 'Зріст' : height!.toString() + ' см',
                style: AppTextStyles.regular,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
