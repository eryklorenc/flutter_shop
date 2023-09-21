part of 'settings_cubit.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default('') String errorMessage,
    @Default(false) bool isLoading,
    @Default([]) List<SettingsModel> comments,
    @Default(Status.initial) Status status,
  }) = _SettingsState;
}
