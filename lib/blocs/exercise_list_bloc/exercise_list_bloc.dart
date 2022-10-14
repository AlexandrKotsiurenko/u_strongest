import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:u_strongest/src/res/ui/exercises_images_links.dart';
import 'package:u_strongest/src/res/widgets/exercises/exercise.dart';
import 'package:u_strongest/src/res/widgets/exercises/exercise_tag.dart';
import 'package:u_strongest/src/res/ui/exercises_description.dart';

part 'exercise_list_state.dart';
part 'exercise_list_events.dart';

class ExerciseListBloc extends Bloc<ExerciseListEvents, ExerciseListState> {
  ExerciseListBloc()
      : super(
          ExerciseListState(selectedExercisesList: ExerciseListState._exercisesList),
        ) {
    on<SelectExerciseTag>(
      (event, emit) {
        if (event.selectedTag != null) {
          emit(
            ExerciseListState(
              selectedTag: event.selectedTag,
              selectedExercisesList: ExerciseListState._exercisesList
                  .where((element) => element.tag == event.selectedTag)
                  .toList(),
            ),
          );
        } else {
          emit(
            ExerciseListState(
                selectedExercisesList: ExerciseListState._exercisesList),
          );
        }
      },
    );
  }
}
