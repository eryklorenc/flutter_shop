import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/app/cubit/root_cubit.dart';
import 'package:flutter_shop/app/login_page.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => RootCubit()..start(),
        child: BlocBuilder<RootCubit, RootState>(builder: (context, state) {
          final user = state.user;
          if (user == null) {
            return const LoginPage();
          }

          return Scaffold(
            body: Center(
              child: ElevatedButton(
                onPressed: () {
                  context.read<RootCubit>().signOut();
                },
                child: const Text('Wyloguj'),
              ),
            ),
          );
        }));
  }
}
