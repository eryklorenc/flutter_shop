import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/app/core/theme/app_colors.dart';
import 'package:flutter_shop/features/auth/cubit/auth_cubit.dart';
import 'package:flutter_shop/generated/l10n.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 60.0, 0.0, 20.0),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const CircleAvatar(
                radius: 30,
                backgroundColor: AppColors.dark,
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).email,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.local_airport,
                        color: AppColors.dark,
                        size: 14,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Text(
                        'Rzeszów',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ListTile(
              leading: const Icon(
                Icons.person,
                size: 30,
                color: AppColors.dark,
              ),
              title: GestureDetector(
                onTap: () {},
                child: Text(
                  S.of(context).profile,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ),
            const Divider(
              color: AppColors.white,
              thickness: 1,
              endIndent: 50,
              indent: 70,
            ),
            ListTile(
              leading: const Icon(
                Icons.home_sharp,
                size: 30,
                color: AppColors.dark,
              ),
              title: GestureDetector(
                onTap: () {},
                child: Text(
                  S.of(context).home,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.info,
                size: 30,
                color: AppColors.dark,
              ),
              title: GestureDetector(
                onTap: () {},
                child: Text(
                  S.of(context).about_us,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ),
            const Divider(
              color: AppColors.white,
              thickness: 1,
              endIndent: 50,
              indent: 70,
            ),
            ListTile(
              leading: const Icon(
                Icons.phone_android,
                size: 30,
                color: AppColors.dark,
              ),
              title: GestureDetector(
                onTap: () {},
                child: Text(
                  S.of(context).contact_us,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ),
            const Divider(
              color: AppColors.white,
              thickness: 1,
              endIndent: 50,
              indent: 70,
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                size: 30,
                color: AppColors.dark,
              ),
              title: GestureDetector(
                onTap: () {},
                child: Text(
                  S.of(context).settings,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Divider(
              color: AppColors.white,
              thickness: 1,
              endIndent: 50,
              indent: 70,
            ),
            ListTile(
              leading: const Icon(
                Icons.logout,
                size: 30,
                color: AppColors.dark,
              ),
              title: GestureDetector(
                onTap: () {
                  context.read<AuthCubit>().signOut();
                },
                child: Text(
                  S.of(context).log_out,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
