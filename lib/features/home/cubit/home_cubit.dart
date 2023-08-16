import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit()
      : super(
          const HomeState(),
        );

  void selectMenButton() {
    emit(state.copyWith(
      menButtonSelected: true,
      womenButtonSelected: false,
    ));
  }

  void selectWomenButton() {
    emit(state.copyWith(
      womenButtonSelected: true,
      menButtonSelected: false,
    ));
  }
}
