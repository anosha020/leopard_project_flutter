import 'package:flutter/material.dart';
import 'package:homework/view/widgets/banner_widget.dart';
class Fourth extends StatefulWidget {
  const Fourth({Key? key}) : super(key: key);

  @override
  State<Fourth> createState() => _FourthState();
}

class _FourthState extends State<Fourth> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          children: [
           const BannerLogo(),
            Text("Valid USER"),
          ],
        ),
      ),
    ); 
  }
}