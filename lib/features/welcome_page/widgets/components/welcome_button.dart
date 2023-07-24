import 'package:flutter/material.dart';
import 'package:flutter_shop/features/auth/auth_page.dart';
import 'package:flutter_shop/app/core/theme/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        fixedSize: const Size(224, 48),
        backgroundColor: AppColors.primary,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Get Started",
            style: GoogleFonts.teko(color: AppColors.dark, fontSize: 32),
          ),
        ],
      ),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => const AuthPage(),
          ),
        );
      },
    );
  }
}
