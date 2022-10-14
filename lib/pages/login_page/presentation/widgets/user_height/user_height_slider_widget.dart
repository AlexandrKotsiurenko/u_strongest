import 'package:flutter/material.dart';
import 'height_item.dart';

class UserHeightSlider extends StatefulWidget {
  final ValueChanged<int> onHeightChanged;

  const UserHeightSlider({
    Key? key,
    required this.onHeightChanged,
  }) : super(key: key);

  @override
  State<UserHeightSlider> createState() => _UserHeightSliderState();
}

class _UserHeightSliderState extends State<UserHeightSlider> {
  int selectHeight = 0;

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
                selectHeight = index + 150;
                setState(
                  () {
                    widget.onHeightChanged(selectHeight);
                  },
                );
              },
              physics: const FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 80,
                builder: (context, index) {
                  return HeightItem(
                    cm: index + 150,
                    isSelected: selectHeight == index + 150,
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
