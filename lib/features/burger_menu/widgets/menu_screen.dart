import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/app/core/theme/app_colors.dart';
import 'package:flutter_shop/features/auth/cubit/auth_cubit.dart';
import 'package:flutter_shop/features/contact_us/contact_us.dart';
import 'package:flutter_shop/features/home/home.dart';
import 'package:flutter_shop/features/profile/profile_page.dart';
import 'package:flutter_shop/features/settings/settings_page.dart';
import 'package:flutter_shop/generated/l10n.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({
    Key? key,
  }) : super(
          key: key,
        );

  final Divider customDivider = const Divider(
    color: AppColors.white,
    thickness: 1,
    endIndent: 50,
    indent: 70,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 60.0, 0.0, 20.0),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const CircleAvatar(
                radius: 30,
                backgroundColor: AppColors.white,
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).email,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: AppColors.white),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.local_airport,
                        color: AppColors.white,
                        size: 14,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Text(
                        'Rzeszów',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(color: AppColors.white),
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
                color: AppColors.white,
              ),
              title: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const ProfilePage(),
                    ),
                  );
                },
                child: Text(
                  S.of(context).profile,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: AppColors.white),
                ),
              ),
            ),
            customDivider,
            ListTile(
              leading: const Icon(
                Icons.home_sharp,
                size: 30,
                color: AppColors.white,
              ),
              title: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const Home(),
                    ),
                  );
                },
                child: Text(
                  S.of(context).home,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: AppColors.white),
                ),
              ),
            ),
            customDivider,
            ListTile(
              leading: const Icon(
                Icons.phone_android,
                size: 30,
                color: AppColors.white,
              ),
              title: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const ContactUs(),
                    ),
                  );
                },
                child: Text(
                  S.of(context).contact_us,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: AppColors.white),
                ),
              ),
            ),
            customDivider,
            ListTile(
              leading: const Icon(
                Icons.settings,
                size: 30,
                color: AppColors.white,
              ),
              title: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const SettingsPage(),
                    ),
                  );
                },
                child: Text(
                  S.of(context).settings,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: AppColors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 130,
            ),
            customDivider,
            ListTile(
              leading: const Icon(
                Icons.logout,
                size: 30,
                color: AppColors.white,
              ),
              title: GestureDetector(
                onTap: () {
                  context.read<AuthCubit>().signOut();
                },
                child: Text(
                  S.of(context).log_out,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: AppColors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
