import 'package:flutter/material.dart';

class Task7 extends StatefulWidget {
  const Task7({Key? key}) : super(key: key);

  @override
  State<Task7> createState() => _Task7State();
}

class _Task7State extends State<Task7> with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation sizeAnimation;
  late Animation colorAnimation;

  double being = 300;
  double end = 100;
  Color color1 = Colors.lightBlue;
  Color color2 = Colors.black;

  bool isStop = false;

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
    );

    sizeAnimation = Tween(begin: being, end: end).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(
          0,
          0.5,
          curve: Curves.bounceOut,
        ), // With Curves Effects
      ),
    );
    colorAnimation = ColorTween(begin: color1, end: color2).animate(
      CurvedAnimation(
        parent: animationController,
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
        title: const Text("Task 7"),
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
                isStop = true;
                animationController.forward();
              },
              child: const Text("Animate"),
            ),
            ElevatedButton(
              onPressed: () {
                isStop = true;
                animationController.reverse();
              },
              child: const Text("Revers Animate"),
            ),
            ElevatedButton(
              onPressed: () {
                animationController.repeat();
                setState(() {
                  isStop = false;
                });
                repeatAnimation();
              },
              child: const Text("Repeat Animate"),
            ),
            ElevatedButton(
              onPressed: () {
                isStop = true;
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

  repeatAnimation() {
    Future.delayed(
      const Duration(milliseconds: 2000),
      () => isStop
          ? null
          : setState(() {
              (being == 300) ? being = 100 : being = 300;
              (end == 100) ? end = 300 : end = 100;
              (color1 == Colors.lightBlue)
                  ? color1 = Colors.black
                  : color1 = Colors.lightBlue;
              (color2 == Colors.black)
                  ? color2 = Colors.lightBlue
                  : color2 = Colors.black;
              animationController.dispose();
              controller();
              animationController.repeat();
              repeatAnimation();
            }),
    );
  }
}
