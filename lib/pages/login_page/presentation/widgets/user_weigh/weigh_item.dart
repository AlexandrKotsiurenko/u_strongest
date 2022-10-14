import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:u_strongest/src/res/ui/text_styles.dart';


class WeighItem extends StatelessWidget {
  final int kg;
  final bool isSelected;

  const WeighItem({Key? key, required this.kg, required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 400),
        style: isSelected ? AppTextStyles.kGActiveText : AppTextStyles.kGInactiveText,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                kg.toString(),
              ),
              const SizedBox(width: 6),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'кг',
                    style: AppTextStyles.kGIndexText,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
