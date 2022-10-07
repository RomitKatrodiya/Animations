import 'package:flutter/material.dart';

class HeroAnimationPage2 extends StatefulWidget {
  const HeroAnimationPage2({Key? key}) : super(key: key);

  @override
  State<HeroAnimationPage2> createState() => _HeroAnimationPage2State();
}

class _HeroAnimationPage2State extends State<HeroAnimationPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hero Animation Page 2"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Hero(
              tag: "logo",

              // flightShuttleBuilder: (flightContext, animation, flightDirection,
              //         fromHeroContext, toHeroContext) =>
              //     Icon(Icons.add_box, size: 150),

              // placeholderBuilder: (context, _, __) => Container(
              //   height: MediaQuery.of(context).size.height * 0.80,
              //   alignment: Alignment.bottomCenter,
              //   child: const CircularProgressIndicator(),
              // ),  // Don't Use Because After Use This Animation Is not Properly Work.
              child: FlutterLogo(size: 250),
            ),
          ],
        ),
      ),
    );
  }
}
