import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:lottie_animations/animation%20screens/hello.dart';

class Giraffe extends StatefulWidget {
  const Giraffe({super.key});

  @override
  State<Giraffe> createState() => _GiraffeState();
}

class _GiraffeState extends State<Giraffe> {
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
                child: Lottie.asset("assets/animations/giraffe.json"),
              ),
            ),
            const SizedBox(
              height: 120,
            ),
            SizedBox(
                height: 50,
                width: 120,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Hello()));
                  },
                  child: const Text("next"),
                ))
          ],
        ),
      ),
    );
  }
}
