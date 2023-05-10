import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/app/cubit/auth_cubit.dart';
import 'package:flutter_shop/app/login_page.dart';
import 'package:flutter_shop/repositories/login_repository.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AuthCubit(LoginRepository())..start(),
        child: BlocBuilder<AuthCubit, AuthState>(builder: (context, state) {
          final user = state.user;
          if (user == null) {
            return const LoginPage();
          }

          return Scaffold(
            body: Center(
              child: ElevatedButton(
                onPressed: () {
                  context.read<AuthCubit>().signOut();
                },
                child: const Text('Wyloguj'),
              ),
            ),
          );
        }));
  }
}
