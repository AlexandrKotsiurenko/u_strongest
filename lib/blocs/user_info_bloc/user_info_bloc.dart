import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:u_strongest/blocs/user_info_bloc/user_info_events.dart';
import 'package:u_strongest/blocs/user_info_bloc/user_info_state.dart';

class UserBloc extends Bloc<UserEvents, UserState> {
  UserBloc(UserState initialState) : super(initialState) {
    on<SetBasicUserInfoEvent>(
          (event, emit) {
        final userState = UserState(
          name: event.name,
          surname: event.surname,
          age: event.age!,
          avatar: event.avatar,
          gender: event.gender!,
          height: state.height,
          startedWeight: state.startedWeight,
          currentWeight: state.currentWeight,
          trainingProgram: state.trainingProgram,
          trainingsPerWeek: state.trainingsPerWeek,
          trainingsCounter: state.trainingsCounter,
        );
        emit(userState);
      },
    );

    on<SetExtraUserInfoEvent>((event, emit) async {
      final userState = UserState(
        name: state.name,
        surname: state.surname,
        age: state.age,
        avatar: state.avatar,
        gender: state.gender,
        height: event.height,
        startedWeight: event.startedWeight,
        currentWeight: event.currentWeight,
        trainingProgram: [],
        trainingsPerWeek: -1,
        trainingsCounter: event.trainingsCounter,
      );
      emit(userState);
      final storageRef = FirebaseStorage.instance.ref();
      final userRef = storageRef.child(userState.avatar!.uri.pathSegments.last);
      await userRef.putFile(userState.avatar!);
      final imageUrl = await userRef.getDownloadURL();

      FirebaseFirestore.instance.collection('Users').doc(event.uId).set({
        'name': userState.name,
        'surname': userState.surname,
        'age': userState.age,
        'avatar': imageUrl,
        'gender': userState.gender,
        'height': userState.height,
        'startedWeight': userState.startedWeight,
        'currentWeight': userState.currentWeight,
        'trainingProgram': userState.trainingProgram,
        'trainingsCounter': userState.trainingsCounter,
      });
    });
  }
}
