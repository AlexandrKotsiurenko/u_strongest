import 'dart:io';

abstract class UserEvents {}

class SetBasicUserInfoEvent extends UserEvents {
  final String name;
  final String surname;
  final int? age;
  final File? avatar;
  final String? gender;

  SetBasicUserInfoEvent({
    required this.name,
    required this.surname,
    required this.age,
    required this.avatar,
    required this.gender,
  });
}

class SetExtraUserInfoEvent extends UserEvents {
  final double height;
  final double startedWeight;
  final double currentWeight;
  final int trainingsCounter;
  final String uId;

  SetExtraUserInfoEvent({
    required this.uId,
    required this.height,
    required this.startedWeight,
    required this.currentWeight,
    required this.trainingsCounter,
  });
}
