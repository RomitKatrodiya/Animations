import 'package:flutter/material.dart';

class Task4 extends StatefulWidget {
  const Task4({Key? key}) : super(key: key);

  @override
  State<Task4> createState() => _Task4State();
}

class _Task4State extends State<Task4> {
  double being = 12;
  double end = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task 4"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            being == 12 ? being = 2 : being = 12;
            end == 2 ? end = 12 : end = 2;
          });
        },
        child: const Icon(Icons.restart_alt),
      ),
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              "assets/images/road.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            alignment: const Alignment(0, 0.1),
            child: TweenAnimationBuilder(
              tween: Tween<double>(begin: being, end: end),
              duration: const Duration(milliseconds: 2000),
              builder: (context, double val, child) {
                return Transform.scale(
                  scale: val,
                  child: SizedBox(
                    height: val + 30,
                    child: Image.asset("assets/images/car.png"),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
