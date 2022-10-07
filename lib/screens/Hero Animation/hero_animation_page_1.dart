import 'package:flutter/material.dart';

class HeroAnimationPage1 extends StatefulWidget {
  const HeroAnimationPage1({Key? key}) : super(key: key);

  @override
  State<HeroAnimationPage1> createState() => _HeroAnimationPage1State();
}

class _HeroAnimationPage1State extends State<HeroAnimationPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hero Animation Page 1"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed("hero_animation_page_2");
            },
            child: const Hero(
              tag: "logo",
              // flightShuttleBuilder: (flightContext, animation,
              //         flightDirection, fromHeroContext, toHeroContext) =>
              //     Icon(Icons.ac_unit, size: 150),

              // placeholderBuilder: (context, _, __) => Container(
              //   height: MediaQuery.of(context).size.height * 0.80,
              //   alignment: Alignment.bottomCenter,
              //   child: const CircularProgressIndicator(),
              // ), // Don't Use Because After Use This Animation Is not Properly Work.
              child: FlutterLogo(size: 100),
            ),
          ),
        ],
      ),
    );
  }
}
