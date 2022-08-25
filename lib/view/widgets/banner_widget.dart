import 'package:flutter/material.dart';

class BannerLogo extends StatelessWidget {
  const BannerLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 500,
      decoration: const BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.only(
          // bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Image.asset(
        'assets/images/logo.jpg',
        width: 20,
      ),
    );
  }
}