import 'package:flutter/material.dart';

class ExplicitAnimationBuiltIn extends StatefulWidget {
  const ExplicitAnimationBuiltIn({Key? key}) : super(key: key);

  @override
  State<ExplicitAnimationBuiltIn> createState() =>
      _ExplicitAnimationBuiltInState();
}

class _ExplicitAnimationBuiltInState extends State<ExplicitAnimationBuiltIn>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
      //  For Control being and end Value of Animation Controller
      // lowerBound: 0,
      // upperBound: 1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Explicit Animation Built In"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            const Spacer(),
            RotationTransition(
              turns: animationController,
              child: Image.asset("assets/images/mars.png", height: 200),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                animationController.forward();
              },
              child: const Text("Animate"),
            ),
            ElevatedButton(
              onPressed: () {
                animationController.reverse();
              },
              child: const Text("Revers Animate"),
            ),
            ElevatedButton(
              onPressed: () {
                animationController.repeat();
              },
              child: const Text("Repeat Animate"),
            ),
            ElevatedButton(
              onPressed: () {
                animationController.stop();
              },
              child: const Text("Stop"),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
