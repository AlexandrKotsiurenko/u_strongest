import 'dart:io';
import 'package:u_strongest/src/res/widgets/exercises/exercise.dart';

class UserState {
  final String? name;
  final String? surname;
  final int? age;
  final File? avatar;
  final String? gender;
  final double? height;
  final double? startedWeight;
  final double? currentWeight;
  final List<Exercise>? trainingProgram;
  final int? trainingsPerWeek;
  final int? trainingsCounter;

  UserState({
    this.name,
    this.surname,
    this.age,
    this.avatar,
    this.gender,
    this.height,
    this.startedWeight,
    this.currentWeight,
    this.trainingProgram,
    this.trainingsPerWeek,
    this.trainingsCounter,
  });
}
