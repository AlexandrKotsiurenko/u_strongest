import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:u_strongest/blocs/profile_bloc/profile_events.dart';
import 'package:u_strongest/src/res/widgets/user/user_model.dart';

class ProfileBloc extends Bloc<ProfileEvents, UserModel?> {
  ProfileBloc(UserModel? initialState) : super(initialState) {
    on<FetchProfileEvent>((event, emit) async {
      final user = await FirebaseFirestore.instance
          .collection('Users')
          .doc(event.uId)
          .get();
      emit(
        UserModel(
          name: user['name'],
          surname: user['surname'],
          age: user['age'],
          avatar: user['avatar'],
          gender: user['gender'],
          height: user['height'],
          startedWeight: user['startedWeight'],
          currentWeight: user['currentWeight'],
          trainingProgram: [],
          trainingsPerWeek: -1,
          trainingsCounter: 0,
        ),
      );
    });
  }
}
