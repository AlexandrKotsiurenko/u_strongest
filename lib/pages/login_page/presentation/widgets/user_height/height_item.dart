import 'package:flutter/material.dart';
import 'package:u_strongest/src/res/ui/text_styles.dart';

class HeightItem extends StatelessWidget {
  final int cm;
  final bool isSelected;

  const HeightItem({Key? key, required this.cm, required this.isSelected}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Center(
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 400),
          style: isSelected ? AppTextStyles.kGActiveText : AppTextStyles.kGInactiveText,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                cm.toString(),
              ),
              const SizedBox(width: 6),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'см',
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
