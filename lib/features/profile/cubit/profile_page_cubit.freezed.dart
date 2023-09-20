// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfilePageState {
  String get errorMessage => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  File? get currentImageFile => throw _privateConstructorUsedError;
  bool get isImagePickerActive => throw _privateConstructorUsedError;
  String? get imageFilePath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfilePageStateCopyWith<ProfilePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfilePageStateCopyWith<$Res> {
  factory $ProfilePageStateCopyWith(
          ProfilePageState value, $Res Function(ProfilePageState) then) =
      _$ProfilePageStateCopyWithImpl<$Res, ProfilePageState>;
  @useResult
  $Res call(
      {String errorMessage,
      bool isLoading,
      File? currentImageFile,
      bool isImagePickerActive,
      String? imageFilePath});
}

/// @nodoc
class _$ProfilePageStateCopyWithImpl<$Res, $Val extends ProfilePageState>
    implements $ProfilePageStateCopyWith<$Res> {
  _$ProfilePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
    Object? isLoading = null,
    Object? currentImageFile = freezed,
    Object? isImagePickerActive = null,
    Object? imageFilePath = freezed,
  }) {
    return _then(_value.copyWith(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentImageFile: freezed == currentImageFile
          ? _value.currentImageFile
          : currentImageFile // ignore: cast_nullable_to_non_nullable
              as File?,
      isImagePickerActive: null == isImagePickerActive
          ? _value.isImagePickerActive
          : isImagePickerActive // ignore: cast_nullable_to_non_nullable
              as bool,
      imageFilePath: freezed == imageFilePath
          ? _value.imageFilePath
          : imageFilePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfilePageStateCopyWith<$Res>
    implements $ProfilePageStateCopyWith<$Res> {
  factory _$$_ProfilePageStateCopyWith(
          _$_ProfilePageState value, $Res Function(_$_ProfilePageState) then) =
      __$$_ProfilePageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String errorMessage,
      bool isLoading,
      File? currentImageFile,
      bool isImagePickerActive,
      String? imageFilePath});
}

/// @nodoc
class __$$_ProfilePageStateCopyWithImpl<$Res>
    extends _$ProfilePageStateCopyWithImpl<$Res, _$_ProfilePageState>
    implements _$$_ProfilePageStateCopyWith<$Res> {
  __$$_ProfilePageStateCopyWithImpl(
      _$_ProfilePageState _value, $Res Function(_$_ProfilePageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
    Object? isLoading = null,
    Object? currentImageFile = freezed,
    Object? isImagePickerActive = null,
    Object? imageFilePath = freezed,
  }) {
    return _then(_$_ProfilePageState(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentImageFile: freezed == currentImageFile
          ? _value.currentImageFile
          : currentImageFile // ignore: cast_nullable_to_non_nullable
              as File?,
      isImagePickerActive: null == isImagePickerActive
          ? _value.isImagePickerActive
          : isImagePickerActive // ignore: cast_nullable_to_non_nullable
              as bool,
      imageFilePath: freezed == imageFilePath
          ? _value.imageFilePath
          : imageFilePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ProfilePageState implements _ProfilePageState {
  const _$_ProfilePageState(
      {this.errorMessage = '',
      this.isLoading = false,
      this.currentImageFile,
      this.isImagePickerActive = false,
      this.imageFilePath});

  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final File? currentImageFile;
  @override
  @JsonKey()
  final bool isImagePickerActive;
  @override
  final String? imageFilePath;

  @override
  String toString() {
    return 'ProfilePageState(errorMessage: $errorMessage, isLoading: $isLoading, currentImageFile: $currentImageFile, isImagePickerActive: $isImagePickerActive, imageFilePath: $imageFilePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfilePageState &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.currentImageFile, currentImageFile) ||
                other.currentImageFile == currentImageFile) &&
            (identical(other.isImagePickerActive, isImagePickerActive) ||
                other.isImagePickerActive == isImagePickerActive) &&
            (identical(other.imageFilePath, imageFilePath) ||
                other.imageFilePath == imageFilePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage, isLoading,
      currentImageFile, isImagePickerActive, imageFilePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfilePageStateCopyWith<_$_ProfilePageState> get copyWith =>
      __$$_ProfilePageStateCopyWithImpl<_$_ProfilePageState>(this, _$identity);
}

abstract class _ProfilePageState implements ProfilePageState {
  const factory _ProfilePageState(
      {final String errorMessage,
      final bool isLoading,
      final File? currentImageFile,
      final bool isImagePickerActive,
      final String? imageFilePath}) = _$_ProfilePageState;

  @override
  String get errorMessage;
  @override
  bool get isLoading;
  @override
  File? get currentImageFile;
  @override
  bool get isImagePickerActive;
  @override
  String? get imageFilePath;
  @override
  @JsonKey(ignore: true)
  _$$_ProfilePageStateCopyWith<_$_ProfilePageState> get copyWith =>
      throw _privateConstructorUsedError;
}
