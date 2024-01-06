import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:lottie_animations/animation%20screens/loading0.dart';

class Hello extends StatefulWidget {
  const Hello({super.key});

  @override
  State<Hello> createState() => _HelloState();
}

class _HelloState extends State<Hello> {
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
              height: 500,
              width: 500,
              child: Center(
                child: Lottie.asset("assets/animations/hello.json"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                height: 50,
                width: 120,
                child: OutlinedButton(
                  onPressed: () {  Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoadingZero()));
                  },
                  child: const Text("next"),
                )),
          ],
        ),
      ),
    );
  }
}
