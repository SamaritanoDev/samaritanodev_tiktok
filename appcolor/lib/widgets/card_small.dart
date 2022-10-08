import 'package:flutter/material.dart';

class CardPeque extends StatelessWidget {
  const CardPeque({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text(
        'Widgets de flutter',
        style: TextStyle(
          color: Color(0xff0336ff),
        ),
      ),
      subtitle: Text(
        'stack, card, listTile',
        style: TextStyle(
          color: Color(0xff0336ff),
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: Color(0xff0336ff),
      ),
    );
  }
}
