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
        primaryColor: const Color(0xffffde03),
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CardPeque(),
              SizedBox(height: 20),
              CardImagePink(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => print('Hello World'),
          backgroundColor: const Color(0xff0336ff),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class CardImagePink extends StatelessWidget {
  const CardImagePink({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String url =
        'https://nypost.com/wp-content/uploads/sites/2/2020/01/usa-tech_google-amazon.jpg?quality=75&amp;strip=all&amp;w=1024';

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Card(
            color: const Color(0xff0336ff),
            elevation: 10,
            child: Image(
              height: 300,
              image: NetworkImage(url),
            ),
          ),
          const Positioned(top: 0, right: 0, child: BannerB()),
        ],
      ),
    );
  }
}

class BannerB extends StatelessWidget {
  const BannerB({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffffde03),
      height: 100,
      width: 100,
      child: FittedBox(
        fit: BoxFit.contain,
        child: IconButton(
            color: const Color(0xff0336ff),
            onPressed: () => print('Hello World'),
            icon: const Icon(
              Icons.favorite,
              color: Colors.black,
            )),
      ),
    );
  }
}
