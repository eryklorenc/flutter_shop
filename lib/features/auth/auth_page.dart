import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/features/auth/cubit/auth_cubit.dart';
import 'package:flutter_shop/features/auth/login_page.dart';
import 'package:flutter_shop/navigations/tabbar.dart';
import 'package:flutter_shop/repositories/login_repository.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AuthCubit(LoginRepository())..start(),
        child: BlocBuilder<AuthCubit, AuthState>(builder: (context, state) {
          final user = state.user;
          if (user == null) {
            return const LoginPage();
          }
          return const Tabbar();
        }));
  }
}
