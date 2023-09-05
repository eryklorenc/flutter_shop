import 'package:flutter/material.dart';
import 'package:flutter_shop/app/core/theme/app_colors.dart';
import 'package:flutter_shop/features/contact_us/widgets/details_widget.dart';
import 'package:flutter_shop/generated/l10n.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 33,
            ),
            color: AppColors.dark,
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 10),
              child: CircleAvatar(
                backgroundColor: AppColors.dark,
                radius: 50,
                child: Icon(
                  Icons.person,
                  color: AppColors.white,
                  size: 43,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
              left: 20,
              right: 20,
            ),
            child: Column(
              children: [
                DetailsWidget(
                  icon: const Icon(
                    Icons.mail,
                    color: AppColors.white,
                    size: 50,
                  ),
                  text: S.of(context).me,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: DetailsWidget(
                    icon: const Icon(
                      Icons.web_rounded,
                      color: AppColors.white,
                      size: 50,
                    ),
                    text: S.of(context).github,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
