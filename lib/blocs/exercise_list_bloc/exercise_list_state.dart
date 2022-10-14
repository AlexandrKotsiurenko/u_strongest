part of 'exercise_list_bloc.dart';

class ExerciseListState {
  final ExercisesTag? selectedTag;
  static final List<Exercise> _exercisesList = [
    //CHEST EXERCISES
    Exercise(
      'Жим штанги лежачи на лаві',
      ChestExerciseImageLinks.benchPress,
      ChestExercisesDescription.benchPress,
      ExercisesTag.exercisesTags[0],
      3,
      12,
      50,
    ),
    Exercise(
      'Жим гантелей лежачи на прямій лаві',
      ChestExerciseImageLinks.dumbbellHammer,
      ChestExercisesDescription.dumbbellHammer,
      ExercisesTag.exercisesTags[0],
      3,
      12,
      40,
    ),
    Exercise(
      'Зведення рук у кросовері',
      ChestExerciseImageLinks.cableCrossover,
      ChestExercisesDescription.cableCrossover,
      ExercisesTag.exercisesTags[0],
      3,
      12,
      30,
    ),
    Exercise(
      'Віджимання',
      ChestExerciseImageLinks.pushUps,
      ChestExercisesDescription.pushUps,
      ExercisesTag.exercisesTags[0],
      3,
      20,
      0,
    ),
    Exercise(
      'Зведення рук в Пек-Дек',
      ChestExerciseImageLinks.pecDeckChest,
      ChestExercisesDescription.pecDeckChest,
      ExercisesTag.exercisesTags[0],
      3,
      15,
      50,
    ),

    //BACK EXERCISES
    Exercise(
        'Тяга т-грифа з упором грудьми',
        BackExerciseImageLinks.tBarbellPull,
        BackExercisesDescription.tBarbellPull,
        ExercisesTag.exercisesTags[1],
        3,
        12,
        40),

    //BICEPS EXERCISES
    Exercise(
      'Молотки гантелями',
      BicepsExerciseImageLinks.hammerCurl,
      BicepsExercisesDescription.hammerCurl,
      ExercisesTag.exercisesTags[2],
      3,
      15,
      15,
    ),

    //TRICEPS EXERCISES
    Exercise(
      'Французький жим лежачі',
      TricepsExerciseImageLinks.frenchPressBench,
      TricepsExercisesDescription.frenchPressBench,
      ExercisesTag.exercisesTags[3],
      3,
      12,
      15,
    ),

    //LEGS EXERCISES
    Exercise(
      'Жим ногами в тренажері 45 градусів',
      LegsExerciseImageLinks.legsPush,
      LegsExercisesDescription.legsPush,
      ExercisesTag.exercisesTags[4],
      3,
      12,
      100,
    ),
  ];
  final List<Exercise> selectedExercisesList;

  ExerciseListState({required this.selectedExercisesList, this.selectedTag});
}
