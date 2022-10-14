import 'package:flutter/material.dart';
import 'package:u_strongest/pages/home_page/presentation/widgets/training_programs_block/training_programs_block.dart';
import 'package:u_strongest/src/res/ui/exercises_images_links.dart';

class TrainingProgramsBlockList extends StatefulWidget {
  const TrainingProgramsBlockList({Key? key}) : super(key: key);

  @override
  State<TrainingProgramsBlockList> createState() =>
      _TrainingProgramsBlockListState();
}

class _TrainingProgramsBlockListState extends State<TrainingProgramsBlockList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 330,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          TrainingProgramsBlock(
            title: 'Спина, руки, плечі',
            onTap: () {},
            imageLink: ChestExerciseImageLinks.cableCrossover,
          ),
          TrainingProgramsBlock(
            title: 'Ноги',
            onTap: () {},
            imageLink: TrainingProgramsImageLinks.legsDay,
          ),
          TrainingProgramsBlock(
            title: 'Спина, руки, плечі',
            onTap: () {},
            imageLink: ChestExerciseImageLinks.cableCrossover,
          ),
          TrainingProgramsBlock(
            title: 'Ноги',
            onTap: () {},
            imageLink: TrainingProgramsImageLinks.legsDay,
          ),
          TrainingProgramsBlock(
            title: 'Спина, руки, плечі',
            onTap: () {},
            imageLink: ChestExerciseImageLinks.cableCrossover,
          ),
        ],
      ),
    );
  }
}
