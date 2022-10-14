import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:u_strongest/blocs/exercise_list_bloc/exercise_list_bloc.dart';
import 'package:u_strongest/pages/home_page/presentation/widgets/exercise_block/exercise_block.dart';

class ExercisesBlockList extends StatefulWidget {
  const ExercisesBlockList({Key? key}) : super(key: key);

  @override
  State<ExercisesBlockList> createState() => _ExercisesBlockListState();
}

class _ExercisesBlockListState extends State<ExercisesBlockList> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExerciseListBloc, ExerciseListState>(
      builder: (context, state) => SizedBox(
        height: 230,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: state.selectedExercisesList.length,
          itemBuilder: (BuildContext context, int index) {
            return ExerciseBlock(
              title: state.selectedExercisesList[index].title,
              onTap: () {},
              imageLink: state.selectedExercisesList[index].imageLink,
            );
          },
        ),
      ),
    );
  }
}
