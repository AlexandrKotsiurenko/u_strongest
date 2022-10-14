import 'package:flutter/material.dart';
import 'package:u_strongest/src/res/ui/app_colors.dart';
import 'package:u_strongest/src/res/ui/text_styles.dart';

class TagBlock extends StatefulWidget {
  final bool isSelect;
  final String title;
  final void Function() onTap;

  const TagBlock({
    Key? key,
    required this.title,
    required this.isSelect, required this.onTap,
  }) : super(key: key);

  @override
  State<TagBlock> createState() => _TagBlockState();
}

class _TagBlockState extends State<TagBlock> {
  final double width = 100;
  final double height = 30;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          decoration: BoxDecoration(
            color:
                widget.isSelect ? AppColors.whiteThemeMain : AppColors.lightGrey,
            borderRadius: BorderRadius.circular(12),
          ),
          width: width,
          height: height,
          child: Center(
            child: Text(
              widget.title,
              textAlign: TextAlign.center,
              style: widget.isSelect ? AppTextStyles.regularWhite : AppTextStyles.regular,
            ),
          ),
        ),
      ),
    );
  }
}

