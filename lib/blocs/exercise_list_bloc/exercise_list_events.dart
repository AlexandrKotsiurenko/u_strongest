part of 'exercise_list_bloc.dart';

abstract class ExerciseListEvents {}

class SelectExerciseTag extends ExerciseListEvents {
  final ExercisesTag? selectedTag;

  SelectExerciseTag({this.selectedTag});
}
