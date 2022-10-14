import 'package:flutter/material.dart';
import 'package:u_strongest/pages/user_page/presentation/widgets/user_results/complete_trainings_counter.dart';
import 'package:u_strongest/src/res/ui/app_colors.dart';
import 'package:u_strongest/src/res/widgets/user/user_model.dart';

import 'weight_tracker.dart';

class UserResults extends StatelessWidget {
  final UserModel state;

  const UserResults({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.whiteThemeBG,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      child: Column(
        children: const [
          SizedBox(height: 10),

          //COMPLETE TRAININGS COUNTERS
          CompleteTrainingsCounter(),

          //WEIGHT TRACKING
          WeightTracker()
        ],
      ),
    );
  }
}
