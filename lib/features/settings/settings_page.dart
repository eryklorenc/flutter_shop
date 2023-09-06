import 'package:flutter/material.dart';
import 'package:flutter_shop/app/core/theme/app_colors.dart';
import 'package:flutter_shop/features/settings/widgets/setting_option.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          S.of(context).settings,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
            ),
            color: AppColors.dark,
          ),
        ),
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
              onTap: () {},
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
              onTap: () {},
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
              onTap: () {},
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
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
