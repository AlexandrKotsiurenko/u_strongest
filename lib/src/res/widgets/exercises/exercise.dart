import 'package:u_strongest/src/res/widgets/exercises/exercise_tag.dart';

class Exercise {
  final String title;
  final String description;
  final String imageLink;
  final ExercisesTag tag;
  final int stepsAmount;
  final int repetitionAmount;
  final double workingWeight;

  Exercise(
    this.title,
    this.imageLink,
    this.description,
    this.tag,
    this.stepsAmount,
    this.repetitionAmount,
    this.workingWeight,
  );
}
