part of 'profile_page_cubit.dart';

@freezed
class ProfilePageState with _$ProfilePageState {
  const factory ProfilePageState({
    @Default('') String errorMessage,
    @Default(false) bool isLoading,
    File? currentImageFile,
    @Default(false) bool isImagePickerActive,
    String? imageFilePath,
    @Default('') String address,
    @Default(false) bool isError,
  }) = _ProfilePageState;
}
