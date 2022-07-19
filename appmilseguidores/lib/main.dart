import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tik tok'),
        ),
        body: Stack(
          children: const [Grand(), CardBanner()],
        ),
      ),
    );
  }
}

class Grand extends StatefulWidget {
  const Grand({Key? key}) : super(key: key);

  @override
  State<Grand> createState() => _GrandState();
}

class _GrandState extends State<Grand> {
  late ConfettiController _controllerCenter;

  @override
  void initState() {
    _controllerCenter =
        ConfettiController(duration: const Duration(seconds: 10));
    _controllerCenter.play();
    super.initState();
  }

  @override
  void dispose() {
    _controllerCenter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ConfettiWidget(
      confettiController: _controllerCenter,
      blastDirectionality: BlastDirectionality.explosive,
      particleDrag: 0.05,
      emissionFrequency: 0.05,
      numberOfParticles: 50,
      gravity: 0.05,
      shouldLoop: true,
      colors: const [
        Colors.green,
        Colors.blue,
        Colors.pink,
        Colors.orange,
        Colors.purple
      ], // manually specify the colors to be used
    );
  }
}

//class confeti
class CardBanner extends StatelessWidget {
  const CardBanner({Key? key}) : super(key: key);
  final String url =
      'https://p16-sign-va.tiktokcdn.com/tos-maliva-avt-0068/721afeeb256ebe659591c8dd7b6864d6~c5_100x100.jpeg?x-expires=1657940400&x-signature=fMUZq3rumDOn559ga6g65GPszHA%3D';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.pink,
        child: Container(
          padding: const EdgeInsets.all(20),
          width: 250,
          height: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 50,
                    backgroundImage: NetworkImage(url),
                  ),
                  const AvatarWidget(),
                ],
              ),
              const BottomText(),
            ],
          ),
        ),
      ),
    );
  }
}

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 75,
      right: 5,
      child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.pink,
              width: 2,
            ),
            color: Colors.cyan,
            borderRadius: BorderRadius.circular(30),
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          )),
    );
  }
}

class BottomText extends StatelessWidget {
  const BottomText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          height: 5,
        ),
        Text(
          "@samaritano.dev",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
          ),
          title: Text('1060'),
          subtitle: Text('seguidores'),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Gracias por seguirme",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.normal, fontSize: 18),
        ),
      ],
    );
  }
}
