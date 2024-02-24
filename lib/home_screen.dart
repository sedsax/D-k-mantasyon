import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 35, 28, 66),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("asset/first_screen.png"),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/program-detail');
                },
                child: const Text(
                  "Program Details",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ));
  }
}