import 'package:flutter/material.dart';
import 'package:u_strongest/pages/login_page/presentation/widgets/user_weigh/weight_chart.dart';
import 'package:u_strongest/src/res/ui/app_colors.dart';
import 'package:u_strongest/src/res/ui/text_styles.dart';

class WeightTracker extends StatelessWidget {
  const WeightTracker({Key? key}) : super(key: key);

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
          children: const [

            //BLOCK NAME
            Padding(
              padding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Text(
                'Ваша вага',
                style: AppTextStyles.title,
              ),
            ),

            //WEIGHT TRACKER CHART
            WeightChart(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
