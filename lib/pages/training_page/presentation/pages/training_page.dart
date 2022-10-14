import 'package:flutter/material.dart';
import 'package:u_strongest/src/res/ui/text_styles.dart';
import 'package:u_strongest/src/res/widgets/bottom_nav_bar.dart';

class TrainingPage extends StatelessWidget {
  const TrainingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: Center(
        child: Text(
          'TRAINING PROGRAMS PAGE',
          style: AppTextStyles.title,
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
