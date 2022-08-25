import 'package:flutter/material.dart';

class AppConstants {
  Future<void> showMyDialog(context, title, content , buttonText , buttonFunc) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title:  Text(title),
          content: SingleChildScrollView(
            child: ListBody(
              children:  <Widget>[
                Text(content),
              ],
            ),
          ),
          actions: <Widget>[
            // TextButton(
            //   child: const Text('Cancel'),
            //   onPressed: () {
            //     Navigator.of(context).pop();
            //   },
            // ),
            TextButton(
              onPressed: buttonFunc,
              child:  Text(buttonText),
            ),
          ],
        );
      },
    );
  }  
}