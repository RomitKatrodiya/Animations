import 'package:flutter/material.dart';

class ImplicitAnimationBuiltIn extends StatefulWidget {
  const ImplicitAnimationBuiltIn({Key? key}) : super(key: key);

  @override
  State<ImplicitAnimationBuiltIn> createState() =>
      _ImplicitAnimationBuiltInState();
}

class _ImplicitAnimationBuiltInState extends State<ImplicitAnimationBuiltIn> {
  double height = 200;
  double width = 200;
  double opacity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Implicit Animation Built In"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 400),
                height: height,
                width: width,
                color: Colors.blueAccent,
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    (height == 150) ? height = 200 : height = 150;
                    (width == 150) ? width = 200 : width = 150;
                  });
                },
                child: const Text("Animate Container"),
              ),
              const SizedBox(height: 30),
              AnimatedOpacity(
                opacity: opacity,
                duration: const Duration(seconds: 1),
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.blueAccent,
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    (opacity == 1) ? opacity = 0 : opacity = 1;
                  });
                },
                child: const Text("Animate Opacity"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
