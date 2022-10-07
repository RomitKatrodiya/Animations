import 'package:flutter/material.dart';

class TweenChainingAnimation extends StatefulWidget {
  const TweenChainingAnimation({Key? key}) : super(key: key);

  @override
  State<TweenChainingAnimation> createState() => _TweenChainingAnimationState();
}

class _TweenChainingAnimationState extends State<TweenChainingAnimation>
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
    );

    sizeAnimation = TweenSequence([
      // weight = time Ex. 1 = (2000 millisecond / 4 ) Per item 500 milliseconds
      TweenSequenceItem(tween: Tween<double>(begin: 250, end: 50), weight: 1),
      TweenSequenceItem(tween: Tween<double>(begin: 50, end: 350), weight: 1),
      TweenSequenceItem(tween: Tween<double>(begin: 350, end: 100), weight: 1),
      TweenSequenceItem(tween: Tween<double>(begin: 100, end: 30), weight: 1),
    ]).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(
          0,
          0.5,
          curve: Curves.bounceOut,
        ),
      ),
    );
    colorAnimation =
        ColorTween(begin: Colors.lightBlue, end: Colors.black).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(
          0.5,
          1,
          curve: Curves.easeInOut,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tween Chaining Animation"),
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
