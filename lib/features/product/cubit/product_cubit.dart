import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_state.dart';
part 'product_cubit.freezed.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit()
      : super(
          const ProductState(),
        );

  void selectSize(String size) {
    emit(state.copyWith(selectedSize: size));
  }

  bool isSizeSelected(String size) {
    return state.selectedSize == size;
  }
}
