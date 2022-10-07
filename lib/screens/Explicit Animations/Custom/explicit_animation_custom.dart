import 'dart:math';

import 'package:flutter/material.dart';

class ExplicitAnimationCustom extends StatefulWidget {
  const ExplicitAnimationCustom({Key? key}) : super(key: key);

  @override
  State<ExplicitAnimationCustom> createState() =>
      _ExplicitAnimationCustomState();
}

class _ExplicitAnimationCustomState extends State<ExplicitAnimationCustom>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
      //  For Control being and end Value of Animation Controller
      lowerBound: 0,
      upperBound: pi * 2,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Explicit Animation Custom"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            const Spacer(),
            AnimatedBuilder(
              animation: animationController,
              child: Image.asset("assets/images/mars.png", height: 200),
              builder: (context, widget) => Transform.rotate(
                angle: animationController.value,
                child: widget,
              ),
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
