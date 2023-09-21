import 'dart:async';
import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/domain/repositories/location_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'profile_page_state.dart';

part 'profile_page_cubit.freezed.dart';

@injectable
class ProfilePageCubit extends Cubit<ProfilePageState> {
  final ImagePicker _imagePicker = ImagePicker();
  late SharedPreferences _prefs;
  final LocationRepository _locationRepository;
  StreamSubscription<String>? _addressSubscription;

  ProfilePageCubit(this._locationRepository) : super(const ProfilePageState()) {
    _init();
  }

  Future<void> initSharedPreferences() async {
    _prefs = await SharedPreferences.getInstance();

    final savedImagePath = _prefs.getString('profile_image_path');
    if (savedImagePath != null) {
      emit(
        state.copyWith(
          currentImageFile: File(savedImagePath),
          imageFilePath: savedImagePath,
        ),
      );
    }
  }

  Future<void> changeImage() async {
    if (state.isImagePickerActive) {
      return;
    }

    final pickedFile =
        await _imagePicker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      emit(
        state.copyWith(
          isImagePickerActive: true,
          imageFilePath: pickedFile.path,
        ),
      );

      final appDirectory = await getApplicationDocumentsDirectory();
      final savedImage = File('${appDirectory.path}/profile_image.jpg');
      await savedImage.writeAsBytes(await File(pickedFile.path).readAsBytes());

      emit(
        state.copyWith(
          currentImageFile: savedImage,
          isImagePickerActive: false,
        ),
      );

      _prefs.setString('profile_image_path', pickedFile.path);
    }
  }

  FutureOr<void> _init() {
    _locationRepository.getCurrentLocation();
    _addressSubscription = _locationRepository.addressStream.listen(
      (address) {
        emit(state.copyWith(address: address));
      },
    );
  }

  @override
  Future<void> close() {
    _addressSubscription?.cancel();
    return super.close();
  }
}
