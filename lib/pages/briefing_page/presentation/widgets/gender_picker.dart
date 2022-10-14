import 'package:flutter/material.dart';
import 'package:u_strongest/src/res/ui/app_colors.dart';
import 'package:u_strongest/src/res/ui/buttons.dart';
import 'package:u_strongest/src/res/ui/text_styles.dart';

class GenderPicker extends StatefulWidget {
  final ValueChanged<String> onGenderChanged;

  const GenderPicker({
    Key? key,
    required this.onGenderChanged,
  }) : super(key: key);

  @override
  State<GenderPicker> createState() => _GenderPickerState();
}

class _GenderPickerState extends State<GenderPicker> {
  String? gender;

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: StatefulBuilder(
                builder: (context, setState) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomOutlinedButton(
                        onTap: () {
                          setState(() {
                            gender = 'Жінка';
                            widget.onGenderChanged(gender!);
                          });
                          this.setState(() {});
                        },
                        buttonText: 'Жінка',
                        isSelected: gender == 'Жінка',
                        width: 170,
                        height: 60,
                      ),
                      CustomOutlinedButton(
                        onTap: () {
                          setState(() {
                            gender = 'Чоловік';
                            widget.onGenderChanged(gender!);
                          });
                          this.setState(() {});
                        },
                        buttonText: 'Чоловік',
                        isSelected: gender == 'Чоловік',
                        width: 170,
                        height: 60,
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        );
      },
      child: Container(
        height: 60,
        width: 120,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: AppColors.lightGrey,
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              const Icon(
                Icons.person,
                size: 20,
                color: AppColors.whiteThemeMain,
              ),
              const SizedBox(width: 4),
              Text(
                gender == null ? 'Стать' : gender!.toString(),
                style: AppTextStyles.hintText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
