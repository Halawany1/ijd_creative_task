import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'score_input_state.dart';

class ScoreInputCubit extends Cubit<ScoreInputState> {
  ScoreInputCubit() : super(ScoreInputInitial());

  String score = '';

  void updateScore(String value) {
    score = value;
    emit(UpdateScoreState());
  }
}
