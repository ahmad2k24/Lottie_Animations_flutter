import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:lottie_animations/animation%20screens/bear.dart';

class Cycling extends StatefulWidget {
  const Cycling({super.key});

  @override
  State<Cycling> createState() => _CyclingState();
}

class _CyclingState extends State<Cycling> {
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
                child: Column(
                  children: [
                    Lottie.asset("assets/animations/cycling.json"),
                  ],
                ),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Bear()));
                  },
                  child: const Text("next"),
                ))
          ],
        ),
      ),
    );
  }
}
