import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_shop/app/core/enums.dart';
import 'package:flutter_shop/repositories/login_repository.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._loginRepository) : super(const AuthState());

  final LoginRepository _loginRepository;

  Future<void> register({
    required String email,
    required String password,
  }) async {
    try {
      await _loginRepository.register(
        email: email,
        password: password,
      );
      emit(
        const AuthState(
          status: Status.success,
        ),
      );
    } catch (error) {
      emit(
        AuthState(
          user: null,
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    try {
      await _loginRepository.signIn(
        email: email,
        password: password,
      );
      emit(
        const AuthState(
          status: Status.success,
        ),
      );
    } catch (error) {
      emit(
        AuthState(
          user: null,
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }

  Future<void> signOut() async {
    _loginRepository.signOut();
    emit(
      const AuthState(
        status: Status.success,
      ),
    );
  }

  StreamSubscription? _streamSubscription;

  Future<void> singOut() async {
    FirebaseAuth.instance.signOut();
  }

  Future<void> start() async {
    emit(
      const AuthState(
        user: null,
        status: Status.initial,
        errorMessage: '',
      ),
    );

    _streamSubscription = _loginRepository.authState().listen(
      (user) {
        emit(
          AuthState(
            user: user,
          ),
        );
      },
    )..onError(
        (error) {
          emit(AuthState(
            status: Status.error,
            errorMessage: error.toString(),
          ));
        },
      );
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
