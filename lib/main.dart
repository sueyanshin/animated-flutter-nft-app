import 'package:animated_flutter_nft_app/constants.dart';
import 'package:flutter/material.dart';

import 'screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NFT App',
      theme: ThemeData.light().copyWith(
          appBarTheme: const AppBarTheme().copyWith(
              backgroundColor: kPinkColor,
              elevation: 0,
              iconTheme: const IconThemeData(color: kWhiteColor))),
      home: const HomePage(),
    );
  }
}
