import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/app/core/common/custom_app_bar.dart';
import 'package:flutter_shop/app/core/config/enums.dart';
import 'package:flutter_shop/app/core/theme/app_colors.dart';
import 'package:flutter_shop/app/core/utils/injection_container.dart';
import 'package:flutter_shop/features/auth/cubit/auth_cubit.dart';
import 'package:flutter_shop/features/settings/widgets/components/save_button.dart';
import 'package:flutter_shop/features/settings/widgets/custom_text_field.dart';
import 'package:flutter_shop/features/settings/widgets/security_content.dart';
import 'package:flutter_shop/generated/l10n.dart';

class PrivacyAndSecurityPage extends StatefulWidget {
  const PrivacyAndSecurityPage({
    super.key,
  });

  @override
  PrivacyAndSecurityPageState createState() => PrivacyAndSecurityPageState();
}

class PrivacyAndSecurityPageState extends State<PrivacyAndSecurityPage> {
  bool _showChangePassword = false;
  bool _showChangeEmail = false;
  static const EdgeInsets _padding =
      EdgeInsets.only(left: 16, top: 16, right: 16);
  TextEditingController currentPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmNewPasswordController = TextEditingController();
  TextEditingController newEmailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthCubit>(),
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.white,
            appBar: CustomAppBar(
              title: S.of(context).privacy_security,
            ),
            body: ListView(
              children: [
                SecurityContent(
                  leading: const Icon(
                    Icons.lock_outline,
                    color: AppColors.dark,
                  ),
                  title: S.of(context).change_password,
                  icon: Icon(
                    _showChangePassword
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    color: AppColors.dark,
                  ),
                  onTap: () {
                    setState(
                      () {
                        _showChangePassword = !_showChangePassword;
                      },
                    );
                  },
                ),
                if (_showChangePassword)
                  Padding(
                    padding: _padding,
                    child: CustomTextField(
                      obscureText: true,
                      controller: currentPasswordController,
                      text: S.of(context).current_password,
                      suffixIcon: const Icon(
                        Icons.lock_outline,
                        color: AppColors.dark,
                      ),
                    ),
                  ),
                if (_showChangePassword)
                  Padding(
                    padding: _padding,
                    child: CustomTextField(
                      obscureText: true,
                      controller: newPasswordController,
                      text: S.of(context).new_password,
                      suffixIcon: const Icon(
                        Icons.lock_outline,
                        color: AppColors.dark,
                      ),
                    ),
                  ),
                if (_showChangePassword)
                  Padding(
                    padding: _padding,
                    child: CustomTextField(
                      obscureText: true,
                      controller: confirmNewPasswordController,
                      text: S.of(context).confirm_new_password,
                      suffixIcon: const Icon(
                        Icons.lock_outline,
                        color: AppColors.dark,
                      ),
                    ),
                  ),
                if (_showChangePassword)
                  Padding(
                    padding: _padding,
                    child: SaveButton(
                      onPressed: () {
                        final currentPassword = currentPasswordController.text;
                        final newPassword = newPasswordController.text;
                        final confirmNewPassword =
                            confirmNewPasswordController.text;

                        if (newPassword == confirmNewPassword) {
                          context
                              .read<AuthCubit>()
                              .changePassword(
                                oldPassword: currentPassword,
                                newPassword: newPassword,
                              )
                              .then((status) {
                            if (state.status == Status.success) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    S.of(context).password_has_been_changed,
                                  ),
                                  backgroundColor: AppColors.dark,
                                ),
                              );
                            }
                          });
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                S.of(context).error_password_does_not_match,
                              ),
                              backgroundColor: AppColors.dark,
                            ),
                          );
                        }
                      },
                    ),
                  ),
                SecurityContent(
                  leading: const Icon(
                    Icons.mail_outline,
                    color: AppColors.dark,
                  ),
                  onTap: () {
                    setState(
                      () {
                        _showChangeEmail = !_showChangeEmail;
                      },
                    );
                  },
                  icon: Icon(
                    _showChangeEmail
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    color: AppColors.dark,
                  ),
                  title: S.of(context).change_e_mail,
                ),
                if (_showChangeEmail)
                  Padding(
                    padding: _padding,
                    child: CustomTextField(
                      obscureText: false,
                      controller: newEmailController,
                      text: S.of(context).new_e_mail,
                      suffixIcon: const Icon(
                        Icons.mail_outline,
                        color: AppColors.dark,
                      ),
                    ),
                  ),
                if (_showChangeEmail)
                  Padding(
                    padding: _padding,
                    child: CustomTextField(
                      obscureText: true,
                      controller: passwordController,
                      text: S.of(context).password,
                      suffixIcon: const Icon(
                        Icons.mail_outline,
                        color: AppColors.dark,
                      ),
                    ),
                  ),
                if (_showChangeEmail)
                  Padding(
                    padding: _padding,
                    child: SaveButton(
                      onPressed: () async {
                        final newEmail = newEmailController.text;
                        final password = passwordController.text;
                        if (newEmail.isNotEmpty && password.isNotEmpty) {
                          context.read<AuthCubit>().changeEmail(
                                newEmail: newEmail,
                                password: password,
                              );
                          if (state.status == Status.success) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content:
                                    Text(S.of(context).email_has_been_changed),
                                backgroundColor: AppColors.dark,
                              ),
                            );
                          } else if (state.status == Status.error) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  S
                                      .of(context)
                                      .an_error_occurred_while_changing_the_email_address,
                                ),
                                backgroundColor: AppColors.dark,
                              ),
                            );
                          }
                        }
                      },
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
