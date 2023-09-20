import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/app/core/theme/app_colors.dart';
import 'package:flutter_shop/data/datasources/flutter_shop_api_datasource.dart';
import 'package:flutter_shop/domain/repositories/settings_repository.dart';
import 'package:flutter_shop/features/settings/cubit/settings_cubit.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          SettingsCubit(SettingsRepository(FlutterShopApiDatasource(Dio()))),
      child: BlocBuilder<SettingsCubit, SettingsState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const CircularProgressIndicator();
          } else if (state.errorMessage.isNotEmpty) {
            return Text('Wystąpił błąd: ${state.errorMessage}');
          } else {
            final comments = state.comments;

            return Scaffold(
              body: ListView.builder(
                itemCount: comments.length,
                itemBuilder: (BuildContext context, int index) {
                  final comment = comments[index];
                  return ListTile(
                    title: Text(
                      comment.name,
                      style: const TextStyle(color: AppColors.black),
                    ),
                    subtitle: Text(comment.email),
                    trailing: Text(comment.body),
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
