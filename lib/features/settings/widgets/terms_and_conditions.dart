import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/app/core/common/custom_app_bar.dart';
import 'package:flutter_shop/app/core/theme/app_colors.dart';
import 'package:flutter_shop/app/core/utils/injection_container.dart';
import 'package:flutter_shop/features/settings/cubit/settings_cubit.dart';
import 'package:flutter_shop/generated/l10n.dart';

class TermsAndConditionsPage extends StatelessWidget {
  const TermsAndConditionsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SettingsCubit>()..fetchComments(),
      child: BlocBuilder<SettingsCubit, SettingsState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const CircularProgressIndicator();
          } else if (state.errorMessage.isNotEmpty) {
            return Text(S.of(context).there_was_an_error);
          } else {
            final comments = state.comments;

            return Scaffold(
              appBar: CustomAppBar(
                title: S.of(context).terms_and_conditions,
              ),
              body: ListView.builder(
                itemCount: comments.length,
                itemBuilder: (BuildContext context, int index) {
                  final comment = comments[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, bottom: 10),
                        child: Text(
                          comment.name,
                          style: const TextStyle(color: AppColors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, left: 5),
                        child: Text(
                          comment.body,
                          style: const TextStyle(color: AppColors.greyLight),
                        ),
                      ),
                    ],
                  );
                },
              ),
            );
          }
        },
      ),
    );
  }
}
