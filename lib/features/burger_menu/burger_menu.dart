import 'package:flutter/material.dart';
import 'package:flutter_shop/app/core/theme/app_colors.dart';
import 'package:flutter_shop/features/burger_menu/widgets/menu_screen.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class BurgerMenu extends StatelessWidget {
  const BurgerMenu({
    super.key,
    required this.mainScreen,
    required this.zoomDrawerController,
  });

  final Widget mainScreen;
  final ZoomDrawerController zoomDrawerController;

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      borderRadius: 24.0,
      showShadow: true,
      drawerShadowsBackgroundColor: AppColors.white.withOpacity(0.33),
      shadowLayer1Color: Colors.transparent,
      angle: 0.0,
      menuBackgroundColor: AppColors.black,
      slideWidth: MediaQuery.of(context).size.width * 0.85,
      controller: zoomDrawerController,
      style: DrawerStyle.defaultStyle,
      openCurve: Curves.fastOutSlowIn,
      closeCurve: Curves.bounceIn,
      menuScreen: const MenuScreen(),
      mainScreen: mainScreen,
    );
  }
}
