import 'package:flutter/material.dart';

import 'Login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff719E82),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: SizedBox(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 500,
                    height: 500,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0x33ffffff),
                    ),
                  ),
                  Container(
                    width: 360.68,
                    height: 360.68,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0x4cffffff),
                    ),
                  ),
                  Container(
                    width: 281.37,
                    height: 281.37,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0x7fffffff),
                    ),
                  ),
                  Image.asset("assets/images/pic1.png"),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const Text(
                      "Your Child's Safety is Our Priority",
                      style: TextStyle(
                          fontSize: 32, color: Colors.white, height: 1.3),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 40),
                      child: Text(
                        'Protect your child with our advanced app suite - blocking harmful content and potential predators.',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FilledButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ));
                      },
                      style: FilledButton.styleFrom(
                          minimumSize: const Size(140, 47),
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.all(8)),
                      child: const Text(
                        'Start',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    )
                  ],
                ),
            ))
        ],
      ),
    );
  }
}
