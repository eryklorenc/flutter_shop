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
          'Flutter Clothes',
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
                        color: Colors.black),
                  ),
                ),
              ),
              if (womenButtonSelected)
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RecommendedCard(
                        image: AssetImage('assets/clothesW3.jpg'),
                        name: 'Black Pants',
                        price: '20€',
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      RecommendedCard(
                        image: AssetImage('assets/clothesW1.jpg'),
                        name: 'Colorful Hoodie',
                        price: '35€',
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      RecommendedCard(
                        image: AssetImage('assets/clothesW2.jpg'),
                        name: 'Black Hoodie',
                        price: '28€',
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      RecommendedCard(
                        image: AssetImage('assets/clothesW3.jpg'),
                        name: 'Black T-shirt',
                        price: '10€',
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      RecommendedCard(
                        image: AssetImage('assets/clothesW1.jpg'),
                        name: 'Hoodie',
                        price: '30€',
                      ),
                    ],
                  ),
                ),
              if (menButtonSelected)
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RecommendedCard(
                        image: AssetImage('assets/clothes1.jpg'),
                        name: 'Black Pants',
                        price: '24€',
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      RecommendedCard(
                        image: AssetImage('assets/clothes2.jpg'),
                        name: 'Black Hoodie',
                        price: '15€',
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      RecommendedCard(
                        image: AssetImage('assets/clothes3.jpg'),
                        name: 'Venom Hoodie',
                        price: '26€',
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      RecommendedCard(
                        image: AssetImage('assets/clothes4.jpg'),
                        name: 'Flame Hoodie',
                        price: '10€',
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      RecommendedCard(
                        image: AssetImage('assets/clothes5.jpg'),
                        name: 'Beige Hoodie',
                        price: '40€',
                      ),
                    ],
                  ),
                ),
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
                    color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const Image(
                        image: AssetImage('assets/start1.jpg'),
                        width: 150,
                        height: 200,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Orange Hoodie',
                      style: Theme.of(context).textTheme.titleSmall,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    Text(
                      "50€",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const Image(
                        image: AssetImage('assets/start.jpg'),
                        width: 150,
                        height: 200,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Red Handbag',
                      style: Theme.of(context).textTheme.titleSmall,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    Text(
                      "5€",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
