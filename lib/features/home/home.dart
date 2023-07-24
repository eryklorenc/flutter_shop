import 'package:flutter/material.dart';
import 'package:flutter_shop/app/core/theme/app_colors.dart';
import 'package:flutter_shop/features/home/widgets/best_selling_content.dart';
import 'package:flutter_shop/features/home/widgets/men_button_content.dart';
import 'package:flutter_shop/features/home/widgets/women_button_content.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

bool menButtonSelected = false;
bool womenButtonSelected = false;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white2,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0.0,
        title: const Text(
          'Flutter Clothes',
          style: TextStyle(
            color: AppColors.dark,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          color: AppColors.dark,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
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
                          decoration: const BoxDecoration(
                            color: AppColors.grey2,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                menButtonSelected = true;
                                womenButtonSelected = false;
                              });
                            },
                            style: menButtonSelected
                                ? ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                      AppColors.primary,
                                    ),
                                  )
                                : null,
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
                          decoration: const BoxDecoration(
                            color: AppColors.grey2,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                womenButtonSelected = true;
                                menButtonSelected = false;
                              });
                            },
                            style: womenButtonSelected
                                ? ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                      AppColors.primary,
                                    ),
                                  )
                                : null,
                            child: const Text(
                              'Women',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
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
              const Padding(
                padding: EdgeInsets.all(16),
                child: Align(
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
              if (womenButtonSelected) const WomenButtonContent(),
              if (menButtonSelected) const MenButtonContent(),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Divider(
            thickness: 2,
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Align(
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
          const BestSellingContent(),
        ],
      ),
    );
  }
}
