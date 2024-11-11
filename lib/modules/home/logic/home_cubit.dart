import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  double sliderValue = 0;

  void updateSliderValue(double value) {
    sliderValue = value * 1000;
    emit(UpdateSliderValueState());
  }
}
