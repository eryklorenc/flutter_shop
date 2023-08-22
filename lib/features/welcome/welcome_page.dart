import 'package:flutter/material.dart';
import 'package:flutter_shop/app/core/theme/app_colors.dart';
import 'package:flutter_shop/features/welcome/widgets/components/welcome_button.dart';
import 'package:flutter_shop/generated/l10n.dart';
import 'package:google_fonts/google_fonts.dart';

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
            image: const AssetImage('assets/start1.jpg'),
            colorFilter: ColorFilter.mode(
              AppColors.dark.withOpacity(0.8),
              BlendMode.dstATop,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 90,
              ),
              const SizedBox(height: 460),
              Center(
                child: Text(
                  S
                      .of(context)
                      .discover_the_latest_in_athletic_footwear_and_apparel,
                  style: GoogleFonts.teko(
                    color: AppColors.primary,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const WelcomeButton(),
            ],
          ),
        ),
      ),
    );
  }
}