import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/app/core/common/custom_app_bar.dart';
import 'package:flutter_shop/app/core/theme/app_colors.dart';
import 'package:flutter_shop/app/core/theme/app_text_theme_extension.dart';
import 'package:flutter_shop/app/core/utils/injection_container.dart';
import 'package:flutter_shop/features/profile/cubit/profile_page_cubit.dart';
import 'package:flutter_shop/generated/l10n.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    super.key,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final String? email = FirebaseAuth.instance.currentUser?.email;

    return BlocProvider(
      create: (context) => getIt<ProfilePageCubit>(),
      child: BlocBuilder<ProfilePageCubit, ProfilePageState>(
        builder: (context, state) {
          context.read<ProfilePageCubit>().initSharedPreferences();
          return Scaffold(
            backgroundColor: AppColors.white,
            appBar: CustomAppBar(
              title: S.of(context).profile,
            ),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Center(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            context.read<ProfilePageCubit>().changeImage();
                          },
                          child: CircleAvatar(
                            backgroundColor: AppColors.dark,
                            radius: 70,
                            backgroundImage: state.currentImageFile != null
                                ? FileImage(state.currentImageFile!)
                                : null,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: TextButton(
                            onPressed: () {
                              context.read<ProfilePageCubit>().changeImage();
                            },
                            child: Text(
                              S.of(context).change_your_profile_picture,
                              style: Theme.of(context).xTextTheme.h0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 50,
                          ),
                          child: TextField(
                            readOnly: true,
                            decoration: InputDecoration(
                              hintText: email,
                              filled: true,
                              fillColor: AppColors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
