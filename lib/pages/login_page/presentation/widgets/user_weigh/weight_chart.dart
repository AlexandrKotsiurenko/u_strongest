import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:u_strongest/src/res/ui/app_colors.dart';
import 'package:u_strongest/src/res/ui/text_styles.dart';

class WeightChart extends StatelessWidget {
  const WeightChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double startedWeight = 72;
    double currentWeight = 70.3;
    double weightDifference = startedWeight - currentWeight;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
      child: Column(
        children: [
          SizedBox(
            height: 250,
            width: 450,
            child: LineChart(
              LineChartData(
                maxY: 72,
                minY: 69,
                maxX: 4,
                minX: 0,
                borderData: FlBorderData(
                  show: false,
                ),
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      const FlSpot(0, 71),
                      const FlSpot(1, 69),
                      const FlSpot(2, 70.3),
                      const FlSpot(3, 70.9),
                      const FlSpot(4, 72),
                    ],
                    isCurved: true,
                    color: AppColors.whiteThemeMain,
                    barWidth: 2,
                  ),
                ],
              ),
            ),
          ),

          //DIVIDER
          Container(
            width: 400,
            height: 1,
            color: AppColors.lightGrey,
          ),

          //RESULTS INFO BAR
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //STARTED WEIGHT COUNTER
              Column(
                children: [
                  Text(
                    startedWeight.toString() + ' кг',
                    style: AppTextStyles.title,
                  ),
                  const Text(
                    'Стартова вага',
                    style: AppTextStyles.hintTextMini,
                  ),
                ],
              ),

              //DIVIDER
              Container(
                height: 100,
                width: 1,
                color: AppColors.lightGrey,
              ),

              //CURRENT WEIGHT COUNTER
              Column(
                children: [
                  Text(
                    currentWeight.toString() + ' кг',
                    style: AppTextStyles.title,
                    textAlign: TextAlign.left,
                  ),
                  const Text(
                    'Поточна вага',
                    style: AppTextStyles.hintTextMini,
                  ),
                ],
              ),

              //DIVIDER
              Container(
                height: 100,
                width: 1,
                color: AppColors.lightGrey,
              ),

              //WEIGHT DIFFERENCE
              Column(
                children: [
                  Text(
                    weightDifference.toStringAsFixed(1) + ' кг',
                    style: AppTextStyles.title,
                    textAlign: TextAlign.left,
                  ),
                  const Text(
                    'Загальна різниця',
                    style: AppTextStyles.hintTextMini,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
