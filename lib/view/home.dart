import 'dart:async';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:homework/view/second.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SecondPage(),
        ),
      );
    });

// ignore: avoid_print
    print('This line is printed first');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.amber,
          child: Stack(
            children: [
              Center(
                child: Image.asset('assets/images/logo.jpg'),
                // Container(
                //     height: 300,
                //     width: 300,
                //     padding: const EdgeInsets.all(30),
                //     margin: const EdgeInsets.all(20),
                //     decoration: BoxDecoration(
                //       color: Colors.amber,
                //       border: Border.all(
                //         color: Colors.black,
                //         width: 3,
                //         style: BorderStyle.solid,
                //       ),
                //       // borderRadius: BorderRadius.circular(20),
                //       shape: BoxShape.circle,
                //     ),
                //     alignment: Alignment.center,
                //     child: const Text(
                //       "hello world",
                //       style: TextStyle(
                //           fontSize: 11,
                //           color: Colors.black,
                //           fontWeight: FontWeight.bold),
                //     )),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 190.0),
                child: Align(   
                  alignment: Alignment.center,
                  child: SizedBox(  
                      height: 35,
                      width: 35,
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.only(bottom: 28.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: 50,
                    child: Column(
                      children: [
                        const Text(
                          "Powered by",
                          textAlign: TextAlign.center,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/fb+icon-1320183899414660008.png',
                              width: 20,
                            ),
                            const SizedBox(
                              width: 20,
                            ),

                            DefaultTextStyle(
                              style: const TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'Agne',
                              ),
                              child: AnimatedTextKit(
                                animatedTexts: [
                                  TypewriterAnimatedText(
                                      'Leopard Technology.'),
                                ],
                                // onTap: () {
                                //   print("Tap Event");
                                //   Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //       builder: (context) => const SecondPage(),
                                //     ),
                                //   );
                                // },
                              ),
                            ),

                            // Text("data"),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
