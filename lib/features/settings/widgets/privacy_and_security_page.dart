import 'package:flutter/material.dart';
import 'package:flutter_shop/app/core/theme/app_colors.dart';
import 'package:flutter_shop/features/settings/widgets/components/save_button.dart';
import 'package:flutter_shop/features/settings/widgets/custom_text_field.dart';
import 'package:flutter_shop/features/settings/widgets/security_content.dart';
import 'package:flutter_shop/features/settings/widgets/settings_app_bar.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SettingsAppBar(
        title: S.of(context).privacy_security,
      ),
      body: ListView(
        children: [
          SecurityContent(
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
                text: S.of(context).current_password,
                suffixIcon: const Icon(
                  Icons.lock_outline,
                  color: AppColors.greyLight,
                ),
              ),
            ),
          if (_showChangePassword)
            Padding(
              padding: _padding,
              child: CustomTextField(
                text: S.of(context).new_password,
                suffixIcon: const Icon(
                  Icons.lock_outline,
                  color: AppColors.greyLight,
                ),
              ),
            ),
          if (_showChangePassword)
            Padding(
              padding: _padding,
              child: CustomTextField(
                text: S.of(context).confirm_new_password,
                suffixIcon: const Icon(
                  Icons.lock_outline,
                  color: AppColors.greyLight,
                ),
              ),
            ),
          if (_showChangePassword)
            Padding(
              padding: _padding,
              child: SaveButton(
                onPressed: () {},
              ),
            ),
          SecurityContent(
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
                text: S.of(context).new_e_mail,
                suffixIcon: const Icon(
                  Icons.mail_outline,
                  color: AppColors.greyLight,
                ),
              ),
            ),
          if (_showChangeEmail)
            Padding(
              padding: _padding,
              child: CustomTextField(
                text: S.of(context).password,
                suffixIcon: const Icon(
                  Icons.mail_outline,
                  color: AppColors.greyLight,
                ),
              ),
            ),
          if (_showChangeEmail)
            Padding(
              padding: _padding,
              child: SaveButton(
                onPressed: () {},
              ),
            ),
        ],
      ),
    );
  }
}
