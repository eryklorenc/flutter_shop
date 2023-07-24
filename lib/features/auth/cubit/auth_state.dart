part of 'auth_cubit.dart';


class AuthState {
  const AuthState({
    this.user,
    this.status = Status.initial,
    this.errorMessage = '',
  });

  final User? user;
  final Status status;
  final String errorMessage;
}
