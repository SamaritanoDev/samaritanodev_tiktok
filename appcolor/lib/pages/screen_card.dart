import 'package:appcolor/const/colors.dart';
import 'package:appcolor/widgets/banner_image.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (() => Navigator.pop(context)),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
        backgroundColor: ColorsMyApp.primarycolor,
        elevation: 0,
        title: const Text(
          'Dev Day 4 Women',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const Center(
        child: BannerImage(),
      ),
    );
  }
}
