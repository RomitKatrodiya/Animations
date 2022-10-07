import 'dart:math';

import 'package:flutter/material.dart';

class Task6 extends StatefulWidget {
  const Task6({Key? key}) : super(key: key);

  @override
  State<Task6> createState() => _Task6State();
}

class _Task6State extends State<Task6> with TickerProviderStateMixin {
  late AnimationController animationController;

  double lowerBound = 0;
  double upperBound = pi * 2;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller();
  }

  controller() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
      //  For Control being and end Value of Animation Controller
      lowerBound: lowerBound,
      upperBound: upperBound,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task 6"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            lowerBound = 0;
            upperBound = pi * 2;
            animationController.dispose();
            controller();
          });
        },
        child: const Icon(Icons.restart_alt),
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
