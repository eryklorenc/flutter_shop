import 'package:flutter/material.dart';
import 'package:flutter_shop/app/core/theme/app_colors.dart';
import 'package:flutter_shop/app/core/theme/app_text_theme_extension.dart';
import 'package:flutter_shop/features/auth/auth_page.dart';
import 'package:flutter_shop/features/welcome/widgets/components/welcome_button.dart';
import 'package:flutter_shop/gen/assets.gen.dart';
import 'package:flutter_shop/generated/l10n.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Assets.start1.image().image,
            colorFilter: ColorFilter.mode(
              AppColors.dark.withOpacity(0.8),
              BlendMode.dstATop,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 300, bottom: 10),
              child: Center(
                child: Text(
                  S
                      .of(context)
                      .discover_the_latest_in_athletic_footwear_and_apparel,
                  style: Theme.of(context).xTextTheme.notification0,
                ),
              ),
            ),
            WelcomeButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const AuthPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
