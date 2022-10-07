import 'package:flutter/material.dart';

class StaggeredAnimation extends StatefulWidget {
  const StaggeredAnimation({Key? key}) : super(key: key);

  @override
  State<StaggeredAnimation> createState() => _StaggeredAnimationState();
}

class _StaggeredAnimationState extends State<StaggeredAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation sizeAnimation;
  late Animation colorAnimation;

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

    // Basic
    // sizeAnimation =
    //     Tween(begin: 300.0, end: 100.0).animate(animationController);
    // colorAnimation = ColorTween(begin: Colors.lightBlue, end: Colors.black)
    //     .animate(animationController);

    // With Curves Effects
    // sizeAnimation = Tween(begin: 300.0, end: 100.0).animate(
    //   CurvedAnimation(
    //     parent: animationController,
    //     curve: Curves.bounceOut,
    //   ),
    // );
    // colorAnimation =
    //     ColorTween(begin: Colors.lightBlue, end: Colors.black).animate(
    //   CurvedAnimation(
    //     parent: animationController,
    //     curve: Curves.easeInOut,
    //   ),
    // );

    // Staggered Animation (Step By Step Animation)
    sizeAnimation = Tween(begin: 300.0, end: 100.0).animate(
      CurvedAnimation(
        parent: animationController,
        // curve: const Interval(0, 0.5), // Without Curves Effects
        curve: const Interval(
          0,
          0.5,
          curve: Curves.bounceOut,
        ), // With Curves Effects
      ),
    );
    colorAnimation =
        ColorTween(begin: Colors.lightBlue, end: Colors.black).animate(
      CurvedAnimation(
        parent: animationController,
        // curve: const Interval(0.5, 1),// Without Curves Effects
        curve: const Interval(
          0.5,
          1,
          curve: Curves.easeInOut,
        ), // With Curves Effects
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Staggered Animation"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            const Spacer(),
            AnimatedBuilder(
              animation: animationController,
              builder: (context, widget) => Container(
                color: colorAnimation.value,
                height: sizeAnimation.value,
                width: sizeAnimation.value,
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
