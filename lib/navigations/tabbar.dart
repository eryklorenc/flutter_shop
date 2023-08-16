import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/features/auth/cubit/auth_cubit.dart';
import 'package:flutter_shop/features/home/home.dart';
import 'package:flutter_shop/generated/l10n.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({
    Key? key,
  }) : super(key: key);

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
        if (currentIndex == 0) {
          return const HomePage();
        }
        if (currentIndex == 1) {
          return Scaffold(
            body: Center(
              child: Text(
                S.of(context).koszyk,
              ),
            ),
          );
        }
        if (currentIndex == 2) {
          return Scaffold(
            body: Center(
              child: ElevatedButton(
                onPressed: () {
                  context.read<AuthCubit>().signOut();
                },
                child: Text(
                  S.of(context).wyloguj_sie,
                ),
              ),
            ),
          );
        }
        return const Center();
      }),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.home_filled,
            ),
            label: S.of(context).strona_glowna,
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.shopping_cart_outlined,
            ),
            label: S.of(context).koszyk,
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.person_outline,
            ),
            label: S.of(context).profil,
          ),
        ],
      ),
    );
  }
}
