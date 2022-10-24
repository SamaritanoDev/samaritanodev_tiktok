import 'package:appcolor/const/colors.dart';
import 'package:flutter/material.dart';

class BannerImage extends StatelessWidget {
  const BannerImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String url =
        'https://nypost.com/wp-content/uploads/sites/2/2020/01/usa-tech_google-amazon.jpg?quality=75&amp;strip=all&amp;w=1024';

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        alignment: Alignment.topCenter,
        children: const [
          Card(
            color: ColorsMyApp.primarycolor,
            elevation: 10,
            child: Image(
              height: 300,
              image: AssetImage('assets/bannerimage.png'),
            ),
          ),
          Positioned(top: 3.5, right: 3, child: _ButtonStack()),
        ],
      ),
    );
  }
}

class _ButtonStack extends StatelessWidget {
  const _ButtonStack();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _cardBorders(),
      height: 50,
      width: 50,
      child: FittedBox(
        fit: BoxFit.contain,
        child: IconButton(
            onPressed: () => print('Hello World Women'),
            icon: const Icon(
              Icons.favorite,
              color: Colors.black,
            )),
      ),
    );
  }

  BoxDecoration _cardBorders() => BoxDecoration(
        color: ColorsMyApp.secondarycolor,
        borderRadius: BorderRadius.circular(12),
      );
}
