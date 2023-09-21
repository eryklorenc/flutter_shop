import 'package:flutter/material.dart';
import 'package:flutter_shop/app/core/theme/app_colors.dart';
import 'package:flutter_shop/generated/l10n.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    super.key,
    required this.zoomDrawerController,
  });

  final ZoomDrawerController zoomDrawerController;
  @override
  Size get preferredSize => const Size.fromHeight(64);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      elevation: 0,
      title: Text(
        S.of(context).flutter_shop,
        style: const TextStyle(
          color: AppColors.dark,
        ),
      ),
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          if (zoomDrawerController.isOpen!()) {
            zoomDrawerController.close!();
          } else {
            zoomDrawerController.open!();
          }
        },
        icon: const Icon(Icons.menu),
        color: AppColors.dark,
      ),
    );
  }
}
