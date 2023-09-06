import 'package:flutter/material.dart';
import 'package:flutter_shop/features/settings/widgets/settings_app_bar.dart';
import 'package:flutter_shop/generated/l10n.dart';

class PrivacyAndSecurityPage extends StatelessWidget {
  const PrivacyAndSecurityPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SettingsAppBar(
        title: S.of(context).privacy_security,
      ),
      body: const Center(
        child: Text('Tekst'),
      ),
    );
  }
}
