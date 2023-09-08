import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/app/core/utils/injection_container.dart';
import 'package:flutter_shop/features/auth/cubit/auth_cubit.dart';
import 'package:flutter_shop/features/auth/login_page.dart';
import 'package:flutter_shop/features/home/home.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthCubit>()..start(),
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          final user = state.user;
          if (user == null) {
            return const LoginPage();
          }
          return const Home();
        },
      ),
    );
  }
}
