import 'package:appcolor/const/colors.dart';
import 'package:flutter/material.dart';

class CardPeque extends StatelessWidget {
  const CardPeque({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: const Text(
          'Widgets de flutter',
          style: TextStyle(
            color: ColorsMyApp.primarycolor,
          ),
        ),
        subtitle: const Text(
          'stack, card, listTile',
          style: TextStyle(
            color: ColorsMyApp.tertiarycolor,
          ),
        ),
        trailing: IconButton(
          onPressed: () => Navigator.pushNamed(context, '/cardImage'),
          icon: const Icon(
            Icons.arrow_forward_ios,
            color: ColorsMyApp.primarycolor,
          ),
        ));
  }
}
