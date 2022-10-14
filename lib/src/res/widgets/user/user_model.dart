import 'package:u_strongest/src/res/widgets/exercises/exercise.dart';

class UserModel {
  final String name;
  final String surname;
  final int age;
  final String avatar;
  final String gender;
  final double height;
  final double startedWeight;
  final double currentWeight;
  final List<Exercise> trainingProgram;
  final int trainingsPerWeek;
  final int trainingsCounter;

  UserModel({
    required this.name,
    required this.surname,
    required this.age,
    required this.avatar,
    required this.gender,
    required this.height,
    required this.startedWeight,
    required this.currentWeight,
    required this.trainingProgram,
    required this.trainingsPerWeek,
    required this.trainingsCounter,
  });
}
