import 'package:flutter/material.dart';
import 'package:flutter_shop/app/core/theme/app_colors.dart';

class DetailsWidget extends StatelessWidget {
  final String text;
  final Icon icon;

  const DetailsWidget({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.dark,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 5,
              top: 3,
              bottom: 3,
            ),
            child: icon,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              text,
              style: const TextStyle(
                color: AppColors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
