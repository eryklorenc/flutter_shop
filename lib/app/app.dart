import 'package:flutter/material.dart';
import 'package:flutter_shop/features/welcome_page/welcome_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: Colors.black,
      )),
      home: const WelcomePage(),
    );
  }
}
