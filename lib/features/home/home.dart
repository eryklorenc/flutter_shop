import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/app/core/theme/app_colors.dart';
import 'package:flutter_shop/app/core/theme/app_text_theme_extension.dart';
import 'package:flutter_shop/features/burger_menu/burger_menu.dart';
import 'package:flutter_shop/features/home/cubit/home_cubit.dart';
import 'package:flutter_shop/features/home/widgets/best_selling_content.dart';
import 'package:flutter_shop/features/home/widgets/home_app_bar.dart';
import 'package:flutter_shop/features/home/widgets/men_button_content.dart';
import 'package:flutter_shop/features/home/widgets/women_button_content.dart';
import 'package:flutter_shop/generated/l10n.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final EdgeInsets defaultPadding = const EdgeInsets.all(16.0);
  final ZoomDrawerController zoomDrawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return BurgerMenu(
      zoomDrawerController: zoomDrawerController,
      mainScreen: BlocProvider(
        create: (context) => HomeCubit(),
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return Scaffold(
              backgroundColor: AppColors.white2,
              appBar: HomeAppBar(
                zoomDrawerController: zoomDrawerController,
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: defaultPadding,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                S.of(context).choose_a_category,
                                style: Theme.of(context).xTextTheme.body2,
                              ),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: state.menButtonSelected
                                          ? AppColors.primary
                                          : AppColors.grey2,
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(5),
                                      ),
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        context
                                            .read<HomeCubit>()
                                            .selectMenButton();
                                      },
                                      child: Text(
                                        S.of(context).men,
                                        style:
                                            Theme.of(context).xTextTheme.body3,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20.0,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: state.womenButtonSelected
                                          ? AppColors.primary
                                          : AppColors.grey2,
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(5),
                                      ),
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        context
                                            .read<HomeCubit>()
                                            .selectWomenButton();
                                      },
                                      child: Text(
                                        S.of(context).women,
                                        style:
                                            Theme.of(context).xTextTheme.body3,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: defaultPadding,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              S.of(context).recommended_for_you,
                              style: Theme.of(context).xTextTheme.body4,
                            ),
                          ),
                        ),
                        if (state.womenButtonSelected)
                          const WomenButtonContent(),
                        if (state.menButtonSelected) const MenButtonContent(),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: defaultPadding,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          S.of(context).best_selling,
                          style: Theme.of(context).xTextTheme.body4,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                      child: BestSellingContent(),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
