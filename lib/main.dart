import 'package:animations/screens/Explicit%20Animations/Built%20In/explicit_animation_built_in.dart';
import 'package:animations/screens/Explicit%20Animations/Built%20In/task_5_page.dart';
import 'package:animations/screens/Explicit%20Animations/Custom/explicit_animation_custom.dart';
import 'package:animations/screens/Explicit%20Animations/Custom/task_6_page.dart';
import 'package:animations/screens/Hero%20Animation/hero_animation_page_1.dart';
import 'package:animations/screens/Hero%20Animation/hero_animation_page_2.dart';
import 'package:animations/screens/Implicit%20Animations/Built%20In/implicit_animation_built_in.dart';
import 'package:animations/screens/Implicit%20Animations/Built%20In/task_1_page.dart';
import 'package:animations/screens/Implicit%20Animations/Built%20In/task_2_page.dart';
import 'package:animations/screens/Implicit%20Animations/Custom/implicit_animation_custom.dart';
import 'package:animations/screens/Implicit%20Animations/Custom/task_3_page.dart';
import 'package:animations/screens/Implicit%20Animations/Custom/task_4_page.dart';
import 'package:animations/screens/Staggered%20Animation/staggered_animation.dart';
import 'package:animations/screens/Staggered%20Animation/task_7_page.dart';
import 'package:animations/screens/Tween%20Chaining%20Animation/tween_chaining_animation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const HomePage(),
        "hero_animation_page_1": (context) => const HeroAnimationPage1(),
        "hero_animation_page_2": (context) => const HeroAnimationPage2(),
        "implicit_animation_built_in": (context) =>
            const ImplicitAnimationBuiltIn(),
        "task_1_page": (context) => const Task1(),
        "task_2_page": (context) => const Task2(),
        "implicit_animation_custom": (context) =>
            const ImplicitAnimationCustom(),
        "task_3_page": (context) => const Task3(),
        "task_4_page": (context) => const Task4(),
        "explicit_animation_built_in": (context) =>
            const ExplicitAnimationBuiltIn(),
        "task_5_page": (context) => const Task5(),
        "explicit_animation_custom": (context) =>
            const ExplicitAnimationCustom(),
        "task_6_page": (context) => const Task6(),
        "staggered_animation": (context) => const StaggeredAnimation(),
        "task_7_page": (context) => const Task7(),
        "tween_chaining_animation": (context) => const TweenChainingAnimation(),
      },
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var buttonStyle = OutlinedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
    padding: const EdgeInsets.all(12),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animations"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: ListView(
          children: [
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("hero_animation_page_1");
              },
              style: buttonStyle,
              child: const Text("Hero Animation"),
            ),
            const SizedBox(height: 8),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("implicit_animation_built_in");
              },
              style: buttonStyle,
              child: const Text("Implicit Animation Built In"),
            ),
            const SizedBox(height: 8),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("task_1_page");
              },
              style: buttonStyle,
              child: const Text("Task 1"),
            ),
            const SizedBox(height: 8),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("task_2_page");
              },
              style: buttonStyle,
              child: const Text("Task 2"),
            ),
            const SizedBox(height: 8),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("implicit_animation_custom");
              },
              style: buttonStyle,
              child: const Text("Implicit Animation Custom"),
            ),
            const SizedBox(height: 8),
            const SizedBox(height: 8),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("task_3_page");
              },
              style: buttonStyle,
              child: const Text("Task 3"),
            ),
            const SizedBox(height: 8),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("task_4_page");
              },
              style: buttonStyle,
              child: const Text("Task 4"),
            ),
            const SizedBox(height: 8),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("explicit_animation_built_in");
              },
              style: buttonStyle,
              child: const Text("Explicit Animation Built In"),
            ),
            const SizedBox(height: 8),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("task_5_page");
              },
              style: buttonStyle,
              child: const Text("Task 5"),
            ),
            const SizedBox(height: 8),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("explicit_animation_custom");
              },
              style: buttonStyle,
              child: const Text("Explicit Animation Custom"),
            ),
            const SizedBox(height: 8),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("task_6_page");
              },
              style: buttonStyle,
              child: const Text("Task 6"),
            ),
            const SizedBox(height: 8),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("staggered_animation");
              },
              style: buttonStyle,
              child: const Text("Staggered Animation"),
            ),
            const SizedBox(height: 8),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("task_7_page");
              },
              style: buttonStyle,
              child: const Text("Task 7"),
            ),
            const SizedBox(height: 8),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("tween_chaining_animation");
              },
              style: buttonStyle,
              child: const Text("Tween Chaining Animation"),
            ),
          ],
        ),
      ),
    );
  }
}
