import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/app/core/config/enums.dart';
import 'package:flutter_shop/domain/models/settings_model.dart';
import 'package:flutter_shop/domain/repositories/settings_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'settings_state.dart';
part 'settings_cubit.freezed.dart';

@injectable
class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit(
    this.settingsRepository,
  ) : super(
          const SettingsState(),
        );

  final SettingsRepository settingsRepository;

  void fetchComments() async {
    emit(const SettingsState(
      status: Status.loading,
    ));
    try {
      final comments = await settingsRepository.getComments();
      emit(
        SettingsState(
          comments: comments,
          status: Status.success,
        ),
      );
    } catch (error) {
      emit(
        SettingsState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
