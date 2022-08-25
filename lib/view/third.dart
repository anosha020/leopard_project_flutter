import 'package:flutter/material.dart';
import 'package:homework/view/widgets/banner_widget.dart';
class Third extends StatefulWidget {
  const Third({Key? key}) : super(key: key);

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          children: [
            
           const BannerLogo(),
            Text("FAKE USER"),
          ],
        ),
      ),
    );
    
  }
}