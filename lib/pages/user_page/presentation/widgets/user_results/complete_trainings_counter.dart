import 'package:flutter/material.dart';
import 'package:u_strongest/pages/user_page/presentation/widgets/user_results/complete_trainigs_item.dart';
import 'package:u_strongest/src/res/ui/app_colors.dart';
import 'package:u_strongest/src/res/ui/text_styles.dart';

class CompleteTrainingsCounter extends StatelessWidget {
  const CompleteTrainingsCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.whiteThemeBGSecondary,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            //BLOCK NAME
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Text(
                'Ваша статистика',
                style: AppTextStyles.title,
              ),
            ),

            //COMPLETE TRAININGS COUNTERS
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //COMPLETE TRAININGS COUNTER (ALL TIME)
                  const CompleteTrainingsItem(
                    trainingsAmount: 15,
                    description: 'Завершенні\nтренування',
                  ),

                  //DIVIDER
                  Container(
                    height: 100,
                    width: 1,
                    color: AppColors.lightGrey,
                  ),

                  //COMPLETE TRAININGS COUNTER (PER THIS WEEK)
                  const CompleteTrainingsItem(
                    trainingsAmount: 4,
                    description: 'Тренувань на\nцьому тижні',
                  ),

                  //DIVIDER
                  Container(
                    height: 100,
                    width: 1,
                    color: AppColors.lightGrey,
                  ),

                  //COMPLETE TRAININGS COUNTER (PER LAST WEEK)
                  const CompleteTrainingsItem(
                    trainingsAmount: 3,
                    description: 'Тренувань на\nминулому тижні',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
