import 'package:flutter/material.dart';

class Task5 extends StatefulWidget {
  const Task5({Key? key}) : super(key: key);

  @override
  State<Task5> createState() => _Task5State();
}

class _Task5State extends State<Task5> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
      //  For Control being and end Value of Animation Controller
      // lowerBound: 0,
      // upperBound: 1,
    );

    _animation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(0.9, 0.9), // Offset(x,y)
    ).animate(animationController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task 5"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SlideTransition(
            position: _animation,
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
    );
  }
}
