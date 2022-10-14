import 'package:flutter/material.dart';
import 'package:u_strongest/pages/login_page/presentation/widgets/user_weigh/weigh_item.dart';

class UserWeighSlider extends StatefulWidget {
  final ValueChanged<double> onWeightChanged;

  const UserWeighSlider({
    Key? key,
    required this.onWeightChanged,
  }) : super(key: key);

  @override
  State<UserWeighSlider> createState() => _UserWeighSliderState();
}

class _UserWeighSliderState extends State<UserWeighSlider> {
  double selectWeight = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 300,
            child: ListWheelScrollView.useDelegate(
              itemExtent: 70,
              perspective: 0.005,
              diameterRatio: 1.2,
              onSelectedItemChanged: (index) {
                selectWeight = index + 40;
                setState(
                  () {
                    widget.onWeightChanged(selectWeight);
                  },
                );
              },
              physics: const FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 80,
                builder: (context, index) {
                  return WeighItem(
                    kg: index + 40,
                    isSelected: selectWeight == index + 40,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
