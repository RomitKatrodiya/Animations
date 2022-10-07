import 'package:flutter/material.dart';

class Task1 extends StatefulWidget {
  const Task1({Key? key}) : super(key: key);

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    automaticContainer();
  }

  double size = 200;
  double border = 7;
  double radius = 0;
  Color color = Colors.green;
  Color color2 = Colors.black;

  automaticContainer() async {
    Future.delayed(
      const Duration(milliseconds: 600),
      () => setState(() {
        if (size == 200) {
          size = 150;
          border = 30;
          radius = 100;
          color = Colors.amber;
          color2 = Colors.red;
        } else {
          size = 200;
          border = 7;
          radius = 0;
          color = Colors.orange;
          color2 = Colors.black;
        }
        automaticContainer();
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task 1"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 600),
          height: size,
          width: size,
          decoration: BoxDecoration(
            color: color,
            border: Border.all(
              color: color2,
              width: border,
            ),
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
      ),
    );
  }
}
