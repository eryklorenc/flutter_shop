import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/app/core/theme/app_colors.dart';
import 'package:flutter_shop/app/core/theme/app_text_theme_extension.dart';
import 'package:flutter_shop/app/core/utils/injection_container.dart';
import 'package:flutter_shop/features/auth/cubit/auth_cubit.dart';
import 'package:flutter_shop/features/auth/widgets/auth_text_field.dart';
import 'package:flutter_shop/features/auth/widgets/components/auth_button.dart';
import 'package:flutter_shop/features/auth/widgets/components/login_button.dart';
import 'package:flutter_shop/generated/l10n.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final emailController = TextEditingController();
final passwordController = TextEditingController();

class _LoginPageState extends State<LoginPage> {
  var isCreatingAccount = false;
  var errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthCubit>(),
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                ),
              ),
              title: Text(
                isCreatingAccount == true
                    ? S.of(context).sign_up
                    : S.of(context).sign_in,
                style: Theme.of(context).xTextTheme.display1,
              ),
            ),
            backgroundColor: AppColors.white,
            resizeToAvoidBottomInset: false,
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 120),
                      child: Text(
                        isCreatingAccount == true
                            ? S.of(context).register_account
                            : S.of(context).welcome_back,
                        style: Theme.of(context).xTextTheme.display1,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Text(
                      isCreatingAccount == true
                          ? S.of(context).complete_your_details
                          : S.of(context).sign_in_with_your_email_and_password,
                      style: Theme.of(context).xTextTheme.body1,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, bottom: 30),
                      child: AuthTextField(
                        controller: emailController,
                        suffixIcon: const Icon(
                          Icons.email_outlined,
                          color: AppColors.dark,
                        ),
                        obscureText: false,
                        hintText: S.of(context).email0,
                      ),
                    ),
                    AuthTextField(
                      controller: passwordController,
                      suffixIcon: const Icon(
                        Icons.lock_outline,
                        color: AppColors.dark,
                      ),
                      obscureText: true,
                      hintText: S.of(context).password,
                    ),
                    Text(errorMessage),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 50,
                      width: 250,
                      child: LoginButton(
                        isCreatingAccount: isCreatingAccount,
                        onPressed: () async {
                          if (isCreatingAccount == true) {
                            try {
                              context.read<AuthCubit>().register(
                                    email: emailController.text,
                                    password: passwordController.text,
                                  );
                            } catch (error) {
                              setState(() {
                                errorMessage = error.toString();
                              });
                            }
                          } else {
                            try {
                              context.read<AuthCubit>().signIn(
                                    email: emailController.text,
                                    password: passwordController.text,
                                  );
                            } catch (error) {
                              setState(() {
                                errorMessage = error.toString();
                              });
                            }
                          }

                          try {
                            await FirebaseAuth.instance
                                .signInWithEmailAndPassword(
                              email: emailController.text,
                              password: passwordController.text,
                            );
                          } catch (error) {
                            setState(() {
                              errorMessage = error.toString();
                            });
                          }
                        },
                      ),
                    ),
                    if (isCreatingAccount == true) ...[
                      AuthButton(
                        onPressed: () {
                          setState(() {
                            isCreatingAccount = false;
                          });
                        },
                        accountInfo: S.of(context).already_have_an_account,
                        sign: S.of(context).sign_in,
                      ),
                    ],
                    if (isCreatingAccount == false) ...[
                      AuthButton(
                        onPressed: () {
                          setState(() {
                            isCreatingAccount = true;
                          });
                        },
                        accountInfo: S.of(context).dont_have_an_account,
                        sign: S.of(context).sign_up,
                      ),
                    ],
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
