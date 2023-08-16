part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default('') String errorMessage,
    @Default(false) bool isLoading,
    @Default(false) bool menButtonSelected,
    @Default(false) bool womenButtonSelected,
  }) = _HomeState;
}
