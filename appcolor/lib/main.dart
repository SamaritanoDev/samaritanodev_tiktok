import 'package:appcolor/const/colors.dart';
import 'package:appcolor/pages/screen_card.dart';
import 'package:appcolor/widgets/card_small.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo',
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: ColorsMyApp.primarycolor,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorsMyApp.primarycolor,
          elevation: 0,
          title: const Text(
            'Dev Day 4 Women',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CardPeque(),
            ],
          ),
        ),
      ),
      routes: {
        '/cardImage': (context) => const CardScreen(),
      },
    );
  }
}
