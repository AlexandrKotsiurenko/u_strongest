import 'package:flutter/material.dart';
import 'package:u_strongest/pages/login_page/presentation/widgets/user_weigh/user_weigh_slider_widget.dart';
import 'package:u_strongest/src/res/ui/app_colors.dart';
import 'package:u_strongest/src/res/ui/text_styles.dart';

class UserWeightPicker extends StatefulWidget {
  final ValueChanged<int> onWeightChanged;

  const UserWeightPicker({
    Key? key,
    required this.onWeightChanged,
  }) : super(key: key);

  @override
  State<UserWeightPicker> createState() => _UserWeightPickerState();
}

class _UserWeightPickerState extends State<UserWeightPicker> {
  double? weight;

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
          builder: (context) => UserWeighSlider(
            onWeightChanged: (double value) {
              setState(() {
                weight = value;
              });
              widget.onWeightChanged(
                weight!.toInt(),
              );
            },
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
                Icons.monitor_weight_outlined,
                size: 25,
                color: AppColors.whiteThemeMain,
              ),
              const SizedBox(width: 6),
              Text(
                weight == null ? 'Вага' : weight!.toString() + ' кг',
                style: AppTextStyles.regular,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
