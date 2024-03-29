import 'package:flutter/material.dart';
import 'package:flutter_shop/app/core/common/custom_app_bar.dart';
import 'package:flutter_shop/app/core/theme/app_colors.dart';
import 'package:flutter_shop/features/profile/profile_page.dart';
import 'package:flutter_shop/features/settings/widgets/privacy_and_security_page.dart';
import 'package:flutter_shop/features/settings/widgets/privacy_policy_page.dart';
import 'package:flutter_shop/features/settings/widgets/setting_option.dart';
import 'package:flutter_shop/features/settings/widgets/terms_and_conditions.dart';
import 'package:flutter_shop/generated/l10n.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({
    super.key,
  });

  static const EdgeInsets customEdgeInsetsTop = EdgeInsets.only(top: 20);
  static const Divider customDivider = Divider(
    thickness: 2,
    color: AppColors.dark,
    indent: 25,
    endIndent: 30,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppBar(
        title: S.of(context).settings,
      ),
      body: Column(
        children: [
          Padding(
            padding: customEdgeInsetsTop,
            child: SettingOption(
              icon: const Icon(
                Icons.edit_outlined,
                color: AppColors.dark,
                size: 28,
              ),
              title: S.of(context).edit_profile,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const ProfilePage(),
                  ),
                );
              },
            ),
          ),
          customDivider,
          Padding(
            padding: customEdgeInsetsTop,
            child: SettingOption(
              icon: const Icon(
                Icons.lock_outline,
                color: AppColors.dark,
                size: 28,
              ),
              title: S.of(context).privacy_security,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const PrivacyAndSecurityPage(),
                  ),
                );
              },
            ),
          ),
          customDivider,
          Padding(
            padding: customEdgeInsetsTop,
            child: SettingOption(
              icon: const Icon(
                Icons.lock_clock_outlined,
                color: AppColors.dark,
                size: 28,
              ),
              title: S.of(context).privacy_policy,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const PrivacyPolicyPage(),
                  ),
                );
              },
            ),
          ),
          customDivider,
          Padding(
            padding: customEdgeInsetsTop,
            child: SettingOption(
              icon: const Icon(
                Icons.book,
                color: AppColors.dark,
                size: 28,
              ),
              title: S.of(context).terms_and_conditions,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const TermsAndConditionsPage(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
