import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:u_strongest/blocs/exercise_list_bloc/exercise_list_bloc.dart';
import 'package:u_strongest/pages/home_page/presentation/widgets/tag_block/tag_block.dart';
import 'package:u_strongest/src/res/widgets/exercises/exercise_tag.dart';

class TagBlockList extends StatefulWidget {
  const TagBlockList({Key? key}) : super(key: key);

  @override
  State<TagBlockList> createState() => _TagBlockListState();
}

class _TagBlockListState extends State<TagBlockList> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery
          .of(context)
          .size
          .width,
      height: 40,
      child: BlocBuilder<ExerciseListBloc, ExerciseListState>(
        builder: (context, state) =>
            ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: ExercisesTag.exercisesTags.length,
              itemBuilder: (BuildContext context, int index) =>
                  TagBlock(
                    title: ExercisesTag.exercisesTags[index].tag,
                    isSelect: state.selectedTag ==
                        ExercisesTag.exercisesTags[index],
                    onTap: () {
                      context.read<ExerciseListBloc>().add(
                        SelectExerciseTag(selectedTag: state.selectedTag ==
                            ExercisesTag.exercisesTags[index]
                            ? null
                            : ExercisesTag.exercisesTags[index]),);
                    },
                  ),
            ),
      ),
    );
  }
}