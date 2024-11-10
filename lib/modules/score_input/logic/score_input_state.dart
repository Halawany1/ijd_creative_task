part of 'score_input_cubit.dart';

@immutable
sealed class ScoreInputState {}

class ScoreInputInitial extends ScoreInputState {}

class UpdateScoreState extends ScoreInputState {}
