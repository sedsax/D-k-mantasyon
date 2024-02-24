import 'package:flutter/material.dart';

class DemoApp extends StatelessWidget {
  DemoApp({super.key});

  PageController pageController =
      PageController(initialPage: 0);

  int currentPosition = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: pageController,
              //  physics:ClampingScrollPhysics(),
                // pageSnapping: false,
                //  reverse: true,
                 scrollDirection: Axis.vertical,
                
                onPageChanged: (value) {
                  currentPosition = value;
                },
                children: [
                  Container(
                    color: const Color.fromARGB(255, 66, 117, 183),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30),
                          child: Image.asset(
                            'asset/dash.png',
                            width: 300,
                          ),
                        ),
                        const Center(
                          child: Text(
                            "Welcome!",
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Center(
                            child: Container(
                                child: Text(
                          (currentPosition + 1).toString(),
                        )))
                      ],
                    ),
                  ),
                  Container(
                    color: const Color.fromARGB(255, 26, 132, 100),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30),
                          child: Image.asset(
                            'asset/bir.png',
                            width: 300,
                          ),
                        ),
                        const Center(
                          child: Text(
                            "First Page",
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Center(
                            child: Container(
                                child: Text(
                          (currentPosition + 1).toString(),
                        )))
                      ],
                    ),
                  ),
                  Container(
                    color: const Color.fromARGB(255, 196, 73, 73),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30),
                          child: Image.asset(
                            'asset/iki.png',
                            width: 300,
                          ),
                        ),
                        const Center(
                          child: Text(
                            "Last Page",
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Center(
                            child: Container(
                                padding: const EdgeInsets.all(20),
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child: Text(
                                  (currentPosition + 1).toString(),
                                )))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  currentPosition == 0
                      ? Container()
                      : TextButton(
                          onPressed: () {
                            pageController.previousPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.linear);
                          },
                          child: const Text("Back"),
                        ),
                  currentPosition == 2
                      ? TextButton(
                          onPressed: () {},
                          child: const Text("Done"),
                        )
                      : TextButton(
                          onPressed: () {
                            pageController.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.ease);
                          },
                          child: const Text("Next"),
                        ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
