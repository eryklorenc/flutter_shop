import 'package:flutter/material.dart';
import 'package:flutter_shop/screens/widgets/recommended_card.dart';

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
      backgroundColor: const Color(0xFFf9f9f9),
      appBar: AppBar(
        backgroundColor: const Color(0xFFf9f9f9),
        elevation: 0.0,
        title: const Text(
          'Flutter Shoes',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          color: Colors.black,
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
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(
                              255,
                              221,
                              219,
                              219,
                            ),
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
                                            Colors.orange),
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
                            color: Color.fromARGB(
                              255,
                              221,
                              219,
                              219,
                            ),
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
                                            Colors.orange),
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
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Recommended for you',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RecommendedCard(),
                    SizedBox(
                      width: 5,
                    ),
                    RecommendedCard(),
                    SizedBox(
                      width: 5,
                    ),
                    RecommendedCard(),
                    SizedBox(
                      width: 5,
                    ),
                    RecommendedCard(),
                    SizedBox(
                      width: 5,
                    ),
                    RecommendedCard(),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Divider(
            thickness: 10,
          )
        ],
      ),
    );
  }
}
