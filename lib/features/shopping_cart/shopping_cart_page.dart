import 'package:flutter/material.dart';
import 'package:flutter_shop/app/core/common/custom_app_bar.dart';
import 'package:flutter_shop/generated/l10n.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: S.of(context).shopping_cart,
      ),
      body: const Center(
        child: Text('Cart'),
      ),
    );
  }
}
