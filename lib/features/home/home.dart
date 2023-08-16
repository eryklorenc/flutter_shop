import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/app/core/theme/app_colors.dart';
import 'package:flutter_shop/features/home/cubit/home_cubit.dart';
import 'package:flutter_shop/features/home/widgets/best_selling_content.dart';
import 'package:flutter_shop/features/home/widgets/custom_app_bar.dart';
import 'package:flutter_shop/features/home/widgets/men_button_content.dart';
import 'package:flutter_shop/features/home/widgets/women_button_content.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  final EdgeInsets defaultPadding = const EdgeInsets.all(16.0);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.white2,
            appBar: const CustomAppBar(),
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
                            const Text(
                              'Choose \na category',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: AppColors.dark,
                              ),
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
                                    child: const Text(
                                      'Men',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
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
                                    child: const Text(
                                      'Women',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
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
                        child: const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Recommended for you',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.dark,
                            ),
                          ),
                        ),
                      ),
                      if (state.womenButtonSelected) const WomenButtonContent(),
                      if (state.menButtonSelected) const MenButtonContent(),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: defaultPadding,
                    child: const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Best Selling',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.dark,
                        ),
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
    );
  }
}
