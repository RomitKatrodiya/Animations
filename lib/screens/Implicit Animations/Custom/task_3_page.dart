import 'dart:math';

import 'package:flutter/material.dart';

class Task3 extends StatefulWidget {
  const Task3({Key? key}) : super(key: key);

  @override
  State<Task3> createState() => _Task3State();
}

class _Task3State extends State<Task3> {
  bool isAnimate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task 3"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            isAnimate
                ? TweenAnimationBuilder(
                    curve: Curves.easeInOut,
                    tween: Tween<double>(begin: 0, end: pi * 2),
                    duration: const Duration(milliseconds: 3000),
                    builder: (context, double degreeVal, child) {
                      return Transform.rotate(
                        angle: degreeVal,
                        child: Image.asset(
                          "assets/images/mars.png",
                          height: 200,
                        ),
                      );
                    },
                  )
                : Image.asset(
                    "assets/images/mars.png",
                    height: 200,
                  ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isAnimate = true;
                });
                Future.delayed(
                  const Duration(milliseconds: 3000),
                  () => setState(() {
                    isAnimate = false;
                  }),
                );
              },
              child: const Text("Animate Mars"),
            ),
          ],
        ),
      ),
    );
  }
}
