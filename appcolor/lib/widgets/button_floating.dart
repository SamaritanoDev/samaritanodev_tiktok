import 'package:appcolor/const/colors.dart';
import 'package:flutter/material.dart';

class ButtonFloat extends StatelessWidget {
  const ButtonFloat({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => print('Hello World'),
      backgroundColor: ColorsMyApp.secondarycolor,
      child: const Icon(
        Icons.add,
        color: Colors.black,
      ),
    );
  }
}
