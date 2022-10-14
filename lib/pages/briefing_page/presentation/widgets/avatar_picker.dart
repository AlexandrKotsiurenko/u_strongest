import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:u_strongest/src/res/ui/app_colors.dart';
import 'package:u_strongest/src/res/ui/text_styles.dart';

class AvatarPicker extends StatefulWidget {
  ValueChanged<File> onImageChanged;

  AvatarPicker({
    Key? key,
    required this.onImageChanged,
  }) : super(key: key);

  @override
  State<AvatarPicker> createState() => _AvatarPickerState();
}

class _AvatarPickerState extends State<AvatarPicker> {
  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (image == null) return;

      final imageTemp = File(image.path);

      this.image = imageTemp;
      setState(() => widget.onImageChanged(imageTemp));

    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: pickImage,
      borderRadius: BorderRadius.circular(60),
      child: Center(
        child: image != null
            ? Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.lightGrey,
                    width: 2.0,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image.file(
                    image!,
                    fit: BoxFit.cover,
                  ),
                ),
              )
            : Container(
                height: 120,
                width: 120,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.lightGrey,
                ),
                child: const Center(
                  child: Text(
                    'Додайте фото',
                    style: AppTextStyles.hintText,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
      ),
    );
  }
}
