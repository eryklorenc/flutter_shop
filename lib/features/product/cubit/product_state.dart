part of 'product_cubit.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    @Default('') String errorMessage,
    @Default(false) bool isLoading,
    String? selectedSize,
  }) = _ProductState;
}
