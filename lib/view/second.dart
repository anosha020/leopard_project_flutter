// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:homework/controller/api_contoller.dart';
import 'package:homework/service/get_api.dart';
import 'package:homework/view/forth.dart';
import 'package:pinput/pinput.dart';
import 'package:homework/view/third.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  var data;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   // postApi();
  //   super.initState();
  // }
  // postApi() async{
  //   data= await ControllerClass().postApiFunc();
  //   print(data.lenth);
  //   setState(() {

  //   });
  // }
  String fakeuser = "11111";
  String validuser = "00000";
  TextEditingController employee_no = TextEditingController();
  TextEditingController pin_no = TextEditingController();

  bool isFirstLod = true;

  // final defaultPinTheme = PinTheme(
  //   width: 56,
  //   height: 56,
  //   textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
  //   decoration: BoxDecoration(
  //     border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
  //     borderRadius: BorderRadius.circular(20),
  //   ),
  // );
  // final focusedPinTheme = defaultPinTheme.copyDecorationWith(
  //   border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
  //   borderRadius: BorderRadius.circular(8),
  // );
  // final submittedPinTheme = defaultPinTheme.copyWith(
  //   decoration: defaultPinTheme.decoration.copyWith(
  //     color: Color.fromRGBO(234, 239, 243, 1),
  //   ),
  // );

  String text = "Sir";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
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
          ),
          Container(
            // top: 0,
            margin: const EdgeInsets.only(top: 30),
            height: 80,
            width: 300,
            // color: Colors.blue,
            child: TextField(
              controller: employee_no,
              decoration: const InputDecoration(
                hintText: 'Employee ID',
                helperText: 'Or Username',
                icon: Icon(Icons.person),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Pinput(
            controller: pin_no,
            // defaultPinTheme: defaultPinTheme,
            // focusedPinTheme: focusedPinTheme,
            // submittedPinTheme: submittedPinTheme,
            validator: (s) {
              return s == '2222' ? null : 'Pin is incorrect';
            },
            pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
            showCursor: true,
            onCompleted: (pin) => print(pin),
          ),
          // Container(

          //   height: 30,
          //   width: 100,

          //   margin: const EdgeInsets.only(top: 20),
          //   alignment: Alignment.center,
          //   decoration: const BoxDecoration(

          //     color: Colors.amber,
          //     borderRadius: BorderRadius.all(Radius.circular(10))),

          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                // margin: const EdgeInsets.only(top: 10),
                primary: const Color(0xFFFFC107)),
            onPressed: () async {
//  await ApiService().postAPI();

              isFirstLod = false;

              if (employee_no.text != '' &&
                  pin_no.text != '' &&
                  pin_no.text.length == 4) {
                ControllerClass().postApiFunc(context , employee_no.text, pin_no.text);
              }
              if (employee_no.text == fakeuser && pin_no.text != "") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Third(),
                  ),
                );
              } else if (employee_no.text == validuser && pin_no.text != "") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Fourth(),
                  ),
                );
              }
              // else {
              //   setState(() {});
              // }
              else {
                setState(() {});
              }
            },
            child: const Text(
              "Submit",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          isFirstLod
              ? const Text("")
              : employee_no.text == ""
                  ? const Text("Please Enter Employee number")
                  : const Text(""),
          isFirstLod
              ? const Text("")
              : pin_no.text == ""
                  ? const Text("Please Enter Pin number")
                  : const Text(""),
        ],
      ),
    );
  }
}
