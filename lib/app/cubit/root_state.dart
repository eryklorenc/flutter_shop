part of 'root_cubit.dart';


class RootState {
  final User? user;
  final bool isLoading;
  final String errorMessage;

  const RootState({
    required this.user,
    required this.errorMessage,
    required this.isLoading,
  });
}
