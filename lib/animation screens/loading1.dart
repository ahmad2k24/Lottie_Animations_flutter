import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:lottie_animations/animation%20screens/cycling.dart';

class LoadingOne extends StatefulWidget {
  const LoadingOne({super.key});

  @override
  State<LoadingOne> createState() => _LoadingOneState();
}

class _LoadingOneState extends State<LoadingOne> {
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
                child: Lottie.asset("assets/animations/loading1.json"),
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
                            builder: (context) => const Cycling()));
                  },
                  child: const Text("next"),
                ))
          ],
        ),
      ),
    );
  }
}
