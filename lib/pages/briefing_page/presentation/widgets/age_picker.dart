import 'package:flutter/material.dart';
import 'package:u_strongest/src/res/ui/app_colors.dart';
import 'package:u_strongest/src/res/ui/text_styles.dart';

class AgePicker extends StatefulWidget {
  final DateTime? userBirthday;
  final void Function(DateTime) datePicker;

  const AgePicker({
    Key? key,
    required this.userBirthday,
    required this.datePicker,
  }) : super(key: key);

  @override
  State<AgePicker> createState() => _AgePickerState();
}

class _AgePickerState extends State<AgePicker> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1960),
          lastDate: DateTime(2023),
        ).then((value) => widget.datePicker(value!));
      },
      child: Container(
        height: 60,
        width: 220,
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
                Icons.calendar_month_outlined,
                size: 20,
                color: AppColors.whiteThemeMain,
              ),
              const SizedBox(width: 4),
              Text(
                widget.userBirthday == null
                    ? 'Вік'
                    : '${widget.userBirthday!.day}/${widget.userBirthday!.month}/${widget.userBirthday!.year}',
                style: AppTextStyles.hintText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
