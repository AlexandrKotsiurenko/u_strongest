class ExercisesTag {
  final String tag;
  static final List<ExercisesTag> exercisesTags = [
    ExercisesTag._(tag: 'Груди'),
    ExercisesTag._(tag: 'Спина'),
    ExercisesTag._(tag: 'Біцепс'),
    ExercisesTag._(tag: 'Тріцепс'),
    ExercisesTag._(tag: 'Ноги'),
  ];

  ExercisesTag._({required this.tag});
}
