import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/app/core/theme/app_colors.dart';
import 'package:flutter_shop/features/product/cubit/product_cubit.dart';
import 'package:flutter_shop/features/product/widgets/components/buy_now_button.dart';
import 'package:flutter_shop/features/product/widgets/size_selection.dart';
import 'package:flutter_shop/generated/l10n.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({
    super.key,
  });

  final EdgeInsetsGeometry customPadding = const EdgeInsets.only(right: 10);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit(),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: AppColors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.white,
              ),
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
        ),
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 420,
              child: Image.asset(
                'assets/start.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 360,
              left: 0,
              right: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 25,
                    top: 25,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        S.of(context).hoodie,
                        style: const TextStyle(
                          color: AppColors.dark,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 35),
                        child: Text(
                          S.of(context).price,
                          style: const TextStyle(
                            color: AppColors.dark,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 440,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                  right: 15,
                ),
                child: Text(
                  S.of(context).content,
                  style: const TextStyle(
                    color: AppColors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 620,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    Padding(
                      padding: customPadding,
                      child: SizeSelection(
                        size: S.of(context).s,
                      ),
                    ),
                    Padding(
                      padding: customPadding,
                      child: SizeSelection(
                        size: S.of(context).m,
                      ),
                    ),
                    Padding(
                      padding: customPadding,
                      child: SizeSelection(
                        size: S.of(context).l,
                      ),
                    ),
                    SizeSelection(
                      size: S.of(context).xl,
                    ),
                  ],
                ),
              ),
            ),
            const Positioned(
              top: 680,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                child: BuyNowButton(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
