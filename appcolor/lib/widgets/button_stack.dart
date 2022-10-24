import 'package:appcolor/const/colors.dart';
import 'package:flutter/material.dart';

class ButtonStack extends StatelessWidget {
  const ButtonStack({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: Center(
        child: Ink(
          decoration: const ShapeDecoration(
            color: Colors.lightBlue,
            shape: CircleBorder(),
          ),
          child: IconButton(
              //color: Colors.white,
              onPressed: () => print('Hello Women'),
              icon: const Icon(
                Icons.favorite,
                color: ColorsMyApp.secondarycolor,
              )),
        ),
      ),
    );
  }
}
