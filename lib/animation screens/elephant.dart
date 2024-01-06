import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:lottie_animations/animation%20screens/walk.dart';

class Elephant extends StatefulWidget {
  const Elephant({super.key});

  @override
  State<Elephant> createState() => _ElephantState();
}

class _ElephantState extends State<Elephant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 400,
              width: 400,
              child: Center(
                child: Lottie.asset("assets/animations/elephant.json"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                height: 50,
                width: 120,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Walk()));
                  },
                  child: const Text("next"),
                ))
          ],
        ),
      ),
    );
  }
}
