import 'package:flutter/material.dart';

class Task2 extends StatefulWidget {
  const Task2({Key? key}) : super(key: key);

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  var crossFade = CrossFadeState.showFirst;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Task 2"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: () {
            setState(() {
              (crossFade == CrossFadeState.showFirst)
                  ? crossFade = CrossFadeState.showSecond
                  : crossFade = CrossFadeState.showFirst;
            });
          },
          child: AnimatedCrossFade(
            crossFadeState: crossFade,
            firstChild: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.orange.shade700,
                shape: BoxShape.circle,
              ),
            ),
            secondChild: Image.asset("assets/images/mars.png", height: 200),
            duration: const Duration(milliseconds: 500),
          ),
        ),
      ),
    );
  }
}
